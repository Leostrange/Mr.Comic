package io.leostrange.mrcomic.feature.ocr.ui

import io.leostrange.mrcomic.core.model.OcrBlock

internal fun selectedBlockTranslationInput(
    block: OcrBlock,
    state: OcrUiState
): String = state.selectedBlockCleanedText
    ?.takeIf { it.isNotBlank() }
    ?: block.textNormalized.ifBlank { block.textOriginal }
        .trim()
        .replace(Regex("\\s+"), " ")

internal fun cleanupOcrText(
    rawText: String,
    sourceLanguage: String
): String {
    var text = rawText
        .replace("\r\n", "\n")
        .replace('\r', '\n')
        .trim()

    text = text.replace(Regex("([\\p{L}\\p{N}])[\\-‐‑‒–—]\\s*\\n\\s*([\\p{L}\\p{N}])"), "$1$2")
    text = text.replace(Regex("[ \\t]*\\n[ \\t]*"), "\n")
    text = text.replace(Regex("[ \\t]{2,}"), " ")

    text = when (sourceLanguage) {
        "ja", "zh" -> text
            .replace(Regex("(?<=[\\p{IsHan}\\p{IsHiragana}\\p{IsKatakana}])\\s+(?=[\\p{IsHan}\\p{IsHiragana}\\p{IsKatakana}])"), "")
            .replace(Regex("\\n{2,}"), "\n")

        else -> text
            .replace(Regex("(?<=[\\p{L}\\p{N},;:])\\n(?=[\\p{L}\\p{N}])"), " ")
            .replace(Regex("\\n{3,}"), "\n\n")
    }

    return text
        .replace(Regex("\\s+([,.;:!?])"), "$1")
        .replace(Regex("([“«(\\[{])\\s+"), "$1")
        .replace(Regex("\\s+([”»)\\]}])"), "$1")
        .replace(Regex("[|¦]{2,}"), "|")
        .replace(Regex("^[|¦•·]+\\s*"), "")
        .replace(Regex("\\s*[|¦•·]+$"), "")
        .replace(Regex("[!?.,]{4,}")) { match -> match.value.take(3) }
        .replace(Regex("…{2,}"), "…")
        .replace(Regex("[ \\t]{2,}"), " ")
        .replace(Regex("\\n{3,}"), "\n\n")
        .trim()
}

internal fun buildSelectedBlockContextPreview(
    selectedBlockId: String?,
    recognizedBlocks: List<OcrBlock>
): Pair<String?, String?> {
    if (selectedBlockId == null) return null to null
    val orderedBlocks = recognizedBlocks.sortedWith(
        compareBy<OcrBlock> { it.bboxTop }
            .thenBy { it.bboxLeft }
            .thenByDescending { it.bboxWidth * it.bboxHeight }
    )
    val index = orderedBlocks.indexOfFirst { it.id == selectedBlockId }
    if (index == -1) return null to null

    val before = orderedBlocks.subList(0, index).asReversed().firstNotNullOfOrNull(::contextSnippet)
    val after = orderedBlocks.subList(index + 1, orderedBlocks.size).firstNotNullOfOrNull(::contextSnippet)
    return before to after
}

private fun contextSnippet(block: OcrBlock): String? {
    val normalized = block.textNormalized
        .ifBlank { block.textOriginal }
        .trim()
        .replace(Regex("\\s+"), " ")
    if (normalized.isBlank()) return null
    return if (normalized.length <= 96) normalized else normalized.take(93).trimEnd() + "..."
}
