package com.example.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderRecapSecondaryActionTest {

    @Test
    fun shouldEmitChapterProgressRecap_skipsFinalPageAndKeepsMidBookRecaps() {
        assertEquals(true, shouldEmitChapterProgressRecap(page = 0, totalPages = 0))
        assertEquals(true, shouldEmitChapterProgressRecap(page = 4, totalPages = 10))
        assertEquals(false, shouldEmitChapterProgressRecap(page = 9, totalPages = 10))
    }
}
