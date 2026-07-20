package io.leostrange.mrcomic.core.model

enum class ReaderTtsSleepTimerMode(
    val storedValue: String,
    val minutes: Int?
) {
    OFF("OFF", null),
    MINUTES_10("10M", 10),
    MINUTES_20("20M", 20),
    MINUTES_30("30M", 30),
    MINUTES_45("45M", 45),
    MINUTES_60("60M", 60);

    companion object {
        fun fromStored(value: String?): ReaderTtsSleepTimerMode =
            entries.firstOrNull { it.storedValue == value } ?: OFF
    }
}
