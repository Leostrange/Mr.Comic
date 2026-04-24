package com.example.feature.library

import androidx.media3.common.Metadata
import androidx.media3.extractor.metadata.flac.PictureFrame
import androidx.media3.extractor.metadata.id3.ApicFrame
import com.example.core.model.AudioChapter
import com.example.core.model.Audiobook
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

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
    fun folderAudiobookLimitsCoverSamplingToFirstFewChapters() {
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
                "content://tree/audiobook-folder/2.mp3"
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
}
