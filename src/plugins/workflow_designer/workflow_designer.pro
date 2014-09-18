include (workflow_designer.pri)

# Input
HEADERS += src/ActorCfgFilterProxyModel.h \
           src/ActorCfgModel.h \
           src/BreakpointManagerView.h \
           src/ChooseItemDialog.h \
           src/CreateScriptWorker.h \
           src/DashboardsManagerDialog.h \
           src/EstimationDialog.h \
           src/GalaxyConfigConfigurationDialogImpl.h \
           src/ImportSchemaDialog.h \
           src/InvestigationDataModel.h \
           src/ItemViewStyle.h \
           src/PortAliasesConfigurationDialog.h \
           src/SceneSerializer.h \
           src/SchemaAliasesConfigurationDialogImpl.h \
           src/StartupDialog.h \
           src/WorkflowDesignerPlugin.h \
           src/WorkflowDocument.h \
           src/WorkflowEditor.h \
           src/WorkflowEditorDelegates.h \
           src/WorkflowInvestigationWidgetsController.h \
           src/WorkflowMetaDialog.h \
           src/WorkflowPalette.h \
           src/WorkflowSamples.h \
           src/WorkflowSceneIOTasks.h \
           src/WorkflowSettingsController.h \
           src/WorkflowTabView.h \
           src/WorkflowViewController.h \
           src/WorkflowViewItems.h \
           src/cmdline/GalaxyConfigTask.h \
           src/cmdline/WorkflowCMDLineTasks.h \
           src/debug_messages_translation/AnnotationsMessageTranslator.h \
           src/debug_messages_translation/AssemblyMessageTranslator.h \
           src/debug_messages_translation/BaseMessageTranslator.h \
           src/debug_messages_translation/MultipleAlignmentMessageTranslator.h \
           src/debug_messages_translation/SequenceMessageTranslator.h \
           src/debug_messages_translation/VariationTrackMessageTranslator.h \
           src/debug_messages_translation/WorkflowDebugMessageParserImpl.h \
           src/library/AminoTranslationWorker.h \
           src/library/AssemblyToSequenceWorker.h \
           src/library/BaseDocWorker.h \
           src/library/CDSearchWorker.h \
           src/library/CfgExternalToolModel.h \
           src/library/ConvertFilesFormatWorker.h \
           src/library/CoreLib.h \
           src/library/CreateExternalProcessDialog.h \
           src/library/DASAnnotationWorker.h \
           src/library/DASFetchWorker.h \
           src/library/DocActors.h \
           src/library/DocWorkers.h \
           src/library/ExternalProcessWorker.h \
           src/library/ExtractConsensusWorker.h \
           src/library/ExtractMSAConsensusWorker.h \
           src/library/FilterAnnotationsByQualifierWorker.h \
           src/library/FilterAnnotationsWorker.h \
           src/library/FindWorker.h \
           src/library/GenericReadActor.h \
           src/library/GenericReadWorker.h \
           src/library/GetFileListWorker.h \
           src/library/GroupWorker.h \
           src/library/ImportAnnotationsWorker.h \
           src/library/IncludedProtoFactoryImpl.h \
           src/library/FASTQWorkersLibrary.h \
           src/library/FilterBamWorker.h \
           src/library/MarkSequenceWorker.h \
           src/library/MergeBamWorker.h \
           src/library/MSA2SequenceWorker.h \
           src/library/MultiplexerWorker.h \
           src/library/PassFilterWorker.h \
           src/library/ReadAnnotationsWorker.h \
           src/library/ReadAssemblyWorker.h \
           src/library/ReadVariationWorker.h \
           src/library/RemoteDBFetcherWorker.h \
           src/library/ReverseComplementWorker.h \
           src/library/RmdupBamWorker.h \
           src/library/SchemaWorker.h \
           src/library/ScriptWorker.h \
           src/library/SequenceSplitWorker.h \
           src/library/SequencesToMSAWorker.h \
           src/library/StatisticWorkers.h \
           src/library/SortBamWorker.h \
           src/library/Text2SequenceWorker.h \
           src/library/WriteAssemblyWorkers.h \
           src/library/WriteVariationWorker.h \
           src/tasks/ReadAssemblyTask.h \
           src/util/DatasetsCountValidator.h \
           src/util/DatasetValidator.h \
           src/util/GrouperActionUtils.h \
           src/util/RequiredSlotsValidator.h \
           src/util/SaveSchemaImageUtils.h \
           src/util/WorkerNameValidator.h \
           src/util/WriteSequenceValidator.h \
    src/TableViewTabKey.h
FORMS += src/ui/ChooseItemDialog.ui \
           src/ui/CreateScriptBlockDialog.ui \
           src/ui/DashboardsManagerDialog.ui \
           src/ui/ExternalProcessWorkerDialog.ui \
           src/ui/GalaxyConfigConfigurationDialog.ui \
           src/ui/ImportSchemaDialog.ui \
           src/ui/PaletteWidget.ui \
           src/ui/PortAliasesConfigurationDialog.ui \
           src/ui/SchemaAliasesConfigurationDialog.ui \
           src/ui/StartupDialog.ui \
           src/ui/WorkflowEditorWidget.ui \
           src/ui/WorkflowMetaDialog.ui \
           src/ui/WorkflowSettingsWidget.ui
SOURCES += src/ActorCfgFilterProxyModel.cpp \
           src/ActorCfgModel.cpp \
           src/BreakpointManagerView.cpp \
           src/ChooseItemDialog.cpp \
           src/CreateScriptWorker.cpp \
           src/DashboardsManagerDialog.cpp \
           src/EstimationDialog.cpp \
           src/GalaxyConfigConfigurationDialogImpl.cpp \
           src/ImportSchemaDialog.cpp \
           src/InvestigationDataModel.cpp \
           src/ItemViewStyle.cpp \
           src/PortAliasesConfigurationDialog.cpp \
           src/SceneSerializer.cpp \
           src/SchemaAliasesConfigurationDialogImpl.cpp \
           src/StartupDialog.cpp \
           src/WorkflowDesignerPlugin.cpp \
           src/WorkflowDocument.cpp \
           src/WorkflowEditor.cpp \
           src/WorkflowEditorDelegates.cpp \
           src/WorkflowInvestigationWidgetsController.cpp \
           src/WorkflowMetaDialog.cpp \
           src/WorkflowPalette.cpp \
           src/WorkflowSamples.cpp \
           src/WorkflowSceneIOTasks.cpp \
           src/WorkflowSettingsController.cpp \
           src/WorkflowTabView.cpp \
           src/WorkflowViewController.cpp \
           src/WorkflowViewItems.cpp \
           src/cmdline/GalaxyConfigTask.cpp \
           src/cmdline/WorkflowCMDLineTasks.cpp \
           src/debug_messages_translation/AnnotationsMessageTranslator.cpp \
           src/debug_messages_translation/AssemblyMessageTranslator.cpp \
           src/debug_messages_translation/BaseMessageTranslator.cpp \
           src/debug_messages_translation/MultipleAlignmentMessageTranslator.cpp \
           src/debug_messages_translation/SequenceMessageTranslator.cpp \
           src/debug_messages_translation/VariationTrackMessageTranslator.cpp \
           src/debug_messages_translation/WorkflowDebugMessageParserImpl.cpp \
           src/library/AminoTranslationWorker.cpp \
           src/library/AssemblyToSequenceWorker.cpp \
           src/library/BaseDocWorker.cpp \
           src/library/CDSearchWorker.cpp \
           src/library/CfgExternalToolModel.cpp \
           src/library/ConvertFilesFormatWorker.cpp \
           src/library/CoreLib.cpp \
           src/library/CreateExternalProcessDialog.cpp \
           src/library/DASAnnotationWorker.cpp \
           src/library/DASFetchWorker.cpp \
           src/library/DocActors.cpp \
           src/library/DocWorkers.cpp \
           src/library/ExternalProcessWorker.cpp \
           src/library/ExtractConsensusWorker.cpp \
           src/library/ExtractMSAConsensusWorker.cpp \
           src/library/FASTQWorkersLibrary.cpp \
           src/library/FilterAnnotationsWorker.cpp \
           src/library/FilterAnnotationsByQualifierWorker.cpp \
           src/library/FilterBamWorker.cpp \
           src/library/FindWorker.cpp \
           src/library/GenericReadActor.cpp \
           src/library/GenericReadWorker.cpp \
           src/library/GetFileListWorker.cpp \
           src/library/GroupWorker.cpp \
           src/library/ImportAnnotationsWorker.cpp \
           src/library/IncludedProtoFactoryImpl.cpp \
           src/library/MarkSequenceWorker.cpp \
           src/library/MergeBamWorker.cpp \
           src/library/MSA2SequenceWorker.cpp \
           src/library/MultiplexerWorker.cpp \
           src/library/PassFilterWorker.cpp \
           src/library/ReadAnnotationsWorker.cpp \
           src/library/ReadAssemblyWorker.cpp \
           src/library/ReadVariationWorker.cpp \
           src/library/RemoteDBFetcherWorker.cpp \
           src/library/ReverseComplementWorker.cpp \
           src/library/RmdupBamWorker.cpp \
           src/library/SchemaWorker.cpp \
           src/library/ScriptWorker.cpp \
           src/library/SequenceSplitWorker.cpp \
           src/library/SequencesToMSAWorker.cpp \
           src/library/StatisticWorkers.cpp \
           src/library/SortBamWorker.cpp \
           src/library/Text2SequenceWorker.cpp \
           src/library/WriteAssemblyWorkers.cpp \
           src/library/WriteVariationWorker.cpp \
           src/tasks/ReadAssemblyTask.cpp \
           src/util/DatasetsCountValidator.cpp \
           src/util/DatasetValidator.cpp \
           src/util/GrouperActionUtils.cpp \
           src/util/RequiredSlotsValidator.cpp \
           src/util/SaveSchemaImageUtils.cpp \
           src/util/WorkerNameValidator.cpp \
           src/util/WriteSequenceValidator.cpp \
    src/TableViewTabKey.cpp
RESOURCES += workflow_designer.qrc
TRANSLATIONS += transl/english.ts transl/russian.ts
