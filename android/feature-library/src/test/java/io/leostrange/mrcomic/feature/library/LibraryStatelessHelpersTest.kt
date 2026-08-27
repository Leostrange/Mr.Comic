package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.SortOrder
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Audit coverage for the stateless helpers in LibraryViewModelHelpers.kt
 * and LibraryViewModelDisplay.kt (4.1). Filtering/Sorting have their own
 * dedicated tests (LibraryViewModelFilteringTest / LibraryViewModelSortingTest).
 */
class LibraryStatelessHelpersTest {

    private fun comic(
        id: String,
        folderId: String? = null,
        format: ComicFormat = ComicFormat.CBZ,
        libraryShelf: String = "",
        documentId: String? = null,
        path: String = "",
        addedDate: Long = 0L,
        lastReadDate: Long? = null,
        fileSize: Long = 0L,
        readingProgress: Float = 0f,
    ) = Comic(
        id = id,
        path = path,
        format = format,
        libraryShelf = libraryShelf,
        documentId = documentId,
        folderId = folderId,
        addedDate = addedDate,
        lastReadDate = lastReadDate,
        fileSize = fileSize,
        readingProgress = readingProgress,
    )

    // --- Helpers.kt ---

    @Test
    fun vmTrMapsLanguagesAndFallsBackToRussian() {
        assertEquals("Библиотека", vmTr(lang = "ru", ru = "Библиотека", en = "Library", ja = "ライブラリ", zh = "图书馆", ko = "라이브러리"))
        assertEquals("Library", vmTr(lang = "en", ru = "Библиотека", en = "Library", ja = "ライブラリ", zh = "图书馆", ko = "라이브러리"))
        assertEquals("라이브러리", vmTr(lang = "ko", ru = "Библиотека", en = "Library", ja = "ライブラリ", zh = "图书馆", ko = "라이브러리"))
        assertEquals("Библиотека", vmTr(lang = "fr", ru = "Библиотека", en = "Library", ja = "ライブラリ", zh = "图书馆", ko = "라이브러리"))
    }

    @Test
    fun localizedErrorAppendsCauseMessageWhenPresent() {
        val message = localizedError(
            lang = "en",
            ru = "Ошибка", en = "Error", ja = "エラー", zh = "错误", ko = "오류",
            cause = IllegalStateException("boom")
        )
        assertEquals("Error: boom", message)
    }

    @Test
    fun localizedErrorOmitsDetailsForBlankCause() {
        val message = localizedError(
            lang = "ru",
            ru = "Ошибка", en = "Error", ja = "エラー", zh = "错误", ko = "오류",
            cause = null
        )
        assertEquals("Ошибка", message)
    }

    @Test
    fun normalizeFolderIdTrimsSlashesAndRejectsBlank() {
        assertEquals("a/b", normalizeFolderId(" /a/b/ "))
        assertNull(normalizeFolderId("  "))
        assertNull(normalizeFolderId("/"))
        assertNull(normalizeFolderId(null))
    }

    @Test
    fun parentFolderPathWalksUpOneSegment() {
        assertEquals("a", "a/b".parentFolderPath())
        assertNull("a".parentFolderPath())
        assertNull("  ".parentFolderPath())
        assertNull(null?.parentFolderPath())
    }

    @Test
    fun folderRepresentativeNamePrefersDocumentId() {
        val byDoc = comic("c1", documentId = "tree/doc:Chapter%20One", path = "/unused/other")
        assertEquals("chapter%20one", folderRepresentativeName(byDoc))

        val byPath = comic("c2", documentId = null, path = "root/Sub/My Folder")
        assertEquals("my folder", folderRepresentativeName(byPath))
    }

    @Test
    fun normalizeLibraryViewModeGridFlagWinsOverStored() {
        assertEquals(LibraryViewMode.GRID, normalizeLibraryViewMode("LIST", isGrid = true))
        assertEquals(LibraryViewMode.LIST, normalizeLibraryViewMode("LIST", isGrid = false))
        assertEquals(LibraryViewMode.GRID, normalizeLibraryViewMode("WEIRD", isGrid = false))
    }

    // --- Display.kt: sections ---

    @Test
    fun buildSectionsGroupsByKeyPreservingFirstSeenOrder() {
        val comics = listOf(
            comic("a1", folderId = "A"),
            comic("b1", folderId = "B"),
            comic("a2", folderId = "A"),
        )
        val sections = buildSections(comics) { it.folderId ?: "" }
        assertEquals(listOf("A", "B"), sections.map { it.first })
        assertEquals(listOf("a1", "a2"), sections[0].second.map { it.id })
    }

    @Test
    fun libraryContentSectionRespectsExplicitShelf() {
        assertEquals(LibraryFileSection.GRAPHIC, comic("g", libraryShelf = "GRAPHIC").libraryContentSection())
        assertEquals(LibraryFileSection.BOOKS, comic("b", libraryShelf = "BOOKS").libraryContentSection())
    }

    @Test
    fun libraryContentSectionAutoSplitsByFormat() {
        assertEquals(LibraryFileSection.GRAPHIC, comic("cbz", format = ComicFormat.CBZ).libraryContentSection())
        assertEquals(LibraryFileSection.BOOKS, comic("epub", format = ComicFormat.EPUB).libraryContentSection())
    }

    @Test
    fun buildSeparatedComicDisplayItemsSkipsHeadersForSingleType() {
        val items = buildSeparatedComicDisplayItems(
            listOf(comic("g1", format = ComicFormat.CBZ), comic("g2", format = ComicFormat.PDF))
        )
        assertTrue(items.none { it is LibrarySectionDividerItem })
        assertEquals(2, items.size)
    }

    @Test
    fun buildSeparatedComicDisplayItemsAddsHeadersForMixedTypes() {
        val items = buildSeparatedComicDisplayItems(
            listOf(comic("g1", format = ComicFormat.CBZ), comic("b1", format = ComicFormat.EPUB))
        )
        val dividers = items.filterIsInstance<LibrarySectionDividerItem>()
        assertEquals(listOf(LibraryFileSection.GRAPHIC, LibraryFileSection.BOOKS), dividers.map { it.section })
        assertEquals(4, items.size)
    }

    // --- Display.kt: folders ---

    @Test
    fun directFilesForPathReturnsOnlyDirectChildren() {
        val comics = listOf(
            comic("d1", folderId = "a"),
            comic("nested", folderId = "a/b"),
            comic("other", folderId = "z"),
            comic("root", folderId = null),
        )
        assertEquals(listOf("d1"), directFilesForPath(comics, "a").map { it.id })
    }

    @Test
    fun directChildFolderPathHandlesRootAndNested() {
        assertEquals("a", directChildFolderPath("a/b", null))
        assertEquals("a", directChildFolderPath("a", null))
        assertEquals("a/b", directChildFolderPath("a/b/c", "a"))
        assertNull(directChildFolderPath("a", "a"))
        assertNull(directChildFolderPath("other", "a"))
        assertNull(directChildFolderPath("  ", null))
    }

    @Test
    fun buildFolderItemsAggregatesCountsAndProgress() {
        val comics = listOf(
            comic("f1", folderId = "a", readingProgress = 1f, fileSize = 100, lastReadDate = 1L),
            comic("f2", folderId = "a", readingProgress = 0f, fileSize = 300, lastReadDate = 1L),
            comic("f3", folderId = "a/b", readingProgress = 0.5f, fileSize = 50, lastReadDate = 1L),
            comic("f4", folderId = "a/c", readingProgress = 0.5f, fileSize = 50, lastReadDate = 1L),
            comic("outside", folderId = "z"),
        )
        val folders = buildFolderItems(comics, currentFolderPath = null, sortOrder = SortOrder.TITLE_ASC)
        val folderA = folders.single { it.path == "a" }
        assertEquals(2, folderA.fileCount)
        assertEquals(2, folderA.subfolderCount)
        assertEquals(500, folderA.totalSize)
        // pageCount=0 (default) → readingProgressForPage returns 0 → fallback to stored readingProgress.
        // f1: readingProgress=1.0, lastReadDate=1 → READING → displayReadingProgress=1.0
        // f2: readingProgress=0.0, lastReadDate=1 → READING → displayReadingProgress=0.0
        // f3: readingProgress=0.5, lastReadDate=1 → READING → displayReadingProgress=0.5
        // f4: readingProgress=0.5, lastReadDate=1 → READING → displayReadingProgress=0.5
        // Average of descendants (f1,f2,f3,f4) = (1.0+0.0+0.5+0.5)/4 = 0.5
        assertEquals(0.5f, folderA.progress, 0.001f)
        assertEquals("a", folderA.title)
    }

    @Test
    fun sortFolderItemsOrdersByTitleAndProgress() {
        val folders = listOf(
            LibraryFolderItem("z", "Zeta", null, 0, 0, 0, null, 0, 0.9f),
            LibraryFolderItem("a", "Alpha", null, 0, 0, 0, null, 0, 0.1f),
        )
        assertEquals(listOf("a", "z"), sortFolderItems(folders, SortOrder.TITLE_ASC).map { it.path })
        assertEquals(listOf("z", "a"), sortFolderItems(folders, SortOrder.TITLE_DESC).map { it.path })
        assertEquals(listOf("a", "z"), sortFolderItems(folders, SortOrder.PROGRESS_ASC).map { it.path })
        assertEquals(listOf("z", "a"), sortFolderItems(folders, SortOrder.PROGRESS_DESC).map { it.path })
    }

    // --- Display.kt: paths ---

    @Test
    fun folderExistsMatchesExactAndPrefix() {
        val comics = listOf(
            comic("c1", folderId = "a"),
            comic("c2", folderId = "a/b"),
        )
        assertTrue(folderExists("a", comics))
        assertTrue(folderExists("a/b", comics))
        assertFalse(folderExists("z", comics))
        assertFalse(folderExists("a/b/c", comics))
    }

    @Test
    fun normalizeFolderPathWalksUpToExistingFolder() {
        val comics = listOf(comic("c1", folderId = "a/b"))
        assertEquals("a/b", normalizeFolderPath("a/b", comics))
        assertEquals("a/b", normalizeFolderPath("a/b/c", comics))
        assertEquals("a", normalizeFolderPath("a", comics))
        assertNull(normalizeFolderPath("gone", comics))
    }

    @Test
    fun buildBreadcrumbsStartsWithRootAndAppendsSegments() {
        val crumbs = buildBreadcrumbs("a/b", language = "ru")
        assertEquals(listOf<String?>(null, "a", "a/b"), crumbs.map { it.path })
        assertEquals("Библиотека", crumbs.first().label)
        assertEquals(listOf("a", "b"), crumbs.drop(1).map { it.label })
    }

    @Test
    fun buildBreadcrumbsRootOnlyForBlankPath() {
        val crumbs = buildBreadcrumbs(null, language = "en")
        assertEquals(1, crumbs.size)
        assertEquals("Library", crumbs.first().label)
    }
}
