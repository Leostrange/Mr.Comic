package com.example.core.model

enum class ReaderImageScaleMode(val storedValue: String) {
    FIT_WIDTH("FIT_WIDTH"),
    FIT_HEIGHT("FIT_HEIGHT"),
    REAL_SIZE("REAL_SIZE");

    companion object {
        fun fromStored(value: String?): ReaderImageScaleMode =
            entries.firstOrNull { it.storedValue == value } ?: FIT_WIDTH
    }
}
