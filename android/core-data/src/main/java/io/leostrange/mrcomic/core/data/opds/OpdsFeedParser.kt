package io.leostrange.mrcomic.core.data.opds

import android.util.Xml
import io.leostrange.mrcomic.core.model.OpdsEntry
import io.leostrange.mrcomic.core.model.OpdsFeed
import io.leostrange.mrcomic.core.model.OpdsLink
import org.xmlpull.v1.XmlPullParser
import java.io.InputStream

/**
 * Parses OPDS feeds in Atom/XML format.
 *
 * OPDS feeds are Atom documents with additional link relations
 * defined by the OPDS specification (acquisition, navigation, search).
 */
internal object OpdsFeedParser {

    private const val ATOM_NS = "http://www.w3.org/2005/Atom"

    fun parse(input: InputStream): OpdsFeed {
        val parser = Xml.newPullParser().apply {
            setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, true)
            setInput(input, null)
        }

        var title = ""
        val entries = mutableListOf<OpdsEntry>()
        val links = mutableListOf<OpdsLink>()
        var nextLink: String? = null
        var searchLink: String? = null

        // Navigate to <feed>
        while (parser.eventType != XmlPullParser.END_DOCUMENT) {
            if (parser.eventType == XmlPullParser.START_TAG &&
                parser.namespace == ATOM_NS && parser.name == "feed"
            ) {
                break
            }
            parser.next()
        }

        // Parse feed children
        while (parser.eventType != XmlPullParser.END_DOCUMENT) {
            if (parser.eventType == XmlPullParser.END_TAG &&
                parser.namespace == ATOM_NS && parser.name == "feed"
            ) {
                break
            }
            if (parser.eventType == XmlPullParser.START_TAG) {
                when {
                    parser.namespace == ATOM_NS && parser.name == "title" ->
                        title = readText(parser, "title")
                    parser.namespace == ATOM_NS && parser.name == "link" -> {
                        val link = readLink(parser)
                        if (link != null) {
                            links.add(link)
                            if (link.isNext) nextLink = link.href
                            if (link.isSearch) searchLink = link.href
                        }
                    }
                    parser.namespace == ATOM_NS && parser.name == "entry" ->
                        readEntry(parser)?.let { entries.add(it) }
                }
            }
            parser.next()
        }

        return OpdsFeed(
            title = title.ifBlank { "Untitled" },
            entries = entries,
            links = links,
            nextLink = nextLink,
            searchLink = searchLink
        )
    }

    private fun readEntry(parser: XmlPullParser): OpdsEntry? {
        var title = ""
        var author: String? = null
        var summary: String? = null
        var thumbnailUrl: String? = null
        var updated: String? = null
        val links = mutableListOf<OpdsLink>()

        val depth = parser.depth
        parser.next()
        while (parser.depth > depth) {
            if (parser.eventType == XmlPullParser.START_TAG) {
                when {
                    parser.namespace == ATOM_NS && parser.name == "title" ->
                        title = readText(parser, "title")
                    parser.namespace == ATOM_NS && parser.name == "author" ->
                        author = readAuthorName(parser)
                    parser.namespace == ATOM_NS && parser.name == "summary" ->
                        summary = readText(parser, "summary")
                    parser.namespace == ATOM_NS && parser.name == "content" ->
                        if (summary.isNullOrBlank()) summary = readText(parser, "content")
                    parser.namespace == ATOM_NS && parser.name == "updated" ->
                        updated = readText(parser, "updated")
                    parser.namespace == ATOM_NS && parser.name == "link" -> {
                        val link = readLink(parser)
                        if (link != null) {
                            links.add(link)
                            if (link.isThumbnail && thumbnailUrl == null) {
                                thumbnailUrl = link.href
                            }
                        }
                    }
                }
            }
            parser.next()
        }

        return OpdsEntry(
            title = title.ifBlank { return null },
            author = author,
            summary = summary,
            thumbnailUrl = thumbnailUrl,
            updated = updated,
            links = links
        )
    }

    private fun readLink(parser: XmlPullParser): OpdsLink? {
        val href = parser.getAttributeValue(null, "href") ?: return null
        val rel = parser.getAttributeValue(null, "rel") ?: "alternate"
        val type = parser.getAttributeValue(null, "type")
        val title = parser.getAttributeValue(null, "title")
        return OpdsLink(href = href, rel = rel, type = type, title = title)
    }

    private fun readAuthorName(parser: XmlPullParser): String? {
        val depth = parser.depth
        parser.next()
        var name: String? = null
        while (parser.depth > depth) {
            if (parser.eventType == XmlPullParser.START_TAG &&
                parser.namespace == ATOM_NS && parser.name == "name"
            ) {
                name = readText(parser, "name")
            }
            parser.next()
        }
        return name
    }

    private fun readText(parser: XmlPullParser, tag: String): String {
        val depth = parser.depth
        parser.next()
        val sb = StringBuilder()
        while (parser.depth > depth) {
            if (parser.eventType == XmlPullParser.TEXT) {
                sb.append(parser.text)
            }
            parser.next()
        }
        return sb.toString().trim()
    }
}
