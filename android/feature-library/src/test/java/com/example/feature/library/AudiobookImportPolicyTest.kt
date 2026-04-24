package com.example.feature.library

import com.example.core.model.AudioChapter
import com.example.core.model.Audiobook
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class AudiobookImportPolicyTest {

    @Test
    fun resolveAudiobookImport_skipsSingleFileWhenCoveredByFolderAudiobook() {
        val existing = listOf(
            Audiobook(
                id = "folder-id",
                title = "Book",
                sourcePath = "content://tree/book",
                sourceIsFolder = true,
                chapters = listOf(
                    AudioChapter(index = 0, title = "Chapter 1", uri = "content://tree/book/document/ch1.mp3")
                )
            )
        )

        val imported = Audiobook(
            id = "file-id",
            title = "Chapter 1",
            sourcePath = "content://tree/book/document/ch1.mp3",
            sourceIsFolder = false,
            chapters = listOf(
                AudioChapter(index = 0, title = "Chapter 1", uri = "content://tree/book/document/ch1.mp3")
            )
        )

        val resolution = resolveAudiobookImport(existing, imported)

        assertNull(resolution.audiobookToUpsert)
        assertEquals(emptyList<String>(), resolution.duplicateIdsToDelete)
    }

    @Test
    fun resolveAudiobookImport_folderImportDeletesContainedSingleFileDuplicates() {
        val existing = listOf(
            Audiobook(
                id = "single-id",
                title = "Book",
                sourcePath = "content://tree/book/document/ch1.mp3",
                sourceIsFolder = false,
                chapters = listOf(
                    AudioChapter(index = 0, title = "Chapter 1", uri = "content://tree/book/document/ch1.mp3")
                )
            )
        )

        val imported = Audiobook(
            id = "folder-id",
            title = "Book",
            sourcePath = "content://tree/book",
            sourceIsFolder = true,
            chapters = listOf(
                AudioChapter(index = 0, title = "Chapter 1", uri = "content://tree/book/document/ch1.mp3"),
                AudioChapter(index = 1, title = "Chapter 2", uri = "content://tree/book/document/ch2.mp3")
            )
        )

        val resolution = resolveAudiobookImport(existing, imported)

        assertEquals(imported, resolution.audiobookToUpsert)
        assertEquals(listOf("single-id"), resolution.duplicateIdsToDelete)
    }

    @Test
    fun resolveAudiobookImport_reusesExistingIdForSameSourcePath() {
        val existing = listOf(
            Audiobook(
                id = "existing-id",
                title = "Book",
                sourcePath = "content://tree/book",
                sourceIsFolder = true,
                chapters = listOf(
                    AudioChapter(index = 0, title = "Chapter 1", uri = "content://tree/book/document/ch1.mp3")
                ),
                lastChapterIndex = 2,
                lastPositionMs = 1234L,
                speed = 1.25f,
                addedAt = 99L
            )
        )

        val imported = Audiobook(
            id = "new-id",
            title = "Book",
            sourcePath = "content://tree/book",
            sourceIsFolder = true,
            chapters = listOf(
                AudioChapter(index = 0, title = "Chapter 1", uri = "content://tree/book/document/ch1.mp3"),
                AudioChapter(index = 1, title = "Chapter 2", uri = "content://tree/book/document/ch2.mp3")
            )
        )

        val resolution = resolveAudiobookImport(existing, imported)

        assertEquals("existing-id", resolution.audiobookToUpsert?.id)
        assertEquals(1, resolution.audiobookToUpsert?.lastChapterIndex)
        assertEquals(1234L, resolution.audiobookToUpsert?.lastPositionMs)
        assertEquals(1.25f, resolution.audiobookToUpsert?.speed)
        assertEquals(99L, resolution.audiobookToUpsert?.addedAt)
    }
}
