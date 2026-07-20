package io.leostrange.mrcomic.core.model

enum class ReaderTtsProviderType(
    val storedValue: String
) {
    SYSTEM("SYSTEM"),
    OPENAI("OPENAI"),
    AZURE("AZURE"),
    ALIYUN("ALIYUN");

    companion object {
        fun fromStored(value: String?): ReaderTtsProviderType =
            entries.firstOrNull { it.storedValue.equals(value, ignoreCase = true) } ?: SYSTEM
    }
}
