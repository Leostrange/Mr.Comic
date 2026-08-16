package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderSelectionMenuLabels(
    val highlight: String,
    val translateChapter: String,
    val compareTranslations: String,
) {
    companion object {
        fun forLanguage(languageCode: String): ReaderSelectionMenuLabels =
            if (languageCode.lowercase().startsWith("ru")) {
                ReaderSelectionMenuLabels(
                    highlight = "✧ Подсветить",
                    translateChapter = "📖 Перевести главу",
                    compareTranslations = "⚖ Сравнить переводы",
                )
            } else {
                ReaderSelectionMenuLabels(
                    highlight = "✧ Highlight",
                    translateChapter = "📖 Translate Chapter",
                    compareTranslations = "⚖ Compare Translations",
                )
            }
    }
}
