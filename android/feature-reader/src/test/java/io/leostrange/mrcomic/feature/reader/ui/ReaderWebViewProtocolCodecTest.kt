package io.leostrange.mrcomic.feature.reader.ui

import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderWebViewProtocolCodecTest {

    @Test
    fun freeScrollPositionDecodesCharacterAnchorWithProgressionFallback() {
        val raw = JSONObject.quote(
            """{"characterOffset":1842,"progression":0.125}"""
        )

        val target = ReaderWebViewProtocolCodec.decodeRestoreTarget(raw)

        assertEquals(1842, target?.characterOffset)
        assertEquals(0.125, target?.progression ?: -1.0, 0.0001)
    }

    @Test
    fun commandRoundTripPreservesGenerationAndRestoreCoordinates() {
        val command = ReaderWebViewCommand.Restore(
            generation = 12L,
            target = ReaderWebViewRestoreTarget(
                fragment = "chapter-2",
                sectionIndex = 3,
                characterOffset = 450,
                progression = 0.42
            )
        )

        val encoded = ReaderWebViewProtocolCodec.encodeCommand(command)
        val json = JSONObject(encoded)

        assertEquals(1, json.getInt("version"))
        assertEquals("restore", json.getString("type"))
        assertEquals(12L, json.getLong("generation"))
        assertEquals("chapter-2", json.getJSONObject("payload").getString("fragment"))
    }

    @Test
    fun doubleEncodedLayoutEventDecodesToTypedMetrics() {
        val payload = JSONObject()
            .put("version", 1)
            .put("type", "layoutReady")
            .put("generation", 7L)
            .put(
                "payload",
                JSONObject()
                    .put("handled", true)
                    .put("pageIndex", 2)
                    .put("pageCount", 8)
                    .put("characterOffset", 900)
                    .put("clipHeight", 720)
                    .put("usableHeight", 680)
            )

        val result = ReaderWebViewProtocolCodec.decodeEvent(JSONObject.quote(payload.toString()))

        assertTrue(result is ReaderWebViewProtocolDecodeResult.Success)
        val event = (result as ReaderWebViewProtocolDecodeResult.Success).event as ReaderWebViewEvent.LayoutReady
        assertEquals(7L, event.generation)
        assertEquals(8, event.metrics.pageCount)
        assertEquals(900, event.metrics.characterOffset)
    }

    @Test
    fun malformedUnknownVersionAndMissingGenerationReturnFailures() {
        val malformed = ReaderWebViewProtocolCodec.decodeEvent("not-json")
        val unknownVersion = ReaderWebViewProtocolCodec.decodeEvent(
            """{"version":2,"type":"committed","generation":1,"payload":{}}"""
        )
        val missingGeneration = ReaderWebViewProtocolCodec.decodeEvent(
            """{"version":1,"type":"committed","payload":{}}"""
        )

        assertTrue(malformed is ReaderWebViewProtocolDecodeResult.Failure)
        assertTrue(unknownVersion is ReaderWebViewProtocolDecodeResult.Failure)
        assertTrue(missingGeneration is ReaderWebViewProtocolDecodeResult.Failure)
    }

    @Test
    fun contentMetricsDistinguishEmptyTextFromVisualContent() {
        val result = ReaderWebViewProtocolCodec.decodeEvent(
            """{"version":1,"type":"contentMeasured","generation":3,"payload":{"text":0,"rawText":0,"images":1,"media":1,"height":600}}"""
        ) as ReaderWebViewProtocolDecodeResult.Success
        val event = result.event as ReaderWebViewEvent.ContentMeasured

        assertFalse(event.metrics.isBlank)
        assertEquals(600, event.metrics.contentHeight)
    }

    @Test
    fun legacyPagedMetricsRemainReadableDuringMigration() {
        val raw = JSONObject.quote(
            """{"handled":true,"pageIndex":1,"pageCount":4,"characterOffset":120,"clipHeight":700,"usableHeight":660}"""
        )

        val metrics = ReaderWebViewProtocolCodec.decodePagedLayoutMetrics(raw)

        assertEquals(4, metrics?.pageCount)
        assertEquals(1, metrics?.pageIndex)
    }

    @Test
    fun sanitizeProgression_rejectsNanInfinitiesAndOutOfRange() {
        assertNull(ReaderWebViewProtocolCodec.sanitizeProgression(Double.NaN))
        assertNull(ReaderWebViewProtocolCodec.sanitizeProgression(Double.POSITIVE_INFINITY))
        assertNull(ReaderWebViewProtocolCodec.sanitizeProgression(Double.NEGATIVE_INFINITY))
        assertNull(ReaderWebViewProtocolCodec.sanitizeProgression(-0.01))
        assertNull(ReaderWebViewProtocolCodec.sanitizeProgression(1.01))
        assertNull(ReaderWebViewProtocolCodec.sanitizeProgression(-1.0))
        assertNull(ReaderWebViewProtocolCodec.sanitizeProgression(null))
        assertEquals(0.0, ReaderWebViewProtocolCodec.sanitizeProgression(0.0)!!, 0.0)
        assertEquals(0.5, ReaderWebViewProtocolCodec.sanitizeProgression(0.5)!!, 0.0)
        assertEquals(1.0, ReaderWebViewProtocolCodec.sanitizeProgression(1.0)!!, 0.0)
    }

    @Test
    fun decodeRestoreTarget_sanitizesTransientProgressionWithoutThrowing() {
        // The WebView emits -1.0 as a "no progression" sentinel and can produce transient
        // out-of-range values while the document is still measuring. These must never throw.
        assertNull(
            ReaderWebViewProtocolCodec.decodeRestoreTarget(
                JSONObject.quote("""{"progression":-1.0}""")
            )
        )
        assertNull(
            ReaderWebViewProtocolCodec.decodeRestoreTarget(
                JSONObject.quote("""{"progression":1.5}""")
            )
        )
        assertNull(
            ReaderWebViewProtocolCodec.decodeRestoreTarget(
                JSONObject.quote("""{"progression":-0.25}""")
            )
        )
    }

    @Test
    fun decodeRestoreTarget_keepsCharacterAnchorWhenProgressionIsSentinel() {
        val target = ReaderWebViewProtocolCodec.decodeRestoreTarget(
            JSONObject.quote("""{"characterOffset":1842,"progression":-1.0}""")
        )

        assertEquals(1842, target?.characterOffset)
        assertNull(target?.progression)
    }

    @Test
    fun decodeRestoreTarget_ignoresMissingSectionSentinelWithoutThrowing() {
        val target = ReaderWebViewProtocolCodec.decodeRestoreTarget(
            JSONObject.quote(
                """{"sectionIndex":-1,"characterOffset":1842,"progression":0.25}"""
            )
        )

        assertNull(target?.sectionIndex)
        assertEquals(1842, target?.characterOffset)
        assertEquals(0.25, target?.progression ?: -1.0, 0.0001)
    }
}
