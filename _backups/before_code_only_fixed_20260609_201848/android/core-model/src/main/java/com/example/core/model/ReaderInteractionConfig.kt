package com.example.core.model

enum class ReaderTapZoneMode {
    SIMPLE,
    CUSTOM;

    companion object {
        fun fromStored(value: String?): ReaderTapZoneMode =
            entries.firstOrNull { it.name == value?.uppercase() } ?: SIMPLE
    }
}

enum class ReaderTapZoneAction {
    PREVIOUS_PAGE,
    MENU,
    NEXT_PAGE,
    NONE,
    PREVIOUS_CHAPTER,
    NEXT_CHAPTER,
    TOGGLE_UI;

    companion object {
        fun fromStored(value: String?): ReaderTapZoneAction =
            entries.firstOrNull { it.name == value?.uppercase() } ?: NONE
    }
}

data class ReaderTapZoneLayout(
    val left: ReaderTapZoneAction,
    val center: ReaderTapZoneAction,
    val right: ReaderTapZoneAction
)

fun resolveReaderSimpleTapZoneLayout(
    readingMode: ReadingMode,
    swapped: Boolean
): ReaderTapZoneLayout {
    val base = if (readingMode == ReadingMode.PAGE_RTL) {
        ReaderTapZoneLayout(
            left = ReaderTapZoneAction.NEXT_PAGE,
            center = ReaderTapZoneAction.MENU,
            right = ReaderTapZoneAction.PREVIOUS_PAGE
        )
    } else {
        ReaderTapZoneLayout(
            left = ReaderTapZoneAction.PREVIOUS_PAGE,
            center = ReaderTapZoneAction.MENU,
            right = ReaderTapZoneAction.NEXT_PAGE
        )
    }
    return if (!swapped) {
        base
    } else {
        ReaderTapZoneLayout(
            left = base.right,
            center = base.center,
            right = base.left
        )
    }
}

fun resolveReaderTapZoneLayout(
    mode: ReaderTapZoneMode,
    readingMode: ReadingMode,
    swapped: Boolean,
    leftAction: String,
    centerAction: String,
    rightAction: String
): ReaderTapZoneLayout = if (mode == ReaderTapZoneMode.SIMPLE) {
    resolveReaderSimpleTapZoneLayout(
        readingMode = readingMode,
        swapped = swapped
    )
} else {
    ReaderTapZoneLayout(
        left = ReaderTapZoneAction.fromStored(leftAction),
        center = ReaderTapZoneAction.fromStored(centerAction),
        right = ReaderTapZoneAction.fromStored(rightAction)
    )
}

enum class ReaderInfoSlot {
    NONE,
    BOOK_TITLE,
    CHAPTER_TITLE,
    TIME,
    PROGRESS,
    PAGE;

    companion object {
        fun fromStored(value: String?): ReaderInfoSlot =
            entries.firstOrNull { it.name == value?.uppercase() } ?: NONE
    }
}
