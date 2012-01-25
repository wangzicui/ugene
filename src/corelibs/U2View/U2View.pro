include (U2View.pri)

# Input
HEADERS += src/WebWindow.h \
           src/ov_assembly/AssemblyBrowser.h \
           src/ov_assembly/AssemblyBrowserFactory.h \
           src/ov_assembly/AssemblyBrowserSettings.h \
           src/ov_assembly/AssemblyCellRenderer.h \
           src/ov_assembly/AssemblyCoverageGraph.h \
           src/ov_assembly/AssemblyModel.h \
           src/ov_assembly/AssemblyReadsArea.h \
           src/ov_assembly/AssemblyReadsAreaHint.h \
           src/ov_assembly/AssemblyReferenceArea.h \
           src/ov_assembly/AssemblyRuler.h \
           src/ov_assembly/CoverageInfo.h \
           src/ov_assembly/CoveredRegionsManager.h \
           src/ov_assembly/ExportReadsDialog.h \
           src/ov_assembly/ShortReadIterator.h \
           src/ov_assembly/ZoomableAssemblyOverview.h \
           src/ov_msa/AlignmentLogo.h \
           src/ov_msa/ConsensusSelectorDialogController.h \
           src/ov_msa/CreateSubalignimentDialogController.h \
           src/ov_msa/DeleteGapsDialog.h \
           src/ov_msa/MSACollapsibleModel.h \
           src/ov_msa/MSAColorScheme.h \
           src/ov_msa/MSAEditor.h \
           src/ov_msa/MSAEditorBaseOffsetsCache.h \
           src/ov_msa/MSAEditorConsensusArea.h \
           src/ov_msa/MSAEditorConsensusCache.h \
           src/ov_msa/MSAEditorFactory.h \
           src/ov_msa/MSAEditorNameList.h \
           src/ov_msa/MSAEditorOffsetsView.h \
           src/ov_msa/MSAEditorSequenceArea.h \
           src/ov_msa/MSAEditorState.h \
           src/ov_msa/MSAEditorStatusBar.h \
           src/ov_msa/MSAEditorTasks.h \
           src/ov_msa/MSAEditorUndoFramework.h \
           src/ov_phyltree/CreateBranchesTask.h \
           src/ov_phyltree/CreateCircularBranchesTask.h \
           src/ov_phyltree/CreateRectangularBranchesTask.h \
           src/ov_phyltree/CreateUnrootedBranchesTask.h \
           src/ov_phyltree/GraphicsBranchItem.h \
           src/ov_phyltree/GraphicsButtonItem.h \
           src/ov_phyltree/GraphicsCircularBranchItem.h \
           src/ov_phyltree/GraphicsRectangularBranchItem.h \
           src/ov_phyltree/GraphicsUnrootedBranchItem.h \
           src/ov_phyltree/TreeViewer.h \
           src/ov_phyltree/TreeViewerFactory.h \
           src/ov_phyltree/TreeViewerState.h \
           src/ov_phyltree/TreeViewerTasks.h \
           src/ov_phyltree/TreeViewerUtils.h \
           src/ov_sequence/ADVAnnotationCreation.h \
           src/ov_sequence/ADVClipboard.h \
           src/ov_sequence/ADVConstants.h \
           src/ov_sequence/ADVGraphModel.h \
           src/ov_sequence/ADVSequenceObjectContext.h \
           src/ov_sequence/ADVSequenceWidget.h \
           src/ov_sequence/ADVSingleSequenceWidget.h \
           src/ov_sequence/ADVSplitWidget.h \
           src/ov_sequence/ADVSyncViewManager.h \
           src/ov_sequence/ADVUtils.h \
           src/ov_sequence/AnnotatedDNAView.h \
           src/ov_sequence/AnnotatedDNAViewFactory.h \
           src/ov_sequence/AnnotatedDNAViewState.h \
           src/ov_sequence/AnnotatedDNAViewTasks.h \
           src/ov_sequence/AnnotationsTreeModel.h \
           src/ov_sequence/AnnotationsTreeView.h \
           src/ov_sequence/AnnotationsTreeViewL.h \
           src/ov_sequence/AutoAnnotationUtils.h \
           src/ov_sequence/CreateRulerDialogController.h \
           src/ov_sequence/DetView.h \
           src/ov_sequence/EditAnnotationDialogController.h \
           src/ov_sequence/GraphMenu.h \
           src/ov_sequence/GraphSettingsDialog.h \
           src/ov_sequence/GSequenceGraphView.h \
           src/ov_sequence/GSequenceGraphViewWithFactory.h \
           src/ov_sequence/GSequenceLineView.h \
           src/ov_sequence/GSequenceLineViewAnnotated.h \
           src/ov_sequence/Overview.h \
           src/ov_sequence/PanView.h \
           src/ov_sequence/PanViewRows.h \
           src/ov_sequence/SequenceInfo.h \
           src/ov_sequence/WindowStepSelectorWidget.h \
           src/ov_text/SimpleTextObjectView.h \
           src/ov_text/SimpleTextObjectViewTasks.h \
           src/phyltree/BranchSettingsDialog.h \
           src/phyltree/ButtonSettingsDialog.h \
           src/phyltree/CreatePhyTreeDialogController.h \
           src/phyltree/CreatePhyTreeWidget.h \
           src/phyltree/TextSettingsDialog.h \
           src/phyltree/TreeSettingsDialog.h \
           src/util_dna_assembly/BuildIndexDialog.h \
           src/util_dna_assembly/ConvertAssemblyToSamDialog.h \
           src/util_dna_assembly/DnaAssemblyDialog.h \
           src/util_dna_assembly/DnaAssemblyGUIExtension.h \
           src/util_dna_assembly/DnaAssemblyUtils.h \
           src/util_find_dialog/FindDialog.h \
           src/util_msa_align/MSAAlignDialog.h \
           src/util_msa_align/MSAAlignGUIExtension.h \
           src/util_sec_struct_predict/SecStructDialog.h \
           src/util_sec_struct_predict/SecStructPredictUtils.h \
           src/util_smith_waterman/SmithWatermanDialog.h \
           src/util_smith_waterman/SmithWatermanDialogImpl.h \
           src/util_smith_waterman/SubstMatrixDialog.h
FORMS += src/ov_assembly/ui/ExportReadsDialog.ui \
         src/ov_msa/ui/ConsensusSelectorDialog.ui \
         src/ov_msa/ui/CreateSubalignimentDialog.ui \
         src/ov_msa/ui/DeleteGapsDialog.ui \
         src/ov_sequence/ui/CreateRulerDialog.ui \
         src/ov_sequence/ui/EditAnnotationDialog.ui \
         src/phyltree/ui/BranchSettingsDialog.ui \
         src/phyltree/ui/ButtonSettingsDialog.ui \
         src/phyltree/ui/CreatePhyTreeDialog.ui \
         src/phyltree/ui/TextSettingsDialog.ui \
         src/phyltree/ui/TreeSettingsDialog.ui \
         src/util_dna_assembly/ui/AssemblyToRefDialog.ui \
         src/util_dna_assembly/ui/AssemblyToSamDialog.ui \
         src/util_dna_assembly/ui/BuildIndexFromRefDialog.ui \
         src/util_find_dialog/ui/FindDialogUI.ui \
         src/util_msa_align/ui/PerformAlignmentDialog.ui \
         src/util_sec_struct_predict/ui/SecStructDialog.ui \
         src/util_smith_waterman/ui/SmithWatermanDialogBase.ui \
         src/util_smith_waterman/ui/SubstMatrixDialogBase.ui
SOURCES += src/WebWindow.cpp \
           src/ov_assembly/AssemblyBrowser.cpp \
           src/ov_assembly/AssemblyBrowserFactory.cpp \
           src/ov_assembly/AssemblyBrowserSettings.cpp \
           src/ov_assembly/AssemblyCellRenderer.cpp \
           src/ov_assembly/AssemblyCoverageGraph.cpp \
           src/ov_assembly/AssemblyModel.cpp \
           src/ov_assembly/AssemblyReadsArea.cpp \
           src/ov_assembly/AssemblyReadsAreaHint.cpp \
           src/ov_assembly/AssemblyReferenceArea.cpp \
           src/ov_assembly/AssemblyRuler.cpp \
           src/ov_assembly/CoverageInfo.cpp \
           src/ov_assembly/CoveredRegionsManager.cpp \
           src/ov_assembly/ExportReadsDialog.cpp \
           src/ov_assembly/ShortReadIterator.cpp \
           src/ov_assembly/ZoomableAssemblyOverview.cpp \
           src/ov_msa/AlignmentLogo.cpp \
           src/ov_msa/ConsensusSelectorDialogController.cpp \
           src/ov_msa/CreateSubalignimentDialogController.cpp \
           src/ov_msa/DeleteGapsDialog.cpp \
           src/ov_msa/MSACollapsibleModel.cpp \
           src/ov_msa/MSAColorScheme.cpp \
           src/ov_msa/MSAEditor.cpp \
           src/ov_msa/MSAEditorBaseOffsetsCache.cpp \
           src/ov_msa/MSAEditorConsensusArea.cpp \
           src/ov_msa/MSAEditorConsensusCache.cpp \
           src/ov_msa/MSAEditorFactory.cpp \
           src/ov_msa/MSAEditorNameList.cpp \
           src/ov_msa/MSAEditorOffsetsView.cpp \
           src/ov_msa/MSAEditorSequenceArea.cpp \
           src/ov_msa/MSAEditorState.cpp \
           src/ov_msa/MSAEditorStatusBar.cpp \
           src/ov_msa/MSAEditorTasks.cpp \
           src/ov_msa/MSAEditorUndoFramework.cpp \
           src/ov_phyltree/CreateCircularBranchesTask.cpp \
           src/ov_phyltree/CreateRectangularBranchesTask.cpp \
           src/ov_phyltree/CreateUnrootedBranchesTask.cpp \
           src/ov_phyltree/GraphicsBranchItem.cpp \
           src/ov_phyltree/GraphicsButtonItem.cpp \
           src/ov_phyltree/GraphicsCircularBranchItem.cpp \
           src/ov_phyltree/GraphicsRectangularBranchItem.cpp \
           src/ov_phyltree/GraphicsUnrootedBranchItem.cpp \
           src/ov_phyltree/TreeViewer.cpp \
           src/ov_phyltree/TreeViewerFactory.cpp \
           src/ov_phyltree/TreeViewerState.cpp \
           src/ov_phyltree/TreeViewerTasks.cpp \
           src/ov_phyltree/TreeViewerUtils.cpp \
           src/ov_sequence/ADVAnnotationCreation.cpp \
           src/ov_sequence/ADVClipboard.cpp \
           src/ov_sequence/ADVGraphModel.cpp \
           src/ov_sequence/ADVSequenceObjectContext.cpp \
           src/ov_sequence/ADVSequenceWidget.cpp \
           src/ov_sequence/ADVSingleSequenceWidget.cpp \
           src/ov_sequence/ADVSplitWidget.cpp \
           src/ov_sequence/ADVSyncViewManager.cpp \
           src/ov_sequence/ADVUtils.cpp \
           src/ov_sequence/AnnotatedDNAView.cpp \
           src/ov_sequence/AnnotatedDNAViewFactory.cpp \
           src/ov_sequence/AnnotatedDNAViewState.cpp \
           src/ov_sequence/AnnotatedDNAViewTasks.cpp \
           src/ov_sequence/AnnotationsTreeModel.cpp \
           src/ov_sequence/AnnotationsTreeView.cpp \
           src/ov_sequence/AnnotationsTreeViewL.cpp \
           src/ov_sequence/AutoAnnotationUtils.cpp \
           src/ov_sequence/CreateRulerDialogController.cpp \
           src/ov_sequence/DetView.cpp \
           src/ov_sequence/EditAnnotationDialogController.cpp \
           src/ov_sequence/GraphMenu.cpp \
           src/ov_sequence/GraphSettingsDialog.cpp \
           src/ov_sequence/GSequenceGraphView.cpp \
           src/ov_sequence/GSequenceGraphViewWithFactory.cpp \
           src/ov_sequence/GSequenceLineView.cpp \
           src/ov_sequence/GSequenceLineViewAnnotated.cpp \
           src/ov_sequence/Overview.cpp \
           src/ov_sequence/PanView.cpp \
           src/ov_sequence/PanViewRows.cpp \
           src/ov_sequence/SequenceInfo.cpp \
           src/ov_sequence/WindowStepSelectorWidget.cpp \
           src/ov_text/SimpleTextObjectView.cpp \
           src/ov_text/SimpleTextObjectViewTasks.cpp \
           src/phyltree/BranchSettingsDialog.cpp \
           src/phyltree/ButtonSettingsDialog.cpp \
           src/phyltree/CreatePhyTreeDialogController.cpp \
           src/phyltree/CreatePhyTreeWidget.cpp \
           src/phyltree/TextSettingsDialog.cpp \
           src/phyltree/TreeSettingsDialog.cpp \
           src/util_dna_assembly/BuildIndexDialog.cpp \
           src/util_dna_assembly/ConvertAssemblyToSamDialog.cpp \
           src/util_dna_assembly/DnaAssemblyDialog.cpp \
           src/util_dna_assembly/DnaAssemblyUtils.cpp \
           src/util_find_dialog/FindDialog.cpp \
           src/util_msa_align/MSAAlignDialog.cpp \
           src/util_sec_struct_predict/SecStructDialog.cpp \
           src/util_sec_struct_predict/SecStructPredictUtils.cpp \
           src/util_smith_waterman/SmithWatermanDialog.cpp \
           src/util_smith_waterman/SubstMatrixDialog.cpp
TRANSLATIONS += transl/chinese.ts \
                transl/czech.ts \
                transl/english.ts \
                transl/russian.ts
