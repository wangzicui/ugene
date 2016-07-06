/**
 * UGENE - Integrated Bioinformatics Tools.
 * Copyright (C) 2008-2016 UniPro <ugene@unipro.ru>
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

#ifndef _U2_MULTIPLE_SEQUENCE_ALIGNMENT_IMPORTER_H_
#define _U2_MULTIPLE_SEQUENCE_ALIGNMENT_IMPORTER_H_

#include <U2Core/MultipleSequenceAlignment.h>
#include <U2Core/U2Ma.h>
#include <U2Core/U2Sequence.h>

namespace U2 {

class DbiConnection;
class MultipleSequenceAlignmentObject;
class U2DbiRef;
class U2OpStatus;

/** Importing a multiple alignment into db */
class U2CORE_EXPORT MultipleSequenceAlignmentImporter {
public:
    /**
     * Creates an alignment in the db.
     * The alignment is completely removed in case of an error.
     */
    static MultipleSequenceAlignmentObject * createAlignment(const U2DbiRef &dbiRef, MultipleSequenceAlignment &al, U2OpStatus &os);
    static MultipleSequenceAlignmentObject * createAlignment(const U2DbiRef &dbiRef, const QString &folder, MultipleSequenceAlignment &al,
        U2OpStatus &os, const QList<U2Sequence> &alignedSequences = QList<U2Sequence>());

private:
    static U2Ma importMsaObject(const DbiConnection &con, const QString &folder, const MultipleSequenceAlignment &al, U2OpStatus &os);
    static void importMsaInfo(const DbiConnection &con, const U2DataId &msaId, const MultipleSequenceAlignment &al, U2OpStatus &os);
    static QList<U2Sequence> importSequences(const DbiConnection &con, const QString &folder, const MultipleSequenceAlignment &al, U2OpStatus &os);
    static void splitToCharsAndGaps(const DbiConnection &con, QList<U2Sequence> &sequences, U2MaListGapModel &gapModel, U2OpStatus &os);
    static void setChildRankForSequences(const DbiConnection &con, const QList<U2Sequence> &sequences, U2OpStatus &os);
    static QList<U2MaRow> importRows(const DbiConnection &con, MultipleSequenceAlignment &al, U2Ma &msa, const QList<U2Sequence> &rows, const U2MaListGapModel &msaGapModel, U2OpStatus &os);
};

} // namespace

#endif // _U2_MULTIPLE_SEQUENCE_ALIGNMENT_IMPORTER_H_
