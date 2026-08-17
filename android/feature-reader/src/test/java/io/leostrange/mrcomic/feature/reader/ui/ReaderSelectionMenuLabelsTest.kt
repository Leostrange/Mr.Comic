package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderSelectionMenuLabelsTest {

    @Test
    fun russianLabels_areLocalizedForSelectionMenu() {
        val labels = ReaderSelectionMenuLabels.forLanguage("ru")

        assertEquals("✧ Подсветить", labels.highlight)
        assertEquals("📖 Перевести главу", labels.translateChapter)
        assertEquals("⚖ Сравнить переводы", labels.compareTranslations)
    }
}
