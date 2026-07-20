package com.example.feature.reader.agents

/**
 * Pxpipe — превращение длинных промптов в картинки.
 * Экономия токенов: один пиксель = ~1/3 токена, один пиксель = 1/5 символа.
 * 
 * Экономия:
 * - Холодный контекст (30K): 35K → 5.75K (~83%)
 * - SWE-bench: $53.61 → $27.27 (−49%)
 * 
 * Ограничения:
 * - Точные строки (SHA, hex) — НЕЛЬЗЯ в картинку (0% на Opus)
 * - gist-задачи — 100/100
 * - Только для моделей, которые "читают" картинки
 */
internal class PxpipeAgent {

    private val proxyPort = 47821
    private val proxyHost = "127.0.0.1"

    data class CompressedBlock(
        val text: String,
        val imageTokens: Int,
        val textTokens: Int,
        val savings: Double
    )

    /**
     * Оценивает, выгодно ли сжимать блок в картинку.
     * Формула: compress_iff = imageTokens + burn < textTokens + burn
     */
    fun evaluateCompression(block: String): Boolean {
        val charCount = block.length
        val estimatedTextTokens = (charCount / 1.17).toInt()
        val tokensPerPixel = (1928 * 728) / 750
        val imageTokens = tokensPerPixel / 3 // grayscale
        
        return imageTokens < estimatedTextTokens
    }

    /**
     * Разбивает длинный текст на страницы.
     * Каждая страница — это PNG-картинка с текстом.
     */
    fun chunkText(text: String): List<CompressedBlock> {
        val chunks = mutableListOf<CompressedBlock>()
        var start = 0
        
        while (start < text.length) {
            val end = minOf(start + 28080, text.length)
            val chunk = text.substring(start, end)
            
            val charCount = chunk.length
            val estimatedTokens = (charCount / 1.17).toInt()
            val pixels = (1928 * 728) / 750
            val imageTokens = pixels / 3
            
            chunks.add(
                CompressedBlock(
                    text = chunk,
                    imageTokens = imageTokens,
                    textTokens = estimatedTokens,
                    savings = 1.0 - (imageTokens.toDouble() / estimatedTokens)
                )
            )
            start = end
        }
        
        return chunks
    }
}