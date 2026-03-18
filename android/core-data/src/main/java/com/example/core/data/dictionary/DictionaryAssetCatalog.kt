package com.example.core.data.dictionary

internal data class DictionaryAssetConfig(
    val language: String,
    val assetPath: String,
    val databaseName: String,
    val extractedFileName: String,
)

internal object DictionaryAssetCatalog {
    private val configs = listOf(
        DictionaryAssetConfig("en", "databases/dictionary_en.dbpack", "dictionary_en_room_asset_v3.db", "dictionary_en_room_asset_v3.db"),
        DictionaryAssetConfig("fr", "databases/dictionary_fr.dbpack", "dictionary_fr_room_asset_v3.db", "dictionary_fr_room_asset_v3.db"),
        DictionaryAssetConfig("it", "databases/dictionary_it.dbpack", "dictionary_it_room_asset_v3.db", "dictionary_it_room_asset_v3.db"),
        DictionaryAssetConfig("ja", "databases/dictionary_ja.dbpack", "dictionary_ja_room_asset_v3.db", "dictionary_ja_room_asset_v3.db"),
        DictionaryAssetConfig("ko", "databases/dictionary_ko.dbpack", "dictionary_ko_room_asset_v3.db", "dictionary_ko_room_asset_v3.db"),
        DictionaryAssetConfig("pl", "databases/dictionary_pl.dbpack", "dictionary_pl_room_asset_v3.db", "dictionary_pl_room_asset_v3.db"),
        DictionaryAssetConfig("pt", "databases/dictionary_pt.dbpack", "dictionary_pt_room_asset_v3.db", "dictionary_pt_room_asset_v3.db"),
        DictionaryAssetConfig("ru", "databases/dictionary_ru.dbpack", "dictionary_ru_room_asset_v3.db", "dictionary_ru_room_asset_v3.db"),
        DictionaryAssetConfig("tr", "databases/dictionary_tr.dbpack", "dictionary_tr_room_asset_v3.db", "dictionary_tr_room_asset_v3.db"),
        DictionaryAssetConfig("zh", "databases/dictionary_zh.dbpack", "dictionary_zh_room_asset_v3.db", "dictionary_zh_room_asset_v3.db"),
    )

    fun configForLanguage(language: String): DictionaryAssetConfig? =
        configs.firstOrNull { it.language == language }

    fun shippedLanguages(): List<String> = configs.map { it.language }
}
