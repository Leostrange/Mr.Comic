package io.leostrange.mrcomic.feature.library

import androidx.media3.common.Metadata
import androidx.media3.extractor.metadata.flac.PictureFrame
import androidx.media3.extractor.metadata.id3.ApicFrame
import io.leostrange.mrcomic.core.model.AudioChapter
import io.leostrange.mrcomic.core.model.Audiobook
import org.junit.Assert.assertEquals
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.io.ByteArrayInputStream
import java.io.File

class AudiobookCoverResolverTest {

    @Test
    fun folderAudiobookUsesAllChapterUrisAsCoverCandidates() {
        val audiobook = Audiobook(
            title = "Folder book",
            sourcePath = "content://tree/audiobook-folder",
            sourceIsFolder = true,
            chapters = listOf(
                AudioChapter(index = 0, title = "01", uri = "content://tree/audiobook-folder/01.mp3"),
                AudioChapter(index = 1, title = "02", uri = "content://tree/audiobook-folder/02.mp3")
            )
        )

        assertEquals(
            listOf(
                "content://tree/audiobook-folder/01.mp3",
                "content://tree/audiobook-folder/02.mp3"
            ),
            audiobookCoverSourceCandidates(audiobook)
        )
    }

    @Test
    fun folderAudiobookSamplesMoreChaptersForEmbeddedCovers() {
        val audiobook = Audiobook(
            title = "Long folder book",
            sourcePath = "content://tree/audiobook-folder",
            sourceIsFolder = true,
            chapters = (0..5).map { index ->
                AudioChapter(
                    index = index,
                    title = "Chapter $index",
                    uri = "content://tree/audiobook-folder/$index.mp3"
                )
            }
        )

        assertEquals(
            listOf(
                "content://tree/audiobook-folder/0.mp3",
                "content://tree/audiobook-folder/1.mp3",
                "content://tree/audiobook-folder/2.mp3",
                "content://tree/audiobook-folder/3.mp3",
                "content://tree/audiobook-folder/4.mp3",
                "content://tree/audiobook-folder/5.mp3"
            ),
            audiobookCoverSourceCandidates(audiobook)
        )
    }

    @Test
    fun standaloneAudiobookPrefersPrimarySourceBeforeChapterUri() {
        val audiobook = Audiobook(
            title = "Single",
            sourcePath = "/storage/emulated/0/Books/single.mp3",
            sourceIsFolder = false,
            chapters = listOf(
                AudioChapter(index = 0, title = "Single", uri = "content://provider/single.mp3")
            )
        )

        assertEquals(
            listOf(
                "/storage/emulated/0/Books/single.mp3",
                "content://provider/single.mp3"
            ),
            audiobookCoverSourceCandidates(audiobook)
        )
    }

    @Test
    fun folderAudiobookGeneratesFolderSidecarCoverCandidates() {
        val audiobook = Audiobook(
            title = "Folder book",
            sourcePath = "content://tree/library/document/audiobook-folder",
            sourceIsFolder = true,
            chapters = listOf(
                AudioChapter(
                    index = 0,
                    title = "01",
                    uri = "content://tree/library/document/audiobook-folder/01.mp3"
                )
            )
        )

        assertEquals(
            listOf(
                "content://tree/library/document/audiobook-folder/cover.jpg",
                "content://tree/library/document/audiobook-folder/cover.jpeg",
                "content://tree/library/document/audiobook-folder/cover.png",
                "content://tree/library/document/audiobook-folder/cover.webp",
                "content://tree/library/document/audiobook-folder/folder.jpg",
                "content://tree/library/document/audiobook-folder/folder.jpeg",
                "content://tree/library/document/audiobook-folder/folder.png",
                "content://tree/library/document/audiobook-folder/folder.webp"
            ),
            audiobookSidecarCoverCandidates(audiobook)
        )
    }

    @Test
    fun standaloneAudiobookIncludesSiblingAndFolderSidecarCandidates() {
        val audiobook = Audiobook(
            title = "Single",
            sourcePath = "/storage/emulated/0/Books/single.mp3",
            sourceIsFolder = false,
            chapters = emptyList()
        )

        assertEquals(
            listOf(
                "/storage/emulated/0/Books/single.jpg",
                "/storage/emulated/0/Books/single.jpeg",
                "/storage/emulated/0/Books/single.png",
                "/storage/emulated/0/Books/single.webp",
                "/storage/emulated/0/Books/cover.jpg",
                "/storage/emulated/0/Books/cover.jpeg",
                "/storage/emulated/0/Books/cover.png",
                "/storage/emulated/0/Books/cover.webp",
                "/storage/emulated/0/Books/folder.jpg",
                "/storage/emulated/0/Books/folder.jpeg",
                "/storage/emulated/0/Books/folder.png",
                "/storage/emulated/0/Books/folder.webp"
            ),
            audiobookSidecarCoverCandidates(audiobook)
        )
    }

    @Test
    fun plainFilePathResolvesAsFilePathSource() {
        val source = resolveAudiobookCoverSource("/storage/emulated/0/Books/single.mp3")

        assertNotNull(source)
        assertEquals(AudiobookCoverResolver.CoverSourceKind.FILE_PATH, source?.kind)
        assertEquals("/storage/emulated/0/Books/single.mp3", source?.value)
    }

    @Test
    fun windowsDrivePathResolvesAsFilePathSource() {
        val source = resolveAudiobookCoverSource("C:\\Books\\single.mp3")

        assertNotNull(source)
        assertEquals(AudiobookCoverResolver.CoverSourceKind.FILE_PATH, source?.kind)
        assertEquals("C:\\Books\\single.mp3", source?.value)
    }

    @Test
    fun contentUriResolvesAsUriSource() {
        val source = resolveAudiobookCoverSource("content://provider/single.mp3")

        assertNotNull(source)
        assertEquals(AudiobookCoverResolver.CoverSourceKind.URI, source?.kind)
        assertEquals("content://provider/single.mp3", source?.value)
    }

    @Test
    fun fileUriResolvesToUnderlyingFilePath() {
        val source = resolveAudiobookCoverSource("file:///storage/emulated/0/Books/single.mp3")

        assertNotNull(source)
        assertEquals(AudiobookCoverResolver.CoverSourceKind.FILE_PATH, source?.kind)
        assertEquals("/storage/emulated/0/Books/single.mp3", source?.value)
    }

    @Test
    fun usableCoverValueRejectsMissingFilePaths() {
        assertFalse(
            isUsableCoverUriValue("/missing/cover.jpg") { false }
        )
    }

    @Test
    fun usableCoverValueAcceptsExistingFilePaths() {
        assertTrue(
            isUsableCoverUriValue("/covers/cover.jpg") { it == "/covers/cover.jpg" }
        )
    }

    @Test
    fun standaloneAudiobookKeepsEmbeddedCoverSourceAheadOfFolderHeuristics() {
        val audiobook = Audiobook(
            title = "Single",
            sourcePath = "content://provider/single.mp3",
            sourceIsFolder = false,
            chapters = listOf(
                AudioChapter(index = 0, title = "Single", uri = "content://provider/single.mp3")
            )
        )

        val candidates = audiobookCoverSourceCandidates(audiobook)

        assertEquals(listOf("content://provider/single.mp3"), candidates)
        assertFalse(audiobook.sourceIsFolder)
    }

    @Test
    fun metadataExtractorReturnsApicFrameBytes() {
        val bytes = byteArrayOf(0x01, 0x02, 0x03)
        val metadata = Metadata(
            ApicFrame("image/jpeg", "cover", 3, bytes)
        )

        assertArrayEquals(bytes, extractArtworkBytesFromMetadata(metadata))
    }

    @Test
    fun metadataExtractorReturnsFlacPictureBytes() {
        val bytes = byteArrayOf(0x0A, 0x0B, 0x0C)
        val metadata = Metadata(
            PictureFrame(3, "image/png", "cover", 600, 600, 24, 0, bytes)
        )

        assertArrayEquals(bytes, extractArtworkBytesFromMetadata(metadata))
    }

    @Test
    fun metadataExtractorReturnsArtworkFromFirstSupportedEntry() {
        val bytes = byteArrayOf(0x11, 0x22, 0x33)
        val metadata = Metadata(
            ApicFrame("image/jpeg", "cover", 3, bytes)
        )

        assertArrayEquals(bytes, extractArtworkBytesFromMetadata(metadata))
    }

    @Test
    fun metadataExtractorReturnsNullWhenArtworkMissing() {
        assertNull(extractArtworkBytesFromMetadata(null))
    }

    @Test
    fun id3FallbackExtractorReturnsApicArtworkBytes() {
        val image = byteArrayOf(
            0xFF.toByte(),
            0xD8.toByte(),
            0x11,
            0x22,
            0xFF.toByte(),
            0xD9.toByte()
        )
        val framePayload = byteArrayOf(0) +
            "image/jpeg".toByteArray(Charsets.ISO_8859_1) +
            byteArrayOf(0, 3, 0) +
            image
        val frame = "APIC".toByteArray(Charsets.ISO_8859_1) +
            int32Bytes(framePayload.size) +
            byteArrayOf(0, 0) +
            framePayload
        val tag = "ID3".toByteArray(Charsets.ISO_8859_1) +
            byteArrayOf(3, 0, 0) +
            synchsafeBytes(frame.size) +
            frame

        assertArrayEquals(image, extractArtworkBytesFromId3v2(ByteArrayInputStream(tag)))
    }

    @Test
    fun id3FallbackExtractorAcceptsWebpApicArtworkBytes() {
        val image = "RIFF".toByteArray(Charsets.ISO_8859_1) +
            byteArrayOf(0x20, 0x00, 0x00, 0x00) +
            "WEBP".toByteArray(Charsets.ISO_8859_1) +
            "VP8 ".toByteArray(Charsets.ISO_8859_1)
        val framePayload = byteArrayOf(0) +
            "image/webp".toByteArray(Charsets.ISO_8859_1) +
            byteArrayOf(0, 3, 0) +
            image
        val frame = "APIC".toByteArray(Charsets.ISO_8859_1) +
            int32Bytes(framePayload.size) +
            byteArrayOf(0, 0) +
            framePayload
        val tag = "ID3".toByteArray(Charsets.ISO_8859_1) +
            byteArrayOf(3, 0, 0) +
            synchsafeBytes(frame.size) +
            frame

        assertArrayEquals(image, extractArtworkBytesFromId3v2(ByteArrayInputStream(tag)))
    }

    @Test
    fun realJdRasskazyMp3EmbeddedArtworkIsReadableByFallback() {
        val sample = File("../../reference/formats/samples/ЖД-рассказы.mp3").canonicalFile
        assumeTrue("Sample MP3 is not available in this checkout", sample.isFile)

        val artwork = sample.inputStream().use(::extractArtworkBytesFromId3v2)

        assertNotNull(artwork)
        assertTrue("Expected embedded cover image bytes", artwork!!.size > 100_000)
        assertTrue("Expected JPEG artwork", artwork[0] == 0xFF.toByte() && artwork[1] == 0xD8.toByte())
    }

    @Test
    fun folderAudiobooksAllowTempFileFallbackForEmbeddedArtExtraction() {
        val audiobook = Audiobook(
            title = "Folder book",
            sourcePath = "content://tree/folder-book",
            sourceIsFolder = true,
            chapters = listOf(
                AudioChapter(index = 0, title = "01", uri = "content://tree/folder-book/01.mp3"),
                AudioChapter(index = 1, title = "02", uri = "content://tree/folder-book/02.mp3")
            )
        )

        assertTrue(shouldAllowAudiobookTempCoverFallback(audiobook))
    }

    @Test
    fun singleContentUriAudiobookAllowsTempFileFallbackForEmbeddedArtExtraction() {
        val audiobook = Audiobook(
            title = "Single content audiobook",
            sourcePath = "content://provider/JD-rasskazy.mp3",
            sourceIsFolder = false,
            chapters = listOf(
                AudioChapter(index = 0, title = "JD-rasskazy", uri = "content://provider/JD-rasskazy.mp3")
            )
        )

        assertTrue(shouldAllowAudiobookTempCoverFallback(audiobook))
    }

    @Test
    fun multiChapterStandaloneAudiobookKeepsTempFallbackDisabled() {
        val audiobook = Audiobook(
            title = "Split standalone",
            sourcePath = "content://provider/book.m4b",
            sourceIsFolder = false,
            chapters = listOf(
                AudioChapter(index = 0, title = "01", uri = "content://provider/book-01.m4a"),
                AudioChapter(index = 1, title = "02", uri = "content://provider/book-02.m4a")
            )
        )

        assertFalse(shouldAllowAudiobookTempCoverFallback(audiobook))
    }

    private fun int32Bytes(value: Int): ByteArray = byteArrayOf(
        ((value ushr 24) and 0xFF).toByte(),
        ((value ushr 16) and 0xFF).toByte(),
        ((value ushr 8) and 0xFF).toByte(),
        (value and 0xFF).toByte()
    )

    private fun synchsafeBytes(value: Int): ByteArray = byteArrayOf(
        ((value ushr 21) and 0x7F).toByte(),
        ((value ushr 14) and 0x7F).toByte(),
        ((value ushr 7) and 0x7F).toByte(),
        (value and 0x7F).toByte()
    )
}
