package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.graphics.Color
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset

/**
 * Шаг 5 ARC-11. Чистый-Kotlin план chrome-поверхностей: собирает effective
 * opacity/blur, forceOpaqueChromeSurface, цвета chrome/overlay и overlay-стиль
 * для заголовка/футера. Раньше всё это жилось inline в `ReaderScreen()` —
 * ~30 строк трудно-тестируемой Compose-логики между [ReaderTopChromeBar] и
 * [ReaderBottomChromePanel]. Состояние в виде плоских примитивов (Float +
 * Color + eink-flag), чтобы тесты были plain-JUnit без Robolectric.
 *
 * Создаётся через [rememberReaderChromeSurfacePlan] в Compose-контексте или
 * напрямую через [ReaderChromeSurfacePlan.compute] в unit-тестах.
 */
internal data class ReaderChromeSurfacePlan(
    val effectiveToolbarOpacity: Float,
    val effectiveToolbarBlur: Float,
    val forceOpaqueChromeSurface: Boolean,
    val chromeSurface: Color,
    val overlaySurface: Color,
    val overlayStyle: ReaderHeaderFooterOverlayStyle,
) {
    companion object {
        /**
         * Чисто-Kotlin фабрика. Вызывайте из Compose или из unit-теста:
         * [topOpacity] обычно усреднение uiState.top/bottomToolbarOpacity,
         * но для теста можно подставить любой Float в [0,1].
         */
        fun compute(
            preset: ReadingPreset,
            isTextReader: Boolean,
            topToolbarOpacity: Float,
            bottomToolbarOpacity: Float,
            toolbarBlur: Float,
            baseColor: Color,
        ): ReaderChromeSurfacePlan {
            val combinedOpacity =
                ((topToolbarOpacity + bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f)
            val force = readerChromeRequiresOpaqueSurface(
                preset = preset,
                isTextReader = isTextReader,
            )
            val opacity = readerEffectiveToolbarOpacity(combinedOpacity, preset)
            val blur = readerEffectiveToolbarBlur(toolbarBlur, preset)
            val chromeSurface = readerPanelSurfaceColor(
                base = baseColor,
                emphasis = (opacity + blur * 0.06f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                minAlpha = if (force) 1f else READER_TOOLBAR_MIN_OPACITY,
            )
            val overlaySurface = readerPanelSurfaceColor(
                base = baseColor,
                emphasis = (opacity + blur * 0.03f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                minAlpha = if (force) 1f else READER_TOOLBAR_MIN_OPACITY,
            )
            val overlayStyle = readerHeaderFooterOverlayStyle(
                surfaceColor = overlaySurface,
                eink = preset == ReadingPreset.EINK,
            )
            return ReaderChromeSurfacePlan(
                effectiveToolbarOpacity = opacity,
                effectiveToolbarBlur = blur,
                forceOpaqueChromeSurface = force,
                chromeSurface = chromeSurface,
                overlaySurface = overlaySurface,
                overlayStyle = overlayStyle,
            )
        }
    }
}

/**
 * Compose-обёртка. Сохраняет план в `remember` под ключом
 * (preset, isTextReader, opacities, blur, baseColor) — те же зависимости,
 * которые раньше читались inline в `ReaderScreen`.
 */
@Composable
internal fun rememberReaderChromeSurfacePlan(
    preset: ReadingPreset,
    isTextReader: Boolean,
    topToolbarOpacity: Float,
    bottomToolbarOpacity: Float,
    toolbarBlur: Float,
    baseColor: Color,
): ReaderChromeSurfacePlan = remember(
    preset,
    isTextReader,
    topToolbarOpacity,
    bottomToolbarOpacity,
    toolbarBlur,
    baseColor,
) {
    ReaderChromeSurfacePlan.compute(
        preset = preset,
        isTextReader = isTextReader,
        topToolbarOpacity = topToolbarOpacity,
        bottomToolbarOpacity = bottomToolbarOpacity,
        toolbarBlur = toolbarBlur,
        baseColor = baseColor,
    )
}
