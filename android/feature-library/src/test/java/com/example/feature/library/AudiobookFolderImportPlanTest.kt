package com.example.feature.library

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class AudiobookFolderImportPlanTest {

    @Test
    fun mixedFolderKeepsRootAudiobookWhenFolderGroupingIsEnabled() {
        val root = AudiobookImportNode(
            name = "Library",
            uri = "content://tree/library",
            isDirectory = true,
            children = listOf(
                AudiobookImportNode(
                    name = "story.mp3",
                    uri = "content://tree/library/document/story.mp3",
                    isDirectory = false,
                    mimeType = "audio/mpeg"
                ),
                AudiobookImportNode(
                    name = "comic.cbz",
                    uri = "content://tree/library/document/comic.cbz",
                    isDirectory = false,
                    mimeType = "application/zip"
                )
            )
        )

        val imports = planAudiobookImports(root)

        assertEquals(1, imports.size)
        assertEquals("Library", imports.first().title)
        assertTrue(imports.first().sourceIsFolder)
        assertEquals(1, imports.first().chapters.size)
        assertEquals("content://tree/library/document/story.mp3", imports.first().chapters.first().uri)
    }

    @Test
    fun pureAudiobookFolderStaysAsSingleFolderImport() {
        val root = AudiobookImportNode(
            name = "Novel",
            uri = "content://tree/novel",
            isDirectory = true,
            children = listOf(
                AudiobookImportNode(
                    name = "cover.jpg",
                    uri = "content://tree/novel/document/cover.jpg",
                    isDirectory = false,
                    mimeType = "image/jpeg"
                ),
                AudiobookImportNode(
                    name = "01.mp3",
                    uri = "content://tree/novel/document/01.mp3",
                    isDirectory = false,
                    mimeType = "audio/mpeg"
                ),
                AudiobookImportNode(
                    name = "02.mp3",
                    uri = "content://tree/novel/document/02.mp3",
                    isDirectory = false,
                    mimeType = "audio/mpeg"
                )
            )
        )

        val imports = planAudiobookImports(root)

        assertEquals(1, imports.size)
        assertTrue(imports.first().sourceIsFolder)
        assertEquals("Novel", imports.first().title)
        assertEquals(2, imports.first().chapters.size)
        assertEquals("content://tree/novel/document/cover.jpg", imports.first().coverUri)
    }

    @Test
    fun nestedAudiobookFolderIsImportedSeparatelyFromParentLibraryTree() {
        val root = AudiobookImportNode(
            name = "Library",
            uri = "content://tree/library",
            isDirectory = true,
            children = listOf(
                AudiobookImportNode(
                    name = "Audiobook",
                    uri = "content://tree/library/document/audiobook",
                    isDirectory = true,
                    children = listOf(
                        AudiobookImportNode(
                            name = "01.mp3",
                            uri = "content://tree/library/document/audiobook/01.mp3",
                            isDirectory = false,
                            mimeType = "audio/mpeg"
                        )
                    )
                ),
                AudiobookImportNode(
                    name = "comic.cbz",
                    uri = "content://tree/library/document/comic.cbz",
                    isDirectory = false,
                    mimeType = "application/zip"
                )
            )
        )

        val imports = planAudiobookImports(root)

        assertEquals(1, imports.size)
        assertTrue(imports.first().sourceIsFolder)
        assertEquals("Audiobook", imports.first().title)
    }

    @Test
    fun mixedLibraryTreeKeepsParentBooksFolderAndSplitsAudiobookFolderFromStandaloneFile() {
        val root = AudiobookImportNode(
            name = "Library",
            uri = "content://tree/library",
            isDirectory = true,
            children = listOf(
                AudiobookImportNode(
                    name = "Audiobook Folder",
                    uri = "content://tree/library/document/audiobook-folder",
                    isDirectory = true,
                    children = listOf(
                        AudiobookImportNode(
                            name = "cover.jpg",
                            uri = "content://tree/library/document/audiobook-folder/cover.jpg",
                            isDirectory = false,
                            mimeType = "image/jpeg"
                        ),
                        AudiobookImportNode(
                            name = "01.mp3",
                            uri = "content://tree/library/document/audiobook-folder/01.mp3",
                            isDirectory = false,
                            mimeType = "audio/mpeg"
                        )
                    )
                ),
                AudiobookImportNode(
                    name = "Single Track.mp3",
                    uri = "content://tree/library/document/single-track.mp3",
                    isDirectory = false,
                    mimeType = "audio/mpeg"
                ),
                AudiobookImportNode(
                    name = "book.epub",
                    uri = "content://tree/library/document/book.epub",
                    isDirectory = false,
                    mimeType = "application/epub+zip"
                ),
                AudiobookImportNode(
                    name = "comic.cbz",
                    uri = "content://tree/library/document/comic.cbz",
                    isDirectory = false,
                    mimeType = "application/zip"
                )
            )
        )

        val imports = planAudiobookImports(root)

        assertEquals(2, imports.size)
        assertEquals("Library", imports.first().title)
        assertTrue(imports.first().sourceIsFolder)
        assertEquals(1, imports.first().chapters.size)
        assertEquals("Audiobook Folder", imports.last().title)
        assertTrue(imports.last().sourceIsFolder)
        assertEquals(1, imports.last().chapters.size)
    }

    @Test
    fun nestedMixedAudiobookFolderStaysFolderImportWhenFolderGroupingIsEnabled() {
        val root = AudiobookImportNode(
            name = "Library",
            uri = "content://tree/library",
            isDirectory = true,
            children = listOf(
                AudiobookImportNode(
                    name = "Audiobook Folder",
                    uri = "content://tree/library/document/audiobook-folder",
                    isDirectory = true,
                    children = listOf(
                        AudiobookImportNode(
                            name = "cover.jpg",
                            uri = "content://tree/library/document/audiobook-folder/cover.jpg",
                            isDirectory = false,
                            mimeType = "image/jpeg"
                        ),
                        AudiobookImportNode(
                            name = "01.mp3",
                            uri = "content://tree/library/document/audiobook-folder/01.mp3",
                            isDirectory = false,
                            mimeType = "audio/mpeg"
                        ),
                        AudiobookImportNode(
                            name = "booklet.pdf",
                            uri = "content://tree/library/document/audiobook-folder/booklet.pdf",
                            isDirectory = false,
                            mimeType = "application/pdf"
                        )
                    )
                )
            )
        )

        val imports = planAudiobookImports(
            root = root,
            preferFolderImports = true
        )

        assertEquals(1, imports.size)
        assertTrue(imports.first().sourceIsFolder)
        assertEquals("Audiobook Folder", imports.first().title)
        assertEquals(1, imports.first().chapters.size)
    }

    @Test
    fun pureAudiobookFolderCanSplitIntoFilesWhenFolderGroupingIsOff() {
        val root = AudiobookImportNode(
            name = "Novel",
            uri = "content://tree/novel",
            isDirectory = true,
            children = listOf(
                AudiobookImportNode(
                    name = "cover.jpg",
                    uri = "content://tree/novel/document/cover.jpg",
                    isDirectory = false,
                    mimeType = "image/jpeg"
                ),
                AudiobookImportNode(
                    name = "01.mp3",
                    uri = "content://tree/novel/document/01.mp3",
                    isDirectory = false,
                    mimeType = "audio/mpeg"
                ),
                AudiobookImportNode(
                    name = "02.mp3",
                    uri = "content://tree/novel/document/02.mp3",
                    isDirectory = false,
                    mimeType = "audio/mpeg"
                )
            )
        )

        val imports = planAudiobookImports(
            root = root,
            preferFolderImports = false
        )

        assertEquals(2, imports.size)
        assertFalse(imports[0].sourceIsFolder)
        assertFalse(imports[1].sourceIsFolder)
        assertEquals("01", imports[0].title)
        assertEquals("02", imports[1].title)
        assertEquals("content://tree/novel/document/cover.jpg", imports[0].coverUri)
        assertEquals("content://tree/novel/document/cover.jpg", imports[1].coverUri)
    }
}
