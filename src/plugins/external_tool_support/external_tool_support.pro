include (external_tool_support.pri)

# Input
HEADERS += src/ETSProjectViewItemsContoller.h \
           src/ExternalToolRunTask.h \
           src/ExternalToolSupportPlugin.h \
           src/ExternalToolSupportSettings.h \
           src/ExternalToolSupportSettingsController.h \
           src/TaskLocalStorage.h \
           src/blast/BlastAllSupport.h \
           src/blast/BlastAllSupportRunDialog.h \
           src/blast/BlastAllSupportTask.h \
           src/blast/BlastAllWorker.h \
           src/blast/FormatDBSupport.h \
           src/blast/FormatDBSupportRunDialog.h \
           src/blast/FormatDBSupportTask.h \
           src/blast_plus/BlastNPlusSupportTask.h \
           src/blast_plus/BlastPlusSupport.h \
           src/blast_plus/BlastPlusSupportCommonTask.h \
           src/blast_plus/BlastPlusSupportRunDialog.h \
           src/blast_plus/BlastPlusWorker.h \
           src/blast_plus/BlastPPlusSupportTask.h \
           src/blast_plus/BlastXPlusSupportTask.h \
           src/blast_plus/RPSBlastSupportTask.h \
           src/blast_plus/TBlastNPlusSupportTask.h \
           src/blast_plus/TBlastXPlusSupportTask.h \
           src/cap3/CAP3Support.h \
           src/cap3/CAP3SupportDialog.h \
           src/cap3/CAP3SupportTask.h \
           src/cap3/CAP3Worker.h \
           src/clustalw/ClustalWSupport.h \
           src/clustalw/ClustalWSupportRunDialog.h \
           src/clustalw/ClustalWSupportTask.h \
           src/clustalw/ClustalWWorker.h \
           src/mafft/MAFFTSupport.h \
           src/mafft/MAFFTSupportRunDialog.h \
           src/mafft/MAFFTSupportTask.h \
           src/mafft/MAFFTWorker.h \
           src/tcoffee/TCoffeeSupport.h \
           src/tcoffee/TCoffeeSupportRunDialog.h \
           src/tcoffee/TCoffeeSupportTask.h \
           src/tcoffee/TCoffeeWorker.h \
           src/utils/BlastRunCommonDialog.h \
           src/utils/BlastTaskSettings.h \
           src/utils/ExportTasks.h \
           src/utils/ExternalToolSupportAction.h \
           src/utils/ExternalToolValidateTask.h \
           src/bowtie/BowtieTask.h \
           src/bowtie/BowtieSupport.h \
           src/bowtie/BowtieSettingsWidget.h \
    src/bowtie/bowtie_tests/bowtieTests.h
FORMS += src/ui/BlastAllSupportDialog.ui \
         src/ui/CAP3SupportDialog.ui \
         src/ui/ClustalWSupportRunDialog.ui \
         src/ui/ETSSettingsWidget.ui \
         src/ui/FormatDBSupportRunDialog.ui \
         src/ui/MAFFTSupportRunDialog.ui \
         src/ui/SelectPathDialog.ui \
         src/ui/TCoffeeSupportRunDialog.ui \
         src/ui/BowtieSettings.ui \
    src/ui/BowtieBuildSettings.ui
SOURCES += src/ETSProjectViewItemsContoller.cpp \
           src/ExternalToolRunTask.cpp \
           src/ExternalToolSupportPlugin.cpp \
           src/ExternalToolSupportSettings.cpp \
           src/ExternalToolSupportSettingsController.cpp \
           src/TaskLocalStorage.cpp \
           src/blast/BlastAllSupport.cpp \
           src/blast/BlastAllSupportRunDialog.cpp \
           src/blast/BlastAllSupportTask.cpp \
           src/blast/BlastAllWorker.cpp \
           src/blast/FormatDBSupport.cpp \
           src/blast/FormatDBSupportRunDialog.cpp \
           src/blast/FormatDBSupportTask.cpp \
           src/blast_plus/BlastNPlusSupportTask.cpp \
           src/blast_plus/BlastPlusSupport.cpp \
           src/blast_plus/BlastPlusSupportCommonTask.cpp \
           src/blast_plus/BlastPlusSupportRunDialog.cpp \
           src/blast_plus/BlastPlusWorker.cpp \
           src/blast_plus/BlastPPlusSupportTask.cpp \
           src/blast_plus/BlastXPlusSupportTask.cpp \
           src/blast_plus/RPSBlastSupportTask.cpp \
           src/blast_plus/TBlastNPlusSupportTask.cpp \
           src/blast_plus/TBlastXPlusSupportTask.cpp \
           src/cap3/CAP3Support.cpp \
           src/cap3/CAP3SupportDialog.cpp \
           src/cap3/CAP3SupportTask.cpp \
           src/cap3/CAP3Worker.cpp \
           src/clustalw/ClustalWSupport.cpp \
           src/clustalw/ClustalWSupportRunDialog.cpp \
           src/clustalw/ClustalWSupportTask.cpp \
           src/clustalw/ClustalWWorker.cpp \
           src/mafft/MAFFTSupport.cpp \
           src/mafft/MAFFTSupportRunDialog.cpp \
           src/mafft/MAFFTSupportTask.cpp \
           src/mafft/MAFFTWorker.cpp \
           src/tcoffee/TCoffeeSupport.cpp \
           src/tcoffee/TCoffeeSupportRunDialog.cpp \
           src/tcoffee/TCoffeeSupportTask.cpp \
           src/tcoffee/TCoffeeWorker.cpp \
           src/utils/BlastRunCommonDialog.cpp \
           src/utils/BlastTaskSettings.cpp \
           src/utils/ExportTasks.cpp \
           src/utils/ExternalToolSupportAction.cpp \
           src/utils/ExternalToolValidateTask.cpp \
           src/bowtie/BowtieTask.cpp \
           src/bowtie/BowtieSupport.cpp \
           src/bowtie/BowtieSettingsWidget.cpp \
    src/bowtie/bowtie_tests/bowtieTests.cpp
RESOURCES += external_tool_support.qrc
TRANSLATIONS += transl/english.ts transl/russian.ts
