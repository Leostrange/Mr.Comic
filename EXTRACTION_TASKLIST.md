# Тасклист декомпозиции крупных файлов

Дата: 2026-07-20
Статус: в работе

## Быстрые победы (trivial, высокий ROI)

### T-1. ReaderScreen: JS-константы → ReaderWebViewJavaScript.kt
- Источник: `ReaderScreen.kt` строки 137-608
- Содержимое: `JS_TAP_HANDLER`, `HTML_READER_RESET_FREE_SCROLL_JS`, `HTML_READER_BLANK_CHECK_JS`
- Строк: ~470
- Сложность: trivial (чистые константы)
- Цель: `ReaderWebViewJavaScript.kt`

### T-2. TextFormatReader: charset/mojibake → TextCharsetUtils.kt
- Источник: `TextFormatReader.kt` строки 294-463
- Содержимое: `textReaderMimeTypeFor`, `decodeTextBytes`, `repairCommonTextMojibake`, `looksLikeCommonMojibake`, `scoreDecodedText`
- Строк: ~170
- Сложность: trivial (top-level pure functions)
- Цель: `TextCharsetUtils.kt`

### T-3. SettingsViewModel: SettingsSecretStore → SettingsSecretStore.kt
- Источник: `SettingsViewModel.kt` строки 347-398
- Содержимое: `SettingsSecretStore` object (AES-GCM encryption)
- Строк: ~52
- Сложность: trivial (standalone object)
- Цель: `SettingsSecretStore.kt`

## Средние выносы (easy, большой блок)

### T-4. ReaderScreen: colorScheme → ReaderColorScheme.kt (РАНЕЕ ВЫНЕСЕН)
- Статус: ✅ Уже вынесен в `ReaderColorScheme.kt`

### T-5. TextFormatReader: HTML transformation → TextHtmlTransformUtils.kt
- Источник: `TextFormatReader.kt` строки 87-292, 465-542
- Содержимое: константы HTML_READER_SAFE_LIST, DEFAULT_READER_HTML_CSS и др.; функции preserveGutenbergHtmlDocument, normalizeReaderHtmlFragment, buildReaderHtmlDocument, renderMarkdownToHtmlBlocks, renderHtmlToReaderDocument
- Строк: ~250
- Сложность: easy (top-level, зависимости: jsoup, commonmark)
- Цель: `TextHtmlTransformUtils.kt`

### T-6. EpubFormatReader: data classes + CSS → EpubTypes.kt + EpubCssUtils.kt
- Источник: `EpubFormatReader.kt` строки 58-129, 231-300, 1009-1057
- Содержимое: EpubContentEstimate, EpubHtmlChunkBlock, EpubEstimatedChunkBlock, EpubPage sealed class, ParsedEpub, ManifestBlueprint, EpubCacheKey, CachedPage; CSS sanitization functions; toCachedPage/toEpubPage extensions
- Строк: ~200
- Сложность: easy
- Цель: `EpubTypes.kt`, `EpubCssUtils.kt`

### T-7. EpubFormatReader: OPF/TOC parsing → EpubManifestParser.kt (РАНЕЕ ВЫНЕСЕН)
- Статус: ✅ Уже вынесен в `EpubManifestParser.kt`

### T-8. LibraryScreen: utility functions → LibraryTextUtils.kt
- Источник: `LibraryScreen.kt` строки 1902-1923, 2203-2260, 2686-2696, 3131-3158, 3278-3288
- Содержимое: folderDescription, folderCollectionLabel, formatFileSize, mrComicUseCompactStagePreview и др.
- Строк: ~130
- Сложность: easy
- Цель: `LibraryTextUtils.kt`

## Сложные выносы (medium, требуют рефакторинга)

### T-9. ComicRepository: format detection → ComicFormatDetector.kt
- Источник: `ComicRepository.kt` строки 82-95, 422-650, 888-956
- Содержимое: magic byte constants, detectArchiveContentFormat, detectFormat, detectByMagic, detectZipContainerFormat, deriveTitleFromPath
- Строк: ~325
- Сложность: medium (зависит от context для openInputStream)
- Цель: `ComicFormatDetector.kt`

### T-10. EpubFormatReader: chunk extraction → EpubChunkExtractor.kt
- Источник: `EpubFormatReader.kt` строки 2003-2200+
- Содержимое: estimateChunkCount, splitEstimatedCharCount, extractChunk, extractChunkBlocks и др.
- Строк: ~250
- Сложность: medium (зависит от констант companion object)
- Цель: `EpubChunkExtractor.kt`

## Порядок выполнения

1. T-1 (ReaderScreen JS) — 470 строк, trivial
2. T-2 (TextFormatReader charset) — 170 строк, trivial
3. T-3 (SettingsSecretStore) — 52 строки, trivial
4. T-5 (TextFormatReader HTML) — 250 строк, easy
5. T-6 (EpubFormatReader types) — 200 строк, easy
6. T-8 (LibraryScreen utils) — 130 строк, easy
7. T-9 (ComicRepository format) — 325 строк, medium
8. T-10 (EpubFormatReader chunks) — 250 строк, medium

Итого: ~1847 строк к извлечению
