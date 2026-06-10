package com.example.core.model

enum class ReaderScreenTimeoutMode(
    val storedValue: String,
    val timeoutMillis: Long?
) {
    SYSTEM("SYSTEM", null),
    SECONDS_30("30S", 30_000L),
    MINUTE_1("1M", 60_000L),
    MINUTE_2("2M", 120_000L),
    MINUTE_5("5M", 300_000L),
    MINUTE_10("10M", 600_000L),
    NEVER("NEVER", null);

    val keepsScreenAwake: Boolean
        get() = this == NEVER

    companion object {
        fun fromStored(value: String?): ReaderScreenTimeoutMode =
            entries.firstOrNull { it.storedValue == value } ?: SYSTEM
    }
}
