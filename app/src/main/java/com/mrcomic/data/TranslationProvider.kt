interface TranslationProvider {
    fun translate(text: String, sourceLang: String, targetLang: String): String
}

object LibreTranslateProvider : TranslationProvider {
    override fun translate(text: String, sourceLang: String, targetLang: String): String {
        // Упрощённая реализация с локальным LibreTranslate
        return LibreTranslate.translate(text, sourceLang, targetLang)
    }
} 