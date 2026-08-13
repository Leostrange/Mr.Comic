package io.leostrange.mrcomic.feature.reader.harness

import android.content.Context
import org.json.JSONObject
import java.security.MessageDigest

data class ReaderCorpusFixture(
    val id: String,
    val format: String,
    val sourceType: String,
    val source: String,
    val sourceSha256: String,
    val modes: Set<String>,
    val expectedMinSections: Int,
    val expectedMinPages: Int
)

data class ReaderCorpusManifest(
    val schemaVersion: Int,
    val fixtures: List<ReaderCorpusFixture>
) {
    fun validate(context: Context): List<String> = buildList {
        if (schemaVersion != SUPPORTED_SCHEMA_VERSION) {
            add("Unsupported schemaVersion=$schemaVersion")
        }
        fixtures.groupBy { it.id }.filterValues { it.size > 1 }.keys.forEach { duplicate ->
            add("Duplicate fixture id=$duplicate")
        }
        fixtures.forEach { fixture ->
            if (fixture.format !in SUPPORTED_FORMATS) add("${fixture.id}: unsupported format=${fixture.format}")
            if (fixture.sourceType !in SUPPORTED_SOURCE_TYPES) {
                add("${fixture.id}: unsupported sourceType=${fixture.sourceType}")
            }
            if (fixture.modes.isEmpty() || fixture.modes.any { it !in SUPPORTED_MODES }) {
                add("${fixture.id}: invalid modes=${fixture.modes}")
            }
            if (fixture.expectedMinSections < 1) add("${fixture.id}: expectedMinSections must be positive")
            if (fixture.expectedMinPages < 1) add("${fixture.id}: expectedMinPages must be positive")
            val sourceBytes = when (fixture.sourceType) {
                SOURCE_ASSET -> runCatching {
                    context.assets.open("reader-corpus/${fixture.source}").use { it.readBytes() }
                }.getOrElse {
                    add("${fixture.id}: missing asset=${fixture.source}")
                    null
                }
                SOURCE_GENERATOR -> fixture.source.toByteArray(Charsets.UTF_8)
                else -> null
            }
            if (sourceBytes != null) {
                val actual = sourceBytes.sha256()
                if (!actual.equals(fixture.sourceSha256, ignoreCase = true)) {
                    add("${fixture.id}: checksum mismatch expected=${fixture.sourceSha256} actual=$actual")
                }
            }
        }
    }

    companion object {
        const val SUPPORTED_SCHEMA_VERSION = 1
        const val SOURCE_ASSET = "asset"
        const val SOURCE_GENERATOR = "generator"

        val SUPPORTED_FORMATS = setOf(
            "EPUB", "FB2", "HTML", "TXT", "DOCX", "TEXT_ARCHIVE",
            "CBZ", "CBR", "PDF", "DJVU", "IMAGE_FOLDER"
        )
        val SUPPORTED_SOURCE_TYPES = setOf(SOURCE_ASSET, SOURCE_GENERATOR)
        val SUPPORTED_MODES = setOf("PAGE", "WEBTOON")

        fun load(context: Context, assetName: String = "reader-corpus/manifest.json"): ReaderCorpusManifest {
            val root = context.assets.open(assetName).bufferedReader().use { JSONObject(it.readText()) }
            val fixturesJson = root.getJSONArray("fixtures")
            val fixtures = buildList {
                repeat(fixturesJson.length()) { index ->
                    val item = fixturesJson.getJSONObject(index)
                    val modesJson = item.getJSONArray("modes")
                    add(
                        ReaderCorpusFixture(
                            id = item.getString("id"),
                            format = item.getString("format"),
                            sourceType = item.getString("sourceType"),
                            source = item.getString("source"),
                            sourceSha256 = item.getString("sourceSha256"),
                            modes = buildSet {
                                repeat(modesJson.length()) { add(modesJson.getString(it)) }
                            },
                            expectedMinSections = item.getInt("expectedMinSections"),
                            expectedMinPages = item.getInt("expectedMinPages")
                        )
                    )
                }
            }
            return ReaderCorpusManifest(root.getInt("schemaVersion"), fixtures)
        }
    }
}

private fun ByteArray.sha256(): String =
    MessageDigest.getInstance("SHA-256").digest(this).joinToString("") {
        (it.toInt() and 0xff).toString(16).padStart(2, '0')
    }
