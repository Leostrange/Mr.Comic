package com.example.core.data.dictionary

import java.text.Normalizer
import java.util.Locale

object DictionaryNormalizer {
    private val whitespace = Regex("\\s+")
    private val cjkLanguages = setOf("ja", "zh", "ko")

    fun normalize(text: String, language: String): String {
        val collapsed = whitespace.replace(
            Normalizer.normalize(text, Normalizer.Form.NFKC).trim(),
            " "
        )
        return if (language.lowercase() in cjkLanguages) {
            collapsed
        } else {
            collapsed.lowercase(Locale.ROOT)
        }
    }
}
