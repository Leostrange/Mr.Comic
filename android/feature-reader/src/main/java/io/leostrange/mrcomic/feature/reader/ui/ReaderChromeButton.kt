package io.leostrange.mrcomic.feature.reader.ui

internal enum class ReaderChromeButton(val storedValue: String) {
    TOC("toc"),
    STYLE("style"),
    AUDIO("audio"),
    DIRECTION("direction"),
    TRANSLATE("translate"),
    BRIGHTNESS("brightness"),
    AUTO_SCROLL("auto_scroll");

    companion object {
        val defaultOrder: List<ReaderChromeButton> = listOf(
            TOC,
            STYLE,
            AUDIO,
            DIRECTION,
            TRANSLATE,
            BRIGHTNESS,
            AUTO_SCROLL
        )

        val defaultStoredOrder: String = defaultOrder.joinToString(",") { it.storedValue }

        fun fromStored(value: String?): ReaderChromeButton? =
            entries.firstOrNull { it.storedValue.equals(value?.trim(), ignoreCase = true) }

        fun resolveOrder(value: String?): List<ReaderChromeButton> {
            val preferred = value
                .orEmpty()
                .split(',')
                .mapNotNull(::fromStored)
                .distinct()
            return preferred + defaultOrder.filterNot(preferred::contains)
        }

        fun normalizeStoredOrder(value: String?): String =
            resolveOrder(value).joinToString(",") { it.storedValue }

        fun move(orderValue: String?, buttonValue: String, delta: Int): String {
            val currentOrder = resolveOrder(orderValue).toMutableList()
            val button = fromStored(buttonValue) ?: return normalizeStoredOrder(orderValue)
            val currentIndex = currentOrder.indexOf(button)
            if (currentIndex == -1) return normalizeStoredOrder(orderValue)
            val targetIndex = (currentIndex + delta).coerceIn(0, currentOrder.lastIndex)
            if (currentIndex == targetIndex) return currentOrder.joinToString(",") { it.storedValue }
            currentOrder.removeAt(currentIndex)
            currentOrder.add(targetIndex, button)
            return currentOrder.joinToString(",") { it.storedValue }
        }
    }
}
