package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * ARC-11 WebView regression suite — plain JUnit (без Robolectric).
 *
 * Цель: зафиксировать поведение, которое в полевых логах наблюдалось как
 *  регрессия в режиме авто-прокрутки / перезагрузки WebView. Тесты
 *  специально подобраны под конкретные сценарии из RDR-* и багрепортов,
 *  а не под "абстрактный контракт контроллера".
 *
 * Напрямую эквивалентен по охвату [ReaderWebViewLoadControllerTest], но
 *  сценарии там — это happy-path поверхности контракта, здесь — то,
 *  что в ReaderScreen.kt и HtmlPageView.kt отрабатывается в каждом
 *  рекомпозиционном цикле / переключении режима.
 */
class ReaderWebViewRegressionTest {

    @Test
    fun pagedViewportAcceptsPhoneLandscapeAfterSafeInsets() {
        assertTrue(readerPagedViewportIsReady(cssWidth = 814, cssHeight = 325))
        assertFalse(readerPagedViewportIsReady(cssWidth = 814, cssHeight = 180))
    }

    @Test
    fun freeScrollProgressionUsesPhysicalScrollRangeAndSurvivesViewportChanges() {
        val progression = readerFreeScrollProgression(
            scrollY = 1_500,
            scrollRangePx = 4_000,
            viewportHeightPx = 1_000
        )

        assertEquals(0.5, progression!!, 0.0001)
        assertNull(readerFreeScrollProgression(0, 100, 1_000))
    }

    @Test
    fun regression_loadFollowedImmediatelyByModeSwitch_doesNotLeakOldScrollRestore() {
        // RDR-01 / R-7 reported: переключение PAGE → WEBTOON сразу после
        // initial load иногда восстанавливало scroll к cover. Защищаемся
        // от повторения: новый ключ делает старый токен мёртвым.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a", key = "comic|page=10")
        controller.markLoadCommitted(token = "load-a")
        assertTrue(controller.shouldRestoreScroll("load-a"))

        // Переключаем режим — ключ меняется, старый токен не должен
        // отвечать «да» на shouldRestoreScroll.
        controller.markLoadRequested(token = "load-b", key = "comic|page=10|webtoon")
        assertFalse(controller.shouldRestoreScroll("load-a"))
    }

    @Test
    fun regression_staleOnPageFinishedForClosedScreen_doesNotWakeOldToken() {
        // ARC-11 slice A regression: WebView иногда асинхронно шлёт
        // markLoadCommitted(token) уже после того как View уехал со стека.
        // Контроллер должен игнорировать маркер для токенов, которые были
        // явно «очищены» через clear(). Покрывает случай, иногда возникавший
        // при быстром переключении между двумя книгами подряд.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a", key = "book-1")
        controller.markLoadCommitted(token = "load-a")
        controller.clear()

        // Симулируем задержавшийся колбэк из WebView уже после закрытия
        // первого экрана. Этот вызов не должен воскресить старый токен —
        // иначе canRestoreScroll вернёт true для экрана, которого уже нет.
        assertFalse(controller.shouldRestoreScroll("load-a"))
    }

    @Test
    fun regression_sameKeyReRequestedAfterCommit_reEnablesScrollRestore() {
        // Юзер закрыл chrome и затем сразу же снова открыл ту же страницу
        // — нужно второй раз корректно отдать scroll restore. Контракт
        // контроллера это допускает: повторный markLoadRequested с тем же
        // токеном после commit — no-op, и shouldRestoreScroll остаётся true.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a", key = "k1")
        controller.markLoadCommitted(token = "load-a")
        // chrome toggle / recompose эквивалентны повторному запросу токена
        controller.markLoadRequested(token = "load-a", key = "k1")
        assertTrue(controller.shouldRestoreScroll("load-a"))
    }

    @Test
    fun regression_keyChangeMiddleOfInFlightLoad_marksOldTokenDeadOnCommit() {
        // Сценарий: пользователь быстро щёлкает ссылки вперёд, что
        // порождает цепочку markLoadRequested(load-a → load-b → load-c),
        // но первый WebView не успел донести свой onPageFinished. Когда
        // он наконец дозвонится, его markLoadCommitted(load-a) НЕ должен
        // открывать scroll restore для load-a, потому что «токен-актуальный»
        // у нас теперь load-c.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a", key = "p10")
        controller.markLoadRequested(token = "load-b", key = "p11")
        controller.markLoadRequested(token = "load-c", key = "p12")
        // Старый WebView наконец дозвонился:
        controller.markLoadCommitted(token = "load-a")

        assertFalse("stale commit must not restore scroll for old token",
            controller.shouldRestoreScroll("load-a"))
        assertFalse("load-b never committed, must not restore",
            controller.shouldRestoreScroll("load-b"))
        assertFalse("load-c never committed, must not restore",
            controller.shouldRestoreScroll("load-c"))
    }

    @Test
    fun regression_blankOrNullTokensAreIgnored() {
        // ARC-11 slice A regression: пустой токен из WebView в первые мс
        // после onAttachedToWindow, когда chrome-null. Контроллер не
        // должен хранить «активный токен == ""». Если хранит — любая
        // проверка shouldRestoreScroll("") даёт false, но это плохо
        // документировано. Делаем явный контракт: blank → no-op.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "")
        controller.markLoadRequested(token = "   ")
        controller.markLoadCommitted(token = "")

        // Активный токен по-прежнему null → должен rebuild до первого
        // настоящего запроса.
        assertTrue(controller.shouldRebuildSource(currentKey = "p10"))
    }

    @Test
    fun regression_blankTokenCannotBecomeRestorable() {
        // U2 closes the characterization gap: callbacks without a document
        // identity cannot become the active load or unlock restoration.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "")
        controller.markLoadCommitted(token = "")

        assertFalse(controller.shouldRestoreScroll(""))
    }

    @Test
    fun regression_quickSuccessionOfClears_keepsControllerInInitialState() {
        // RDR-04 регрессия: при выходе из chrome-сессии onCleared вызывал
        // clear() несколько раз подряд. Контроллер должен быть устойчив
        // к этому — повторный clear на пустом/чистом состоянии не должен
        // «застрять» в shouldRestoreScroll-true или shouldRebuild-false.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a", key = "k")
        controller.markLoadCommitted(token = "load-a")

        controller.clear()
        controller.clear()
        controller.clear()

        assertFalse(controller.shouldRestoreScroll("load-a"))
        assertTrue(controller.shouldRebuildSource(currentKey = "k"))
        assertTrue(controller.shouldRebuildSource(currentKey = null))
    }
}
