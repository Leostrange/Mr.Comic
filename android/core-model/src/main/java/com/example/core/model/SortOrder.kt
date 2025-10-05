package com.example.core.model

enum class SortOrder {
    TITLE_ASC,
    TITLE_DESC,
    DATE_ADDED_DESC;

    val displayName: String
        get() = when (this) {
            TITLE_ASC -> "по алфавиту А-Я"
            TITLE_DESC -> "по алфавиту Я-А"
            DATE_ADDED_DESC -> "по дате"
        }
}
