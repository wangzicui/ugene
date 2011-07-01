/**
 * UGENE - Integrated Bioinformatics Tools.
 * Copyright (C) 2008-2011 UniPro <ugene@unipro.ru>
 * http://ugene.unipro.ru
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 */

#include "CAP3SupportTask.h"
#include "CAP3Support.h"

#include <U2Core/AppContext.h>
#include <U2Core/Counter.h>
#include <U2Core/DocumentModel.h>
#include <U2Core/ExternalToolRegistry.h>
#include <U2Core/ProjectModel.h>
#include <U2Core/MAlignmentObject.h>
#include <U2Core/CopyDataTask.h>
#include <U2Core/DocumentUtils.h>
#include <U2Core/AddDocumentTask.h>
#include <U2Gui/OpenViewTask.h>

namespace U2 {


//////////////////////////////////////////////////////////////////////////
////CAP3SupportTask

CAP3SupportTask::CAP3SupportTask(const CAP3SupportTaskSettings& _settings) :
        Task("CAP3SupportTask", TaskFlags_NR_FOSCOE),
        settings(_settings)
{
    GCOUNTER( cvar, tvar, "CAP3SupportTask" );
    setMaxParallelSubtasks(1);
    newDoc = NULL;
    logParser = NULL;
    loadTmpDocumentTask = NULL;
    copyResultTask = NULL;
    cap3Task = NULL;
    prepareDataForCAP3Task = NULL;
    maObject = NULL;
}


void CAP3SupportTask::prepare(){
    
    
    //Add new subdir for temporary files
    
    QString errMsg;
    tmpDirUrl = ExternalToolSupportUtils::createTmpDir("CAP3", getTaskId(), errMsg);
    if (tmpDirUrl.isEmpty()) {
        setError(errMsg);
        return;
    }

    prepareDataForCAP3Task = new PrepareInputForCAP3Task(settings.inputFiles, tmpDirUrl);
    addSubTask(prepareDataForCAP3Task);

}



QList<Task*> CAP3SupportTask::onSubTaskFinished(Task* subTask) {
    QList<Task*> res;
    
    propagateSubtaskError();
    
    if(hasError() || isCanceled()) {
        return res;
    }
    
    if (subTask == prepareDataForCAP3Task) {
        GUrl inputUrl = prepareDataForCAP3Task->getPreparedPath();
        tmpOutputUrl = inputUrl.dirPath() + "/" + inputUrl.baseFileName() + ".cap.ace"; 
        
        QStringList arguments;
        arguments << inputUrl.getURLString();
        logParser = new CAP3LogParser();
        cap3Task = new ExternalToolRunTask(CAP3_TOOL_NAME, arguments, logParser);
        cap3Task->setSubtaskProgressWeight(95);
        res.append(cap3Task);   
    } else if (subTask == cap3Task){
        if(!QFile::exists(tmpOutputUrl)){
            if(AppContext::getExternalToolRegistry()->getByName(CAP3_TOOL_NAME)->isValid()){
                stateInfo.setError(tr("Output file not found"));
            }else{
                stateInfo.setError(tr("Output file not found. May be %1 tool path '%2' not valid?")
                                   .arg(AppContext::getExternalToolRegistry()->getByName(CAP3_TOOL_NAME)->getName())
                                   .arg(AppContext::getExternalToolRegistry()->getByName(CAP3_TOOL_NAME)->getPath()));
            }
            return res;
        }
        
        IOAdapterFactory* iof = AppContext::getIOAdapterRegistry()->getIOAdapterFactoryById(BaseIOAdapters::LOCAL_FILE);
        copyResultTask = new CopyDataTask(iof, tmpOutputUrl, iof, settings.outputFilePath );
        res.append(copyResultTask);
        
    } else if (subTask == copyResultTask) {
        
        if( !QFile::exists(settings.outputFilePath)) {
            stateInfo.setError(tr("Output file not found: copy from tmp dir failed."));
            return res;
        }

        loadTmpDocumentTask=
                new LoadDocumentTask(BaseDocumentFormats::ACE,
                                     settings.outputFilePath,
                                     AppContext::getIOAdapterRegistry()->getIOAdapterFactoryById(BaseIOAdapters::LOCAL_FILE));
        loadTmpDocumentTask->setSubtaskProgressWeight(5);
        res.append(loadTmpDocumentTask);

    } else  if( subTask == loadTmpDocumentTask  ) {
        Document* doc = loadTmpDocumentTask->takeDocument();
        assert(doc != NULL);
        // clone doc because it was created in another thread
        const GUrl& fullPath = doc->getURL();
        DocumentFormat* format = doc->getDocumentFormat();
        IOAdapterFactory * iof = doc->getIOAdapterFactory();
        Document* clonedDoc = new Document(format, iof, fullPath);
        clonedDoc->loadFrom(doc);
        assert(!clonedDoc->isTreeItemModified());
        assert(clonedDoc->isLoaded());
        res.append(new AddDocumentTask(clonedDoc));
        res.append(new OpenViewTask(clonedDoc));     
        
    }

    return res;

}


Task::ReportResult CAP3SupportTask::report(){

    QString errMsg;
    if (!ExternalToolSupportUtils::removeTmpDir(tmpDirUrl,errMsg)) {
        stateInfo.setError(errMsg);
    }

    return ReportResult_Finished;
}

//////////////////////////////////////////
////CAP3LogParser

CAP3LogParser::CAP3LogParser()
{

}

int CAP3LogParser::getProgress()
{
    return 0;
}


//////////////////////////////////////////
////PrepareInput

PrepareInputForCAP3Task::PrepareInputForCAP3Task( const QStringList& inputFiles, const QString& outputDirPath)
:Task("PrepareInputForCAP3Task", TaskFlags_NR_FOSCOE), inputUrls(inputFiles), outputDir(outputDirPath), onlyCopyFiles(false)
{


}

void PrepareInputForCAP3Task::prepare() {
    
    if (inputUrls.size() == 1) {
        const QString& inputFileUrl = inputUrls.first();
        
        QList<FormatDetectionResult> results = DocumentUtils::detectFormat(inputFileUrl);
        
        if (!results.isEmpty()) {
            DocumentFormat* format = results.first().format;
            if (format->getFormatId() == BaseDocumentFormats::PLAIN_FASTA) {
                onlyCopyFiles = true;
            }
        }
    } 
    
    
    if (onlyCopyFiles) {    
        // short path: copy single FASTA file along with quality and constraints to target dir
        QString inputFileUrl = inputUrls.first();
        filesToCopy.append(inputFileUrl);
        QString inputFileUrlBase = GUrl(inputFileUrl).baseFileName();
        QString inputFileDir = GUrl(inputFileUrl).dirPath();
        QString qualFileUrl = inputFileDir + "/" + inputFileUrlBase + ".qual";
        if (QFile::exists(qualFileUrl)) {
            filesToCopy.append(qualFileUrl);        
        }
        QString constraintsFileUrl = inputFileDir+ "/" + inputFileUrlBase + ".con";
        if (QFile::exists(constraintsFileUrl)) {
            filesToCopy.append(qualFileUrl);
        }
        foreach (const QString& fileName, filesToCopy) {
            IOAdapterFactory* iof = 
                AppContext::getIOAdapterRegistry()->getIOAdapterFactoryById(BaseIOAdapters::LOCAL_FILE);
            CopyDataTask* copyTask = new CopyDataTask(iof, fileName, iof, outputDir + "/" + GUrl(fileName).fileName());
            addSubTask(copyTask);
        }
        preparedPath = outputDir + "/" + GUrl(inputFileUrl).fileName();

    } else {
        // long path: load each file, save sequences and qualities to output dir
        assert(0);
    } 

}

QList<Task*> PrepareInputForCAP3Task::onSubTaskFinished(Task* ) {
    QList<Task*> res;
    
    return res;

}







}//namespace
