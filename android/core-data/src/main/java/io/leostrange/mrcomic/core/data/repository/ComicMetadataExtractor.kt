package io.leostrange.mrcomic.core.data.repository

import android.net.Uri
import android.util.Log
import android.util.Xml
import net.lingala.zip4j.ZipFile
import org.xmlpull.v1.XmlPullParser
import java.io.File
import java.io.InputStream

    internal data class ComicMeta(
        val title: String? = null,
        val series: String? = null,
        val number: Int? = null,
        val volume: Int? = null,
        val year: Int? = null,
        val publisher: String? = null,
        val writer: String? = null,
        val penciller: String? = null,
        val genre: String? = null,
        val languageISO: String? = null
    )

    internal fun ComicRepository.extractComicInfoMeta(sourcePath: String): ComicMeta? {
        var tempFile: File? = null
        var zip: ZipFile? = null
        return try {
            zip = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "zip")
                tempFile?.let { ZipFile(it) }
            } else {
                ZipFile(sourcePath)
            } ?: return null

            // ComicInfo.xml is usually at root; some tools place it in subdirs
            val header = zip.fileHeaders.firstOrNull {
                it.fileName.equals("ComicInfo.xml", ignoreCase = true) ||
                it.fileName.endsWith("/ComicInfo.xml", ignoreCase = true)
            } ?: return null

            zip.getInputStream(header).use { parseComicInfoXml(it) }
        } catch (e: Exception) {
            Log.w(ComicRepository.TAG, "ComicInfo.xml parsing failed for $sourcePath", e)
            null
        } finally {
            try { zip?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    internal fun ComicRepository.parseComicInfoXml(stream: InputStream): ComicMeta {
        val values = mutableMapOf<String, String>()
        val parser = Xml.newPullParser().apply {
            setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
            setInput(stream, null)
        }
        var currentTag = ""
        var ev = parser.eventType
        while (ev != XmlPullParser.END_DOCUMENT) {
            when (ev) {
                XmlPullParser.START_TAG -> currentTag = parser.name
                XmlPullParser.TEXT -> {
                    val text = parser.text?.trim() ?: ""
                    if (text.isNotEmpty() && currentTag.isNotEmpty()) values[currentTag] = text
                }
                XmlPullParser.END_TAG -> currentTag = ""
            }
            ev = parser.next()
        }
        return ComicMeta(
            title       = values["Title"]?.ifBlank { null },
            series      = values["Series"]?.ifBlank { null },
            number      = values["Number"]?.toIntOrNull(),
            volume      = values["Volume"]?.toIntOrNull(),
            year        = values["Year"]?.toIntOrNull(),
            publisher   = values["Publisher"]?.ifBlank { null },
            writer      = values["Writer"]?.ifBlank { null },
            penciller   = values["Penciller"]?.ifBlank { null },
            genre       = values["Genre"]?.ifBlank { null },
            languageISO = values["LanguageISO"]?.ifBlank { null }
        )
    }

    // ── FB2 cover (with charset-aware parsing) ────────────────────────────────

