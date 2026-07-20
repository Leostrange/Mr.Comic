package io.leostrange.mrcomic.core.domain.util

import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTapZoneActionsTest {

    @Test
    fun `null input returns default action name`() {
        // fromStored(null) yields the default action; whatever it is, the function
        // must never throw and must not silently rewrite to MENU.
        val expected = ReaderTapZoneAction.fromStored(null).name
        assertEquals(expected, normalizeTapZoneActionName(null))
    }

    @Test
    fun `blank input is treated like null`() {
        val expected = ReaderTapZoneAction.fromStored("").name
        assertEquals(expected, normalizeTapZoneActionName(""))
    }

    @Test
    fun `legacy TOGGLE_UI is rewritten to MENU`() {
        // TOGGLE_UI is the obsolete UI-toggle action; it must always come back as MENU.
        assertEquals(ReaderTapZoneAction.MENU.name, normalizeTapZoneActionName("TOGGLE_UI"))
        assertEquals(ReaderTapZoneAction.MENU.name, normalizeTapZoneActionName("toggle_ui"))
    }

    @Test
    fun `modern action names pass through unchanged`() {
        assertEquals(ReaderTapZoneAction.MENU.name, normalizeTapZoneActionName("MENU"))
        assertEquals(ReaderTapZoneAction.NEXT_PAGE.name, normalizeTapZoneActionName("NEXT_PAGE"))
        assertEquals(ReaderTapZoneAction.PREVIOUS_PAGE.name, normalizeTapZoneActionName("PREVIOUS_PAGE"))
    }

    @Test
    fun `unknown action falls back to default action name`() {
        val expected = ReaderTapZoneAction.fromStored("UNKNOWN_ZONE").name
        assertEquals(expected, normalizeTapZoneActionName("UNKNOWN_ZONE"))
    }
}