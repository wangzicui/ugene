/**
 * UGENE - Integrated Bioinformatics Tools.
 * Copyright (C) 2008-2018 UniPro <ugene@unipro.ru>
 * http://ugene.net
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

#include "MetaphlanSupport.h"

#include <U2Core/U2SafePoints.h>

namespace U2 {

const QString MetaphlanSupport::TOOL_NAME = "MetaPhlAn2";

MetaphlanSupport::MetaphlanSupport(const QString& name, const QString& path) : ExternalTool(name, path) {
    validationArguments << "--version";
    //validMessage = "MetaPhlAn version ";
    versionRegExp = QRegExp("((\\-[a-zA-Z]*){,2})MetaPhlAn version (\\d+\\.\\d+\\.\\d+)");//Hmmm
    executableFileName = "";//hmmm
    description = tr("<i>MetaPhlAn2 (METAgenomic PHyLogenetic ANalysis)</i> is a tool for profiling the composition of microbial communities (bacteria, archaea, eukaryotes, and viruses) from whole-metagenome shotgun sequencing data.");
}












}//namespace
