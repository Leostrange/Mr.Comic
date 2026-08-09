package io.leostrange.mrcomic.feature.reader.ui

import android.view.KeyEvent
import io.leostrange.mrcomic.core.model.ReadingMode

/**
 * ARC-11 slice 4: чистый-Kotlin модуль политики для hardware-key событий
 * (volume, page-up/down, dpad). До рефакторинга эта логика жила в
 * `ReaderInteractionPolicy.kt` вместе с другими interaction-rules
 * (`previousReaderChapterPage`, `readerResolvedPagedCssViewportHeight`,
 * и т.д.) — было трудно понять, какая функция про "key events", а какая
 * про "tap zones" / "paged viewport". После выделения — файл <100 строк,
 * 8 unit-тестов; key-event часть живёт ровно здесь.
 *
 * Цели:
 *  - чистые, типизированные решения (consume + pageStep) для Compose-хоста;
 *  - без Android/Compose-импортов, легко тестируется без Robolectric;
 *  - консультативный источник истины для будущей миграции на Compose
 *    `KeyEvent`-callbacks.
 */
data class ReaderHardwareKeyDecision(
    val consume: Boolean,
    val pageStep: Int? = null,
)

/**
 * Возвращает (+1/-1) для volume-up/down в режимах с горизонтальным
 * page-turn. В RTL-страницах знак инвертируется. Для не-volume клавиш
 * возвращает null — Compose-хост должен пропустить событие дальше.
 */
fun readerVolumePagingStep(
    keyCode: Int,
    readingMode: ReadingMode = ReadingMode.PAGE_LTR,
): Int? = when (keyCode) {
    KeyEvent.KEYCODE_VOLUME_UP -> if (readingMode == ReadingMode.PAGE_RTL) 1 else -1
    KeyEvent.KEYCODE_VOLUME_DOWN -> if (readingMode == ReadingMode.PAGE_RTL) -1 else 1
    else -> null
}

/**
 * Чисто-Kotlin расшифровка hardware-key события.
 *
 * Возвращает решение для Compose-хоста:
 *  - `consume=false` → событие не наше (volume-paging выключен
 *    пользователем, или клавиша — не volume);
 *  - `consume=true, pageStep=±1` → первый ACTION_DOWN для volume-клавиши;
 *  - `consume=true, pageStep=null` → ACTION_DOWN с repeatCount>0 (хост
 *    должен подавить повторный page-turn, чтобы не дёргать страницу
 *    каждые ~30ms, пока volume-кнопка зажата);
 *  - `consume=true, pageStep=null` → ACTION_UP (закрываем «зажатие»).
 *
 * `volumePagingEnabled` читается из user preferences; выключение volume-
 * paging типично для accessibility — пользователь хочет регулировать
 * громкость TTS без перелистывания.
 */
fun resolveReaderHardwareKeyDecision(
    keyCode: Int,
    action: Int,
    repeatCount: Int,
    volumePagingEnabled: Boolean,
    readingMode: ReadingMode = ReadingMode.PAGE_LTR,
): ReaderHardwareKeyDecision {
    if (!volumePagingEnabled) return ReaderHardwareKeyDecision(consume = false)
    val pageStep = readerVolumePagingStep(keyCode, readingMode)
        ?: return ReaderHardwareKeyDecision(consume = false)
    return when (action) {
        KeyEvent.ACTION_DOWN -> if (repeatCount == 0) {
            ReaderHardwareKeyDecision(consume = true, pageStep = pageStep)
        } else {
            // Зажатая клавиша: первый DOWN уже отдан, повторные
            // должны быть проглочены, чтобы избежать потери страниц.
            ReaderHardwareKeyDecision(consume = true)
        }
        KeyEvent.ACTION_UP -> ReaderHardwareKeyDecision(consume = true)
        else -> ReaderHardwareKeyDecision(consume = false)
    }
}

/**
 * Convenience-обёртка над [resolveReaderHardwareKeyDecision] для Compose-кода,
 * которая дёргает свойства Android-KeyEvent. Логика идентична; нужна только
 * чтобы [ReaderScreen.kt] не дублировал 4 строки вытаскивания значений.
 */
fun resolveReaderHardwareKeyDecision(
    event: KeyEvent,
    volumePagingEnabled: Boolean,
    readingMode: ReadingMode = ReadingMode.PAGE_LTR,
): ReaderHardwareKeyDecision = resolveReaderHardwareKeyDecision(
    keyCode = event.keyCode,
    action = event.action,
    repeatCount = event.repeatCount,
    volumePagingEnabled = volumePagingEnabled,
    readingMode = readingMode,
)
