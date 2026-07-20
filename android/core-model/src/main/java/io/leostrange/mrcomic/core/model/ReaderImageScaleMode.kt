package io.leostrange.mrcomic.core.model

enum class ReaderImageScaleMode(val storedValue: String) {
    FIT_WIDTH("FIT_WIDTH"),
    FIT_HEIGHT("FIT_HEIGHT"),
    REAL_SIZE("REAL_SIZE");

    companion object {
        fun fromStored(value: String?): ReaderImageScaleMode =
            entries.firstOrNull { it.storedValue == value } ?: FIT_WIDTH

        fun defaultFor(format: ComicFormat?): ReaderImageScaleMode = FIT_WIDTH
    }
}
