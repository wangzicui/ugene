/**
 * UGENE - Integrated Bioinformatics Tools.
 * Copyright (C) 2008-2012 UniPro <ugene@unipro.ru>
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

#include "GTUtilsMsaEditorSequenceArea.h"
#include "api/GTWidget.h"
#include "api/GTMSAEditorStatusWidget.h"

#include <U2View/MSAEditorSequenceArea.h>

namespace U2 {
#define GT_CLASS_NAME "GTUtilsMSAEditorSequenceArea"

#define GT_METHOD_NAME "checkSelectedRect"
void GTUtilsMSAEditorSequenceArea::checkSelectedRect(U2OpStatus &os, const QRect &expectedRect)
{
    MSAEditorSequenceArea *msaEditArea = qobject_cast<MSAEditorSequenceArea*>(GTWidget::findWidget(os, "msa_editor_sequence_area"));
    CHECK_SET_ERR(msaEditArea != NULL, "MsaEditorSequenceArea not found");

    CHECK_SET_ERR(expectedRect == msaEditArea->getSelection().getRect(), "Unexpected selection region");
}
#undef GT_METHOD_NAME

#define GT_METHOD_NAME "checkSorted"
void GTUtilsMSAEditorSequenceArea::checkSorted(U2OpStatus &os, bool sortedState) {

    QStringList names = getNameList(os);

    QStringList sortedNames = names;
    qSort(sortedNames);

    bool sorted = (sortedNames == names);
    GT_CHECK(sorted == sortedState, "Sorted state differs from needed sorted state");
}
#undef GT_METHOD_NAME

#define GT_METHOD_NAME "getNameList"
QStringList GTUtilsMSAEditorSequenceArea::getNameList(U2OpStatus &os) {

    QWidget *msaEditorNameList = GTWidget::findWidget(os, "msa_editor_name_list");
    CHECK_SET_ERR_RESULT(msaEditorNameList != NULL, "MsaEditorSequenceArea not found", QStringList());

    QObject *labelsParent = msaEditorNameList->findChild<QObject*>("labels_parent");
    CHECK_SET_ERR_RESULT(labelsParent != NULL, "labelsParent is NULL", QStringList());
    CHECK_SET_ERR_RESULT(labelsParent->children().size() == 1, "labelsParent is NULL", QStringList());

    QObject *namesObject = labelsParent->findChild<QObject*>();
    CHECK_SET_ERR_RESULT(namesObject != NULL, "names QObject is NULL", QStringList());

    QString allNames = namesObject->objectName();
    return allNames.split('|', QString::SkipEmptyParts);;
}
#undef GT_METHOD_NAME

#define GT_METHOD_NAME "getLeftOffset"
int GTUtilsMSAEditorSequenceArea::getLeftOffset(U2OpStatus &os)
{
    MSAEditorSequenceArea *msaEditArea = qobject_cast<MSAEditorSequenceArea*>(GTWidget::findWidget(os, "msa_editor_sequence_area"));
    CHECK_SET_ERR_RESULT(msaEditArea != NULL, "MsaEditorSequenceArea not found", -1);

    return msaEditArea->getFirstVisibleBase() + 1; // тут не уверен, есть еще класс MSAEditorOffsetsViewWidget (файл MSAEditorOffsetsViewWidget.h)
                                                   // мне кажется более правильно будет от туда офсет вытащить.
}
#undef GT_METHOD_NAME

#define GT_METHOD_NAME "getLeftOffset"
int GTUtilsMSAEditorSequenceArea::getRightOffset(U2OpStatus &os)
{
    MSAEditorSequenceArea *msaEditArea = qobject_cast<MSAEditorSequenceArea*>(GTWidget::findWidget(os, "msa_editor_sequence_area"));
    CHECK_SET_ERR_RESULT(msaEditArea != NULL, "MsaEditorSequenceArea not found", -1);

    return msaEditArea->getLastVisibleBase(true, true) + 1; // тут такая же фигня как getLeftOffset()
}
#undef GT_METHOD_NAME

#define GT_METHOD_NAME "getLength"
int GTUtilsMSAEditorSequenceArea::getLength(U2OpStatus &os) {

    QWidget *statusWidget = GTWidget::findWidget(os, "msa_editor_status_widget");
    return GTMSAEditorStatusWidget::length(os, statusWidget);
}
#undef GT_METHOD_NAME

#define GT_METHOD_NAME "offsetsVisible"
bool GTUtilsMSAEditorSequenceArea::offsetsVisible(U2OpStatus &os) {

    QWidget *leftOffsetWidget = GTWidget::findWidget(os, "msa_editor_offsets_view_widget_left");
    QWidget *rightOffsetWidget = GTWidget::findWidget(os, "msa_editor_offsets_view_widget_right");

    GT_CHECK_RESULT((leftOffsetWidget != NULL) && (rightOffsetWidget != NULL), "offset widgets are NULL", false);
    GT_CHECK_RESULT(leftOffsetWidget->isVisible() == rightOffsetWidget->isVisible(), "offset widget visibility states are not the same", false);

    return leftOffsetWidget->isVisible();
}
#undef GT_METHOD_NAME

#undef GT_CLASS_NAME
} // namespace
