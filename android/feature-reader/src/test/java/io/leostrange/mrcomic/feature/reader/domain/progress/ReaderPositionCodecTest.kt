package io.leostrange.mrcomic.feature.reader.domain.progress

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * TEXT-01: the structured reader position must round-trip through JSON, reject newer schemas,
 * and degrade legacy single-page records into a coarse fallback (never a precise text position).
 */
class ReaderPositionCodecTest {

    @Test
    fun roundTrip_preservesAllFields() {
        val position = ReaderPosition(
            engineSectionIndex = 12,
            visualPageIndex = 5,
            characterOffset = 1_234,
            domAnchor = "epubcfi(/6/12!/4/2/1:1234)",
            mode = ReadingMode.WEBTOON,
            webtoonScrollFraction = 0.42f,
            updatedAtMillis = 1_700_000_000_000L,
            schemaVersion = ReaderPosition.SCHEMA_VERSION,
        )

        val decoded = ReaderPositionCodec.decode(ReaderPositionCodec.encode(position))

        assertNotNull(decoded)
        assertEquals(12, decoded!!.engineSectionIndex)
        assertEquals(5, decoded.visualPageIndex)
        assertEquals(1_234, decoded.characterOffset)
        assertEquals("epubcfi(/6/12!/4/2/1:1234)", decoded.domAnchor)
        assertEquals(ReadingMode.WEBTOON, decoded.mode)
        assertEquals(0.42f, decoded.webtoonScrollFraction!!, 0.0001f)
        assertEquals(1_700_000_000_000L, decoded.updatedAtMillis)
        assertEquals(ReaderPosition.SCHEMA_VERSION, decoded.schemaVersion)
    }

    @Test
    fun roundTrip_omitsOptionalFieldsWhenNull() {
        val position = ReaderPosition(
            engineSectionIndex = 3,
            visualPageIndex = 0,
            characterOffset = null,
            domAnchor = null,
            mode = ReadingMode.PAGE_LTR,
            webtoonScrollFraction = null,
            updatedAtMillis = 0L,
        )

        val json = ReaderPositionCodec.encode(position)
        val decoded = ReaderPositionCodec.decode(json)

        assertNotNull(decoded)
        assertNull(decoded!!.characterOffset)
        assertNull(decoded.domAnchor)
        assertNull(decoded.webtoonScrollFraction)
        assertEquals(ReadingMode.PAGE_LTR, decoded.mode)
    }

    @Test
    fun decode_rejectsMalformedJson() {
        assertNull(ReaderPositionCodec.decode(null))
        assertNull(ReaderPositionCodec.decode(""))
        assertNull(ReaderPositionCodec.decode("not json at all"))
        assertNull(ReaderPositionCodec.decode("{\"s\":\"nope\"}"))
    }

    @Test
    fun decode_rejectsNewerSchemaVersion() {
        val json = "{\"v\":${ReaderPosition.SCHEMA_VERSION + 1},\"s\":0,\"p\":0,\"m\":\"PAGE_LTR\",\"t\":0}"

        assertNull("A payload from a newer build must never be misread as the current schema", ReaderPositionCodec.decode(json))
    }

    @Test
    fun decode_sanitizesWebtoonFraction() {
        val valid = ReaderPositionCodec.decode("{\"v\":1,\"s\":2,\"p\":0,\"m\":\"WEBTOON\",\"w\":1.2,\"t\":0}")
        assertNotNull(valid)
        assertNull("Out-of-range fraction must be dropped, not clamped", valid!!.webtoonScrollFraction)

        val nan = ReaderPositionCodec.decode("{\"v\":1,\"s\":2,\"p\":0,\"m\":\"WEBTOON\",\"w\":NaN,\"t\":0}")
        assertNull("NaN fraction must be dropped", nan!!.webtoonScrollFraction)

        val ok = ReaderPositionCodec.decode("{\"v\":1,\"s\":2,\"p\":0,\"m\":\"WEBTOON\",\"w\":0.5,\"t\":0}")
        assertEquals(0.5f, ok!!.webtoonScrollFraction!!, 0.0001f)
    }

    @Test
    fun fromLegacy_mapsRawPageAndTagsAsFallback() {
        val legacy = ReaderPositionCodec.fromLegacy(
            currentPage = 15,
            characterOffset = 42,
            mode = ReadingMode.PAGE_LTR,
            updatedAtMillis = 123L,
        )

        // Legacy records never know the sub-page split: both indices are the raw page and the
        // schema version marks it as a coarse fallback.
        assertEquals(15, legacy.engineSectionIndex)
        assertEquals(15, legacy.visualPageIndex)
        assertEquals(42, legacy.characterOffset)
        assertNull(legacy.domAnchor)
        assertEquals(ReaderPosition.LEGACY_SCHEMA_VERSION, legacy.schemaVersion)
        assertEquals(123L, legacy.updatedAtMillis)
    }

    @Test
    fun fromLegacy_negativePageIsCoercedToZero() {
        val legacy = ReaderPositionCodec.fromLegacy(currentPage = -3, characterOffset = 0)

        assertEquals(0, legacy.engineSectionIndex)
        assertEquals(0, legacy.visualPageIndex)
        assertNull(legacy.characterOffset)
    }

    @Test
    fun decode_legacySchemaPayloadStillParses() {
        val legacyJson = "{\"v\":0,\"s\":7,\"p\":7,\"c\":10,\"m\":\"PAGE_RTL\",\"t\":99}"

        val decoded = ReaderPositionCodec.decode(legacyJson)

        assertNotNull(decoded)
        assertEquals(0, decoded!!.schemaVersion)
        assertEquals(7, decoded.engineSectionIndex)
        assertEquals(10, decoded.characterOffset)
        assertEquals(ReadingMode.PAGE_RTL, decoded.mode)
    }

    @Test
    fun encode_neverProducesBlankString() {
        val json = ReaderPositionCodec.encode(
            ReaderPosition(engineSectionIndex = 0, updatedAtMillis = 0L)
        )
        assertFalse(json.isBlank())
        assertTrue(json.contains("\"s\":0"))
    }

    // ── BUG-READER-02: mode must survive roundtrip for all reading modes ──

    @Test
    fun roundTrip_preservesAllReadingModes() {
        // Every reading mode must survive a JSON roundtrip so per-book mode restore works.
        for (mode in ReadingMode.entries) {
            val position = ReaderPosition(
                engineSectionIndex = 5,
                mode = mode,
                schemaVersion = ReaderPosition.SCHEMA_VERSION,
            )
            val decoded = ReaderPositionCodec.decode(ReaderPositionCodec.encode(position))
            assertNotNull("Mode $mode must survive roundtrip", decoded)
            assertEquals("Mode $mode must be preserved", mode, decoded!!.mode)
        }
    }
}
