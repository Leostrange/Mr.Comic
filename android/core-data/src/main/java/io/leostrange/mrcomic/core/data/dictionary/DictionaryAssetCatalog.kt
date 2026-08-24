package io.leostrange.mrcomic.core.data.dictionary

/** Public: consumed by feature-settings dictionary management UI. */
data class DictionaryAssetConfig(
    val language: String,
    val assetPath: String,
    val databaseName: String,
    val extractedFileName: String,
    /** Approximate download size in bytes from the dictionary modules release. */
    val approxDownloadBytes: Long = 0L,
)

object DictionaryAssetCatalog {
    private val configs = listOf(
        DictionaryAssetConfig("en", "databases/dictionary_en.dbpack", "dictionary_en_room_asset_v3.db", "dictionary_en_room_asset_v3.db", approxDownloadBytes = 18_800_000L),
        DictionaryAssetConfig("fr", "databases/dictionary_fr.dbpack", "dictionary_fr_room_asset_v3.db", "dictionary_fr_room_asset_v3.db", approxDownloadBytes = 310_600_000L),
        DictionaryAssetConfig("it", "databases/dictionary_it.dbpack", "dictionary_it_room_asset_v3.db", "dictionary_it_room_asset_v3.db", approxDownloadBytes = 36_400_000L),
        DictionaryAssetConfig("ja", "databases/dictionary_ja.dbpack", "dictionary_ja_room_asset_v3.db", "dictionary_ja_room_asset_v3.db", approxDownloadBytes = 59_700_000L),
        DictionaryAssetConfig("ko", "databases/dictionary_ko.dbpack", "dictionary_ko_room_asset_v3.db", "dictionary_ko_room_asset_v3.db", approxDownloadBytes = 15_200_000L),
        DictionaryAssetConfig("pl", "databases/dictionary_pl.dbpack", "dictionary_pl_room_asset_v3.db", "dictionary_pl_room_asset_v3.db", approxDownloadBytes = 42_000_000L),
        DictionaryAssetConfig("pt", "databases/dictionary_pt.dbpack", "dictionary_pt_room_asset_v3.db", "dictionary_pt_room_asset_v3.db", approxDownloadBytes = 39_100_000L),
        DictionaryAssetConfig("ru", "databases/dictionary_ru.dbpack", "dictionary_ru_room_asset_v3.db", "dictionary_ru_room_asset_v3.db", approxDownloadBytes = 141_800_000L),
        DictionaryAssetConfig("tr", "databases/dictionary_tr.dbpack", "dictionary_tr_room_asset_v3.db", "dictionary_tr_room_asset_v3.db", approxDownloadBytes = 34_800_000L),
        DictionaryAssetConfig("zh", "databases/dictionary_zh.dbpack", "dictionary_zh_room_asset_v3.db", "dictionary_zh_room_asset_v3.db", approxDownloadBytes = 19_200_000L),
    )

    fun configForLanguage(language: String): DictionaryAssetConfig? =
        configs.firstOrNull { it.language == language }

    fun shippedLanguages(): List<String> = configs.map { it.language }
}
