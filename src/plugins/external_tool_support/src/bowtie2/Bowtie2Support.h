/**
 * UGENE - Integrated Bioinformatics Tools.
 * Copyright (C) 2008-2020 UniPro <ugene@unipro.ru>
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

#ifndef _U2_BOWTIE2_SUPPORT_H_
#define _U2_BOWTIE2_SUPPORT_H_

#include <U2Core/ExternalToolRegistry.h>

namespace U2 {

class Bowtie2Support : public ExternalTool {
    Q_OBJECT
public:
    Bowtie2Support(const QString& id, const QString& name, const QString& path = "");

    static const QString ET_BOWTIE2_ALIGN;
    static const QString ET_BOWTIE2_ALIGN_ID;
    static const QString ET_BOWTIE2_BUILD;
    static const QString ET_BOWTIE2_BUILD_ID;
    static const QString ET_BOWTIE2_INSPECT;
    static const QString ET_BOWTIE2_INSPECT_ID;

    static const QString BOWTIE2_TMP_DIR;
};

} // namespace U2

#endif
