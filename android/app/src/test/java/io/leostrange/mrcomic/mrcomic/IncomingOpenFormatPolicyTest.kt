package io.leostrange.mrcomic

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class IncomingOpenFormatPolicyTest {

    @Test
    fun resolveExtension_prefersDisplayNameExtension() {
        assertEquals(
            "epub",
            IncomingOpenFormatPolicy.resolveExtension(
                displayName = "Downloaded Book.epub",
                mimeType = "application/octet-stream"
            )
        )
    }

    @Test
    fun resolveExtension_mapsReaderMimeTypeThroughSharedCatalog() {
        assertEquals(
            "djvu",
            IncomingOpenFormatPolicy.resolveExtension(
                displayName = null,
                mimeType = "image/vnd.djvu"
            )
        )
    }

    @Test
    fun resolveExtension_handlesMimeTypeParameters() {
        assertEquals(
            "html",
            IncomingOpenFormatPolicy.resolveExtension(
                displayName = "",
                mimeType = "text/html; charset=utf-8"
            )
        )
    }

    @Test
    fun resolveExtension_doesNotTreatAudioAsReaderFormat() {
        assertNull(
            IncomingOpenFormatPolicy.resolveExtension(
                displayName = null,
                mimeType = "audio/mpeg"
            )
        )
    }
}
