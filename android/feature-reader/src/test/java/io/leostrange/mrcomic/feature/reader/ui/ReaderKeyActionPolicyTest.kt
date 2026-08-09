package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * ARC-11 slice 4. Pure-Kotlin policy для hardware-key событий — без Compose,
 * без Robolectric, без KeyEvent-instance моков. Покрывает все key-code-ветки,
 * разные reading modes и оба ACTION_DOWN (с repeatCount и без), ACTION_UP.
 *
 * Соответствует контракту, который задан в [ReaderKeyActionPolicy.kt]. Тест
 * вызывает pure-primitive-вариант `resolveReaderHardwareKeyDecision(keyCode,
 * action, repeatCount, volumePagingEnabled, readingMode)` — без Android-
 * KeyEvent. ReaderScreen.kt пользуется convenience-обёрткой, которая сама
 * дёргает `event.keyCode`/`action`/`repeatCount` и делегирует в эту же
 * логику.
 */
class ReaderKeyActionPolicyTest {

    @Test
    fun volumeUp_stepsBackInLTR_andForwardInRTL() {
        assertEquals(-1, readerVolumePagingStep(android.view.KeyEvent.KEYCODE_VOLUME_UP, ReadingMode.PAGE_LTR))
        assertEquals(1, readerVolumePagingStep(android.view.KeyEvent.KEYCODE_VOLUME_UP, ReadingMode.PAGE_RTL))
        assertEquals(0, readerVolumePagingStep(android.view.KeyEvent.KEYCODE_VOLUME_UP, ReadingMode.WEBTOON))
        assertEquals(0, readerVolumePagingStep(android.view.KeyEvent.KEYCODE_VOLUME_UP, ReadingMode.DUAL_PAGE))
    }

    @Test
    fun volumeDown_stepsForwardInLTR_andBackInRTL() {
        assertEquals(1, readerVolumePagingStep(android.view.KeyEvent.KEYCODE_VOLUME_DOWN, ReadingMode.PAGE_LTR))
        assertEquals(-1, readerVolumePagingStep(android.view.KeyEvent.KEYCODE_VOLUME_DOWN, ReadingMode.PAGE_RTL))
        assertEquals(0, readerVolumePagingStep(android.view.KeyEvent.KEYCODE_VOLUME_DOWN, ReadingMode.WEBTOON))
    }

    @Test
    fun nonVolumeKeys_returnNull_evenInPagedMode() {
        assertNull(readerVolumePagingStep(android.view.KeyEvent.KEYCODE_MENU))
        assertNull(readerVolumePagingStep(android.view.KeyEvent.KEYCODE_BACK))
        assertNull(readerVolumePagingStep(android.view.KeyEvent.KEYCODE_DPAD_UP))
        assertNull(readerVolumePagingStep(android.view.KeyEvent.KEYCODE_DPAD_DOWN))
        assertNull(readerVolumePagingStep(android.view.KeyEvent.KEYCODE_DPAD_LEFT))
        assertNull(readerVolumePagingStep(android.view.KeyEvent.KEYCODE_DPAD_RIGHT))
        assertNull(readerVolumePagingStep(android.view.KeyEvent.KEYCODE_PAGE_UP, ReadingMode.PAGE_LTR))
        assertNull(readerVolumePagingStep(android.view.KeyEvent.KEYCODE_SEARCH, ReadingMode.DUAL_PAGE))
    }

    @Test
    fun firstVolumeDown_consumeAndPageStepForward_LTR() {
        val decision = resolveReaderHardwareKeyDecision(
            keyCode = android.view.KeyEvent.KEYCODE_VOLUME_DOWN,
            action = android.view.KeyEvent.ACTION_DOWN,
            repeatCount = 0,
            volumePagingEnabled = true,
            readingMode = ReadingMode.PAGE_LTR,
        )

        assertTrue(decision.consume)
        assertEquals(1, decision.pageStep)
    }

    @Test
    fun firstVolumeDown_consumeAndPageStepBack_RTL() {
        val decision = resolveReaderHardwareKeyDecision(
            keyCode = android.view.KeyEvent.KEYCODE_VOLUME_DOWN,
            action = android.view.KeyEvent.ACTION_DOWN,
            repeatCount = 0,
            volumePagingEnabled = true,
            readingMode = ReadingMode.PAGE_RTL,
        )

        assertTrue(decision.consume)
        assertEquals(-1, decision.pageStep)
    }

    @Test
    fun heldVolumeKey_isConsumedButDoesNotEmitAdditionalPageSteps() {
        // Зажатая клавиша: первый DOWN уже отдал pageTurn, повторные
        // DOWN'ы (без UP) приходят каждые ~30ms с repeatCount>0.
        // Политика должна их проглатывать, чтобы не прыгать через N страниц.
        val decision = resolveReaderHardwareKeyDecision(
            keyCode = android.view.KeyEvent.KEYCODE_VOLUME_DOWN,
            action = android.view.KeyEvent.ACTION_DOWN,
            repeatCount = 5,
            volumePagingEnabled = true,
            readingMode = ReadingMode.PAGE_LTR,
        )

        assertTrue("held key must be consumed", decision.consume)
        assertNull("held key must NOT emit additional page step", decision.pageStep)
    }

    @Test
    fun volumeKeyUp_isConsumedToReleaseHold() {
        val decision = resolveReaderHardwareKeyDecision(
            keyCode = android.view.KeyEvent.KEYCODE_VOLUME_UP,
            action = android.view.KeyEvent.ACTION_UP,
            repeatCount = 0,
            volumePagingEnabled = true,
            readingMode = ReadingMode.PAGE_LTR,
        )

        assertTrue(decision.consume)
        assertNull(decision.pageStep)
    }

    @Test
    fun volumePagingDisabled_swallowsEverything() {
        // accessibility: пользователь хочет регулировать громкость TTS,
        // а не перелистывать книгу. Политика возвращает consume=false
        // для всех событий — Compose-хост пропускает их дальше в систему.
        resolveReaderHardwareKeyDecision(
            keyCode = android.view.KeyEvent.KEYCODE_VOLUME_DOWN,
            action = android.view.KeyEvent.ACTION_DOWN,
            repeatCount = 0,
            volumePagingEnabled = false,
            readingMode = ReadingMode.PAGE_LTR,
        ).let {
            assertFalse(it.consume)
            assertNull(it.pageStep)
        }
        resolveReaderHardwareKeyDecision(
            keyCode = android.view.KeyEvent.KEYCODE_VOLUME_DOWN,
            action = android.view.KeyEvent.ACTION_UP,
            repeatCount = 0,
            volumePagingEnabled = false,
            readingMode = ReadingMode.PAGE_LTR,
        ).let {
            assertFalse(it.consume)
        }
    }

    @Test
    fun nonVolumeEvents_areNotConsumed_evenWhenEnabled() {
        // BACK / MENU / DPAD — у книги своя логика (не наша); политика
        // возвращает consume=false и не пытается интерпретировать.
        listOf(
            android.view.KeyEvent.KEYCODE_BACK,
            android.view.KeyEvent.KEYCODE_MENU,
            android.view.KeyEvent.KEYCODE_DPAD_DOWN,
        ).forEach { keyCode ->
            val decision = resolveReaderHardwareKeyDecision(
                keyCode = keyCode,
                action = android.view.KeyEvent.ACTION_DOWN,
                repeatCount = 0,
                volumePagingEnabled = true,
                readingMode = ReadingMode.PAGE_LTR,
            )
            assertFalse("non-volume keyCode=$keyCode must not be consumed", decision.consume)
            assertNull(decision.pageStep)
        }
    }

    @Test
    fun multipleActions_otherThanDownUp_areNotConsumed() {
        // ACTION_MULTIPLE, ACTION_HOVER_ENTER и пр. — политика не должна
        // вмешиваться; только DOWN/UP значимы для page-turn.
        val decision = resolveReaderHardwareKeyDecision(
            keyCode = android.view.KeyEvent.KEYCODE_VOLUME_DOWN,
            action = android.view.KeyEvent.ACTION_MULTIPLE,
            repeatCount = 0,
            volumePagingEnabled = true,
            readingMode = ReadingMode.PAGE_LTR,
        )

        assertFalse(decision.consume)
        assertNull(decision.pageStep)
    }
}
