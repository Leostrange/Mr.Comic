package io.leostrange.mrcomic.engine.formats.fb2

import org.jsoup.parser.Parser
import java.io.InputStream
import java.nio.charset.Charset

/**
 * FB2 byte-stream preprocessing: charset detection, entity decoding, and
 * streaming reader creation. Extracted from Fb2FormatReader.kt.
 */
internal object Fb2Preprocessor {
    private val xmlEntities = setOf("amp", "lt", "gt", "apos", "quot")
    private const val MAX_ENTITY_LENGTH = 64
    private const val PUSHBACK_BUFFER_SIZE = 128

    fun detectCharset(peekedBytes: ByteArray): Charset {
        val peek = peekedBytes.toString(Charsets.ISO_8859_1)
        val declaredEnc = Regex("""encoding\s*=\s*["']([^"']+)["']""", RegexOption.IGNORE_CASE)
            .find(peek)?.groupValues?.get(1) ?: "UTF-8"
        return try {
            Charset.forName(declaredEnc)
        } catch (_: Exception) {
            Charsets.UTF_8
        }
    }

    fun preprocess(bytes: ByteArray): ByteArray {
        val charset = detectCharset(bytes.take(1024).toByteArray())
        val text = createStreamingReader(bytes.inputStream(), charset).use { reader ->
            reader.readText()
        }.replaceFirst(
            Regex("""encoding\s*=\s*["'][^"']+["']""", RegexOption.IGNORE_CASE),
            """encoding="UTF-8""""
        )
        return text.toByteArray(Charsets.UTF_8)
    }

    fun createStreamingReader(inputStream: InputStream, charset: Charset): java.io.Reader {
        val baseReader = inputStream.reader(charset)
        return object : java.io.PushbackReader(baseReader, PUSHBACK_BUFFER_SIZE) {
            private val entityBuf = StringBuilder()

            override fun read(): Int {
                val c = super.read()
                if (c == '&'.code) {
                    entityBuf.setLength(0)
                    var next = super.read()
                    while (next != -1 && next != ';'.code && next != '&'.code && entityBuf.length < MAX_ENTITY_LENGTH) {
                        entityBuf.append(next.toChar())
                        next = super.read()
                    }

                    if (next == ';'.code) {
                        val entity = entityBuf.toString()
                        val replacement = decodeHtmlNamedEntity(entity)
                        if (replacement != null) {
                            for (i in replacement.length - 1 downTo 1) unread(replacement[i].code)
                            return replacement[0].code
                        } else if (entity.startsWith("#")) {
                            val full = "&$entity;"
                            for (i in full.length - 1 downTo 1) unread(full[i].code)
                            return '&'.code
                        } else if (entity in xmlEntities) {
                            val full = "&$entity;"
                            for (i in full.length - 1 downTo 1) unread(full[i].code)
                            return '&'.code
                        } else {
                            val full = "amp;$entity;"
                            for (i in full.length - 1 downTo 0) unread(full[i].code)
                            return '&'.code
                        }
                    } else {
                        if (next != -1) unread(next)
                        val full = "amp;" + entityBuf.toString()
                        for (i in full.length - 1 downTo 0) unread(full[i].code)
                        return '&'.code
                    }
                }
                return c
            }

            override fun read(cbuf: CharArray, off: Int, len: Int): Int {
                if (len <= 0) return 0
                var count = 0
                while (count < len) {
                    val c = read()
                    if (c == -1) break
                    cbuf[off + count] = c.toChar()
                    count++
                }
                return if (count == 0) -1 else count
            }
        }
    }

    private fun decodeHtmlNamedEntity(entity: String): String? {
        if (entity.isEmpty() || entity.startsWith("#") || entity in xmlEntities) return null
        val encoded = "&$entity;"
        val decoded = Parser.unescapeEntities(encoded, false)
        return decoded.takeIf { it != encoded && it.isNotEmpty() && '&' !in it }
    }
}
