package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import kotlin.math.roundToInt

/**
 * ARC-11 S3: pure-Kotlin chrome inset plan.
 *
 * До рефакторинга ~150 строк внутри [ReaderScreen] вычисляли measured
 * reserve, auto-hide reserve, финальный видимый reserve и CSS-инсеты
 * для текстового WebView. После выноса:
 *
 *  - [measuredTopReservePx] / [measuredBottomReservePx] — per-composition слой,
 *    считается из primitives (измеренные размеры chrome, system insets и т.п.);
 *  - [autoHideTopReservePx] / [autoHideBottomReservePx] — stable floor для
 *    auto-hide режима, чтобы первый кадр не рисовал текст y=0 под оверлеем;
 *  - [topChromeReservePx] / [bottomChromeReservePx] — финальный reserve
 *    через [visibleChromeContentReservePx] (preset-based max(stable, measured));
 *  - [textContentTopInsetCssPx] / [textContentBottomInsetCssPx] — CSS px
 *    для padding-top/bottom на WebView (учитывает system bars + sentence gutter).
 *
 * Stable-часть (SideEffect, которая обновляет mutableIntStateOf) остаётся
 * в [ReaderScreen], потому что это Compose lifecycle. Слой S3 — только
 * чистая математика.
 */
internal data class ChromeInsetsPlan(
    val measuredTopReservePx: Int,
    val measuredBottomReservePx: Int,
    val autoHideTopReservePx: Int,
    val autoHideBottomReservePx: Int,
    val topChromeReservePx: Int,
    val bottomChromeReservePx: Int,
    val textContentTopInsetPx: Int,
    val textContentBottomInsetPx: Int,
    val textContentTopInsetCssPx: Int,
    val textContentBottomInsetCssPx: Int,
) {
    companion object {
        fun compute(
            /* chrome render state */
            chromeIsVisible: Boolean,
            /* measured measurements (per-frame) */
            measuredHeaderOverlayPx: Int,
            measuredFooterOverlayPx: Int,
            measuredTopChromePx: Int,
            measuredBottomChromePx: Int,
            /* system insets */
            systemTopInsetPx: Int,
            systemBottomInsetPx: Int,
            /* stable reserves (continuously running maximum from SideEffect) */
            stableTopChromeReservePx: Int,
            stableBottomChromeReservePx: Int,
            baselineTopChromeReservePx: Int,
            baselineBottomChromeReservePx: Int,
            /* toolkit helpers */
            estimatedOverlayContentPx: Int,
            maxStableTopChromeReservePx: Int,
            textSentenceInsetPx: Int,
            densityScale: Float,
        ): ChromeInsetsPlan {
            // ── Measured reserve (per-composition) ─────────────────────────────
            val measuredTopReservePx = computeMeasuredTopReservePx(
                chromeIsVisible = chromeIsVisible,
                measuredHeaderOverlayPx = measuredHeaderOverlayPx,
                measuredTopChromePx = measuredTopChromePx,
                systemTopInsetPx = systemTopInsetPx,
                estimatedOverlayContentPx = estimatedOverlayContentPx,
                maxStableTopChromeReservePx = maxStableTopChromeReservePx,
            )
            val measuredBottomReservePx = computeMeasuredBottomReservePx(
                chromeIsVisible = chromeIsVisible,
                measuredFooterOverlayPx = measuredFooterOverlayPx,
                measuredBottomChromePx = measuredBottomChromePx,
                systemBottomInsetPx = systemBottomInsetPx,
                estimatedOverlayContentPx = estimatedOverlayContentPx,
            )

            // ── Auto-hide reserve (floor for the very first frame) ─────────────
            val autoHideTopReservePx = maxOf(
                estimatedOverlayContentPx,
                stableTopChromeReservePx,
                (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0),
            )
            val autoHideBottomReservePx = maxOf(
                estimatedOverlayContentPx,
                stableBottomChromeReservePx,
                (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0),
            )

            // ── Final visible reserve (preset-based max) ─────────────────────┐
            val topChromeReservePx = visibleChromeContentReservePx(
                chromeIsVisible = chromeIsVisible,
                stableReservePx = stableTopChromeReservePx,
                measuredReservePx = measuredTopReservePx,
            )
            val bottomChromeReservePx = visibleChromeContentReservePx(
                chromeIsVisible = chromeIsVisible,
                stableReservePx = stableBottomChromeReservePx,
                measuredReservePx = measuredBottomReservePx,
            )

            // ── Text content insets (CSS px) ─────────────────────────────────┐
            val textContentTopInsetPx = systemTopInsetPx + topChromeReservePx +
                if (topChromeReservePx == 0) textSentenceInsetPx else 0
            val textContentBottomInsetPx = systemBottomInsetPx + bottomChromeReservePx +
                if (bottomChromeReservePx == 0) textSentenceInsetPx else 0
            val safeDensityScale = if (densityScale > 0f) densityScale else 1f
            val textContentTopInsetCssPx =
                (textContentTopInsetPx / safeDensityScale).roundToInt().coerceAtLeast(0)
            val textContentBottomInsetCssPx =
                (textContentBottomInsetPx / safeDensityScale).roundToInt().coerceAtLeast(0)

            return ChromeInsetsPlan(
                measuredTopReservePx = measuredTopReservePx,
                measuredBottomReservePx = measuredBottomReservePx,
                autoHideTopReservePx = autoHideTopReservePx,
                autoHideBottomReservePx = autoHideBottomReservePx,
                topChromeReservePx = topChromeReservePx,
                bottomChromeReservePx = bottomChromeReservePx,
                textContentTopInsetPx = textContentTopInsetPx,
                textContentBottomInsetPx = textContentBottomInsetPx,
                textContentTopInsetCssPx = textContentTopInsetCssPx,
                textContentBottomInsetCssPx = textContentBottomInsetCssPx,
            )
        }

        // ── Top measured reserve (visible / hidden) ─────────────────────────┐
        internal fun computeMeasuredTopReservePx(
            chromeIsVisible: Boolean,
            measuredHeaderOverlayPx: Int,
            measuredTopChromePx: Int,
            systemTopInsetPx: Int,
            estimatedOverlayContentPx: Int,
            maxStableTopChromeReservePx: Int,
        ): Int = when {
            chromeIsVisible -> maxOf(
                (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0),
                (measuredTopChromePx - systemTopInsetPx).coerceAtLeast(0),
            ).coerceAtMost(maxStableTopChromeReservePx)
            else -> maxOf(
                (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0),
                estimatedOverlayContentPx,
            )
        }

        // ── Bottom measured reserve (visible / hidden) ──────────────────────┐
        internal fun computeMeasuredBottomReservePx(
            chromeIsVisible: Boolean,
            measuredFooterOverlayPx: Int,
            measuredBottomChromePx: Int,
            systemBottomInsetPx: Int,
            estimatedOverlayContentPx: Int,
        ): Int = when {
            chromeIsVisible -> maxOf(
                (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0),
                (measuredBottomChromePx - systemBottomInsetPx).coerceAtLeast(0),
            )
            else -> maxOf(
                (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0),
                estimatedOverlayContentPx,
            )
        }
    }
}

/**
 * Compose-обёртка. Передаёт все входные primitives в [ChromeInsetsPlan.compute]
 * и кеширует результат через [remember] по ключевым значениям. Каждый вход,
 * участвующий в формуле (включая mutable stable/baseline reserves, measured
 * values, estimated overlay, sentence inset и density), обязан быть в ключах —
 * иначе план вернёт устаревший inset после измерения chrome. При добавлении
 * параметра в [ChromeInsetsPlan.compute] добавляйте его и сюда, и в ключи
 * [remember], и в [ChromeInsetsPlanTest].
 */
@Composable
internal fun rememberChromeInsetsPlan(
    chromeIsVisible: Boolean,
    measuredHeaderOverlayPx: Int,
    measuredFooterOverlayPx: Int,
    measuredTopChromePx: Int,
    measuredBottomChromePx: Int,
    systemTopInsetPx: Int,
    systemBottomInsetPx: Int,
    stableTopChromeReservePx: Int,
    stableBottomChromeReservePx: Int,
    baselineTopChromeReservePx: Int,
    baselineBottomChromeReservePx: Int,
    estimatedOverlayContentPx: Int,
    maxStableTopChromeReservePx: Int,
    textSentenceInsetPx: Int,
    densityScale: Float,
): ChromeInsetsPlan = remember(
    chromeIsVisible,
    measuredHeaderOverlayPx,
    measuredFooterOverlayPx,
    measuredTopChromePx,
    measuredBottomChromePx,
    systemTopInsetPx,
    systemBottomInsetPx,
    stableTopChromeReservePx,
    stableBottomChromeReservePx,
    baselineTopChromeReservePx,
    baselineBottomChromeReservePx,
    estimatedOverlayContentPx,
    maxStableTopChromeReservePx,
    textSentenceInsetPx,
    densityScale,
) {
    ChromeInsetsPlan.compute(
        chromeIsVisible = chromeIsVisible,
        measuredHeaderOverlayPx = measuredHeaderOverlayPx,
        measuredFooterOverlayPx = measuredFooterOverlayPx,
        measuredTopChromePx = measuredTopChromePx,
        measuredBottomChromePx = measuredBottomChromePx,
        systemTopInsetPx = systemTopInsetPx,
        systemBottomInsetPx = systemBottomInsetPx,
        stableTopChromeReservePx = stableTopChromeReservePx,
        stableBottomChromeReservePx = stableBottomChromeReservePx,
        baselineTopChromeReservePx = baselineTopChromeReservePx,
        baselineBottomChromeReservePx = baselineBottomChromeReservePx,
        estimatedOverlayContentPx = estimatedOverlayContentPx,
        maxStableTopChromeReservePx = maxStableTopChromeReservePx,
        textSentenceInsetPx = textSentenceInsetPx,
        densityScale = densityScale,
    )
}
