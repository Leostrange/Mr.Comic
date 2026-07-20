package io.leostrange.mrcomic.engine.formats.text

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.charset.Charset

/**
 * Regression tests for [decodeTextBytes] mojibake repair stability.
 *
 * Two defects lived in the decoding path:
 *  1. repairCommonTextMojibake was applied twice on the single-byte-charset path
 *     (once inside the bestResult branch at score >= 50, once unconditionally on the
 *     returned value). A second pass over already-repaired text could pick a different
 *     candidate and corrupt valid text.
 *  2. Double-encoded Cyrillic (valid UTF-8 but mojibake) was not repaired.
 *
 * These tests pin single-byte Cyrillic recovery, UTF-8 Latin-supplement integrity,
 * double-encoded recovery, and decoding idempotency.
 */
class TextDecodeMojibakeTest {

    @Test
    fun windows1251CyrillicRecoversCleanlyViaSingleBytePath() {
        // windows-1251 bytes are NOT valid UTF-8, so this exercises the single-byte
        // scoring path (bestResult) where the double repair() call lived.
        val original = "Это проверка кодировки кириллицей."
        val bytes = original.toByteArray(Charset.forName("windows-1251"))

        val decoded = decodeTextBytes(bytes)

        assertEquals(original, decoded)
        assertTrue("No replacement glyphs in recovered text", '\uFFFD' !in decoded)
    }

    @Test
    fun repairIsIdempotentForSingleByteCyrillic() {
        // Idempotency: re-decoding the recovered string's UTF-8 bytes is stable.
        val original = "Снова проверка текста."
        val bytes = original.toByteArray(Charset.forName("windows-1251"))

        val firstDecode = decodeTextBytes(bytes)
        val reDecoded = decodeTextBytes(firstDecode.toByteArray(Charsets.UTF_8))

        assertEquals(firstDecode, reDecoded)
    }

    @Test
    fun validUtf8IsReturnedUntouchedEvenWithLatinSupplement() {
        // Text with a few Latin-supplement chars must survive intact: a stray second
        // repair pass used to risk mangling legitimately accented Latin text.
        val original = "Café — naïve façade. Resumé déjà vu."
        val bytes = original.toByteArray(Charsets.UTF_8)

        val decoded = decodeTextBytes(bytes)

        assertEquals(original, decoded)
    }

    @Test
    fun doubleEncodedCyrillicRecoversToOriginal() {
        // Real-world double encoding: Cyrillic → UTF-8 → misread as windows-1252 →
        // re-encoded to UTF-8. The result is valid UTF-8 (so it hits the isValidUtf8
        // branch) but is mojibake and should be repaired back to the original.
        val original = "Привет, мир"
        val doubleEncoded = original
            .toByteArray(Charsets.UTF_8)
            .toString(Charset.forName("windows-1252"))
            .toByteArray(Charsets.UTF_8)

        val decoded = decodeTextBytes(doubleEncoded)

        assertEquals(original, decoded)
    }
}
