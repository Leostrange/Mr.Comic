# Предлагаемые изменения в структуре репозитория Mr.Comic

На основе анализа `TASKLIST.md` и текущей структуры репозитория, которая, по всей видимости, ориентирована на Android/Kotlin/Java, было выявлено большое количество файлов `.js` и `.py`, которые, вероятно, являются остатками от предыдущих прототипов (веб-версии или Python-скриптов) и не относятся к текущему проекту. Эти файлы создают излишний объем и могут вводить в заблуждение.

Предлагается удалить следующие файлы и директории для приведения репозитория в лаконичное и правильно оформленное состояние:

## Файлы и директории для удаления

### 1. Директории с JavaScript файлами (веб-прототип)

Следующие директории содержат исключительно JavaScript файлы, которые, судя по контексту, не используются в текущей Android/Kotlin/Java реализации. Их удаление поможет очистить кодовую базу от неактуальных компонентов.

-   `Mr.Comic/src/annotations/` (за исключением `.kt` файлов)
    -   `AnnotationExportImport.js`
    -   `AnnotationExportImportUI.js`
    -   `AnnotationManager.js`
    -   `AnnotationIntegration.js`
    -   `index.js`
-   `Mr.Comic/src/backup/`
    -   `BackupIntegration.js`
    -   `BackupManager.js`
    -   `BackupUI.js`
    -   `index.js`
-   `Mr.Comic/src/cache/`
    -   `TranslationCacheManager.js`
    -   `index.js`
-   `Mr.Comic/src/cloud/`
    -   `GoogleDriveIntegration.js`
    -   `GoogleDriveManager.js`
    -   `GoogleDriveUI.js`
    -   `index.js`
-   `Mr.Comic/src/debug/`
    -   `BugFixRegistry.js`
    -   `DebugUtils.js`
    -   `ErrorHandler.js`
-   `Mr.Comic/src/exceptions/`
    -   `ErrorHandler.js`
    -   `ExceptionHierarchy.js`
    -   `ExceptionStrategies.js`
    -   `LoggingIntegration.js`
    -   `Logger.js`
    -   `RecoveryManager.js`
    -   `index.js`
-   `Mr.Comic/src/features/annotations/`
    -   `AnnotationsExportImport.js`
    -   `index.js`
-   `Mr.Comic/src/features/bookmarks_viewer/`
    -   `BookmarksViewer.js`
    -   `index.js`
-   `Mr.Comic/src/features/sync/`
    -   `JsonSynchronization.js`
    -   `index.js`
-   `Mr.Comic/src/formats/` (все `.js` файлы)
    -   `CBRFormatHandler.js`
    -   `CBRParser.js`
    -   `CBZFormatHandler.js`
    -   `CBZParser.js`
    -   `EPUBFormatHandler.js`
    -   `EPUBParser.js`
    -   `EPUBParserWithFallback.js`
    -   `EPUBWebViewIntegration.js`
    -   `FormatParserFallbackManager.js`
    -   `MOBIFormatHandler.js`
    -   `MOBIParser.js`
    -   `MOBIParserWithFallback.js`
    -   `PDFFormatHandler.js`
    -   `PDFParser.js`
    -   `PDFParserWithFallback.js`
    -   `index.js`
-   `Mr.Comic/src/integration/`
    -   `OCREditorIntegration.js`
    -   `PluginEditorIntegration.js`
    -   `PluginExtensionManager.js`
    -   `TranslationEditorIntegration.js`
    -   `UnifiedEditorInterface.js`
-   `Mr.Comic/src/ocr/` (за исключением `.kt` файлов, если есть)
    -   `BatchProcessingIntegration.js`
    -   `BatchProcessor.js`
    -   `SpeechBubbleDetector.js`
    -   `UserDataManager.js`
    -   `UserDataTrainer.js`
    -   `UserDataTrainingIntegration.js`
-   `Mr.Comic/src/optimization/`
    -   `PerformanceOptimizer.js`
    -   `ResourceAudit.js`
    -   `ResourceManager.js`
    -   `index.js`
-   `Mr.Comic/src/profile/`
    -   `ProfileManager.js`
-   `Mr.Comic/src/release/`
    -   `BugTracker.js`
    -   `MarketingMaterialsGenerator.js`
    -   `ReleaseManager.js`
    -   `ReleasePackager.js`
    -   `ReleaseValidator.js`
-   `Mr.Comic/src/sync/`
    -   `SyncIntegration.js`
    -   `SyncManager.js`
    -   `SyncUI.js`
    -   `index.js`
-   `Mr.Comic/src/test/ui/`
    -   `ThemeCustomizationTests.js`
-   `Mr.Comic/src/translation/` (за исключением `.kt` файлов, если есть)
    -   `TranslationEngineSelector.js`
    -   `TranslationManager.js`
-   `Mr.Comic/src/ui/` (все `.js` и `.css` файлы, кроме тех, что относятся к Android UI)
    -   `AnimationDemo.js`
    -   `AnimationIntegration.js`
    -   `AnimationManager.js`
    -   `BackupManagerPanel.js`
    -   `BookmarkViewer.js`
    -   `BookmarkViewerDemo.js`
    -   `BookmarkViewerIntegration.js`
    -   `ComicTranslationPanel.js`
    -   `ComicViewerIntegration.js`
    -   `EInkAdapter.js`
    -   `EInkDemo.js`
    -   `EInkIntegration.js`
    -   `EngineSelectionIntegration.js`
    -   `FeedbackForm.js`
    -   `FontEditorPanel.js`
    -   `GestureDemo.js`
    -   `GestureIntegration.js`
    -   `GestureManager.js`
    -   `OverlayRenderer.js`
    -   `PluginSettingsPanel.js`
    -   `ProfileManagerPanel.js`
    -   `ProgressIntegration.js`
    -   `ProgressManager.js`
    -   `ScalingDemo.js`
    -   `ScalingManager.js`
    -   `SettingsPanel.js`
    -   `TabletAdapter.js`
    -   `TabletDemo.js`
    -   `TabletIntegration.js`
    -   `ThemeDemo.js`
    -   `ThemeEditorPanel.js`
    -   `ThemeIntegration.js`
    -   `ThemeManager.js`
    -   `UIScalingIntegration.js`
    -   `mr_comic_ready_project.code-workspace`
    -   `plugin-settings-panel.css`

### 2. Файлы Python (старые скрипты)

Эти файлы, вероятно, относятся к ранним этапам разработки или к отдельным утилитам, которые не являются частью основного Android-приложения.

-   `Mr.Comic/src/ocr/RevolutionaryOCRSystem.py`
-   `Mr.Comic/src/quality/QualityValidationSystem.py`
-   `Mr.Comic/src/translation/AdvancedTranslationOverlay.py`
-   `Mr.Comic/src/translation/UniversalTranslationSystem.py`
-   `Mr.Comic/test_pipeline.py`
-   `Mr.Comic/test_special_files.py`
-   `Mr.Comic/test_valid_files.py`
-   `Mr.Comic/translate_from_image.py`

### 3. Тестовые файлы JavaScript

Тесты, написанные на JavaScript, скорее всего, связаны с удаляемыми веб-компонентами.

-   `Mr.Comic/tests/EPUBFormatTest.js`
-   `Mr.Comic/tests/ExceptionManagerTest.js`
-   `Mr.Comic/tests/FormatParserFallbackTest.js`
-   `Mr.Comic/tests/ImageEditorToolTest.js`
-   `Mr.Comic/tests/MOBIFormatTest.js`
-   `Mr.Comic/tests/OCREditorIntegrationTest.js`
-   `Mr.Comic/tests/PDFFormatTest.js`
-   `Mr.Comic/tests/PluginEditorIntegrationTest.js`
-   `Mr.Comic/tests/PluginExtensionManagerTest.js`
-   `Mr.Comic/tests/ResourceAuditTest.js`
-   `Mr.Comic/tests/TranslationCacheTest.js`
-   `Mr.Comic/tests/TranslationEditorIntegrationTest.js`
-   `Mr.Comic/tests/mocks/mock-classes.js`
-   `Mr.Comic/tests/plugin-system-tests.js`
-   `Mr.Comic/tests/run-tests.js`
-   `Mr.Comic/tests/tool-integration-tests.js`

### 4. Пустые директории

После удаления файлов могут остаться пустые директории. Их также следует удалить для поддержания чистоты структуры.

-   `Mr.Comic/src/annotations/` (если останутся только `.kt` файлы, то JS-файлы будут удалены, и директория может стать пустой, если `.kt` файлы будут перемещены или удалены в дальнейшем)
-   `Mr.Comic/src/backup/`
-   `Mr.Comic/src/cache/`
-   `Mr.Comic/src/cloud/`
-   `Mr.Comic/src/debug/`
-   `Mr.Comic/src/exceptions/`
-   `Mr.Comic/src/features/annotations/`
-   `Mr.Comic/src/features/bookmarks_viewer/`
-   `Mr.Comic/src/features/sync/`
-   `Mr.Comic/src/formats/`
-   `Mr.Comic/src/integration/`
-   `Mr.Comic/src/ocr/` (если останутся только `.kt` файлы, то Python/JS-файлы будут удалены, и директория может стать пустой)
-   `Mr.Comic/src/optimization/`
-   `Mr.Comic/src/profile/`
-   `Mr.Comic/src/quality/`
-   `Mr.Comic/src/release/`
-   `Mr.Comic/src/sync/`
-   `Mr.Comic/src/test/ui/`
-   `Mr.Comic/src/translation/` (если останутся только `.kt` файлы, то Python/JS-файлы будут удалены, и директория может стать пустой)
-   `Mr.Comic/src/ui/` (если все `.js` и `.css` файлы будут удалены)
-   `Mr.Comic/tests/` (если все `.js` тестовые файлы будут удалены, останутся только Python-тесты и Java/Kotlin тесты)
-   `Mr.Comic/tests/mocks/`

## Следующие шаги

После вашего подтверждения, я приступлю к удалению этих файлов и директорий. Затем я обновлю репозиторий.

