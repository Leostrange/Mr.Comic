package com.example.mrcomic.ui.preview

import android.content.Context
import android.graphics.*
import android.graphics.drawable.GradientDrawable
import android.util.Log
import kotlinx.coroutines.*
import java.io.ByteArrayOutputStream

/**
 * Генератор превью для настроек стиля, тем и схем пролистывания
 * Создаёт миниатюры в реальном времени при изменении настроек
 */
class PreviewGenerator(private val context: Context) {

    companion object {
        private const val TAG = "PreviewGenerator"
        private const val PREVIEW_WIDTH = 300
        private const val PREVIEW_HEIGHT = 400
        private const val CORNER_RADIUS = 16f
        private const val SHADOW_RADIUS = 8f
    }

    private val previewScope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private val previewCache = mutableMapOf<String, Bitmap>()

    /**
     * Генерация превью темы
     */
    suspend fun generateThemePreview(theme: ThemeSettings): Bitmap = withContext(Dispatchers.Default) {
        val cacheKey = "theme_${theme.hashCode()}"
        
        previewCache[cacheKey]?.let { cachedBitmap ->
            if (!cachedBitmap.isRecycled) {
                Log.d(TAG, "Using cached theme preview: $cacheKey")
                return@withContext cachedBitmap
            }
        }

        Log.d(TAG, "Generating theme preview: ${theme.name}")
        
        val bitmap = Bitmap.createBitmap(PREVIEW_WIDTH, PREVIEW_HEIGHT, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        
        // Фон
        val backgroundPaint = Paint().apply {
            color = theme.backgroundColor
            isAntiAlias = true
        }
        
        val backgroundRect = RectF(0f, 0f, PREVIEW_WIDTH.toFloat(), PREVIEW_HEIGHT.toFloat())
        canvas.drawRoundRect(backgroundRect, CORNER_RADIUS, CORNER_RADIUS, backgroundPaint)
        
        // Заголовок
        drawPreviewHeader(canvas, theme)
        
        // Страницы комикса
        drawPreviewPages(canvas, theme)
        
        // Элементы управления
        drawPreviewControls(canvas, theme)
        
        // Тень и рамка
        drawPreviewBorder(canvas, theme)
        
        previewCache[cacheKey] = bitmap
        Log.d(TAG, "Theme preview generated and cached: $cacheKey")
        
        bitmap
    }

    /**
     * Генерация превью схемы пролистывания
     */
    suspend fun generatePageTurnPreview(pageTransition: PageTransitionSettings): Bitmap = withContext(Dispatchers.Default) {
        val cacheKey = "transition_${pageTransition.hashCode()}"
        
        previewCache[cacheKey]?.let { cachedBitmap ->
            if (!cachedBitmap.isRecycled) {
                return@withContext cachedBitmap
            }
        }

        Log.d(TAG, "Generating page transition preview: ${pageTransition.type}")
        
        val bitmap = Bitmap.createBitmap(PREVIEW_WIDTH, PREVIEW_HEIGHT, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        
        // Фон
        canvas.drawColor(Color.WHITE)
        
        when (pageTransition.type) {
            PageTransitionType.SLIDE -> drawSlideTransition(canvas, pageTransition)
            PageTransitionType.FADE -> drawFadeTransition(canvas, pageTransition)
            PageTransitionType.FLIP -> drawFlipTransition(canvas, pageTransition)
            PageTransitionType.CURL -> drawCurlTransition(canvas, pageTransition)
            PageTransitionType.ZOOM -> drawZoomTransition(canvas, pageTransition)
        }
        
        previewCache[cacheKey] = bitmap
        bitmap
    }

    /**
     * Генерация превью стиля чтения
     */
    suspend fun generateReadingStylePreview(readingStyle: ReadingStyleSettings): Bitmap = withContext(Dispatchers.Default) {
        val cacheKey = "style_${readingStyle.hashCode()}"
        
        previewCache[cacheKey]?.let { cachedBitmap ->
            if (!cachedBitmap.isRecycled) {
                return@withContext cachedBitmap
            }
        }

        Log.d(TAG, "Generating reading style preview: ${readingStyle.mode}")
        
        val bitmap = Bitmap.createBitmap(PREVIEW_WIDTH, PREVIEW_HEIGHT, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        
        // Фон
        canvas.drawColor(readingStyle.backgroundColor)
        
        when (readingStyle.mode) {
            ReadingMode.SINGLE_PAGE -> drawSinglePageStyle(canvas, readingStyle)
            ReadingMode.DOUBLE_PAGE -> drawDoublePageStyle(canvas, readingStyle)
            ReadingMode.CONTINUOUS -> drawContinuousStyle(canvas, readingStyle)
            ReadingMode.WEBTOON -> drawWebtoonStyle(canvas, readingStyle)
        }
        
        previewCache[cacheKey] = bitmap
        bitmap
    }

    /**
     * Отрисовка заголовка превью
     */
    private fun drawPreviewHeader(canvas: Canvas, theme: ThemeSettings) {
        val headerPaint = Paint().apply {
            color = theme.primaryColor
            textSize = 24f
            typeface = Typeface.DEFAULT_BOLD
            isAntiAlias = true
        }
        
        val headerRect = RectF(20f, 20f, PREVIEW_WIDTH - 20f, 60f)
        val headerBg = Paint().apply {
            color = theme.surfaceColor
            isAntiAlias = true
        }
        
        canvas.drawRoundRect(headerRect, 8f, 8f, headerBg)
        canvas.drawText("Mr.Comic", 30f, 45f, headerPaint)
        
        // Иконка меню
        val menuPaint = Paint().apply {
            color = theme.onSurfaceColor
            strokeWidth = 3f
            strokeCap = Paint.Cap.ROUND
        }
        
        for (i in 0..2) {
            val y = 35f + i * 8f
            canvas.drawLine(PREVIEW_WIDTH - 50f, y, PREVIEW_WIDTH - 30f, y, menuPaint)
        }
    }

    /**
     * Отрисовка страниц комикса
     */
    private fun drawPreviewPages(canvas: Canvas, theme: ThemeSettings) {
        val pageMargin = 30f
        val pageWidth = PREVIEW_WIDTH - 2 * pageMargin
        val pageHeight = 200f
        val pageY = 80f
        
        // Основная страница
        val pagePaint = Paint().apply {
            color = Color.WHITE
            isAntiAlias = true
        }
        
        val shadowPaint = Paint().apply {
            color = Color.argb(50, 0, 0, 0)
            maskFilter = BlurMaskFilter(SHADOW_RADIUS, BlurMaskFilter.Blur.NORMAL)
        }
        
        val pageRect = RectF(pageMargin, pageY, pageMargin + pageWidth, pageY + pageHeight)
        val shadowRect = RectF(pageMargin + 4f, pageY + 4f, pageMargin + pageWidth + 4f, pageY + pageHeight + 4f)
        
        canvas.drawRoundRect(shadowRect, 8f, 8f, shadowPaint)
        canvas.drawRoundRect(pageRect, 8f, 8f, pagePaint)
        
        // Имитация контента комикса
        drawComicContent(canvas, pageRect, theme)
    }

    /**
     * Отрисовка контента комикса
     */
    private fun drawComicContent(canvas: Canvas, pageRect: RectF, theme: ThemeSettings) {
        val contentPaint = Paint().apply {
            color = theme.onSurfaceColor
            alpha = 100
            isAntiAlias = true
        }
        
        // Панели комикса
        val panelWidth = (pageRect.width() - 30f) / 2f
        val panelHeight = (pageRect.height() - 40f) / 2f
        
        for (row in 0..1) {
            for (col in 0..1) {
                val x = pageRect.left + 10f + col * (panelWidth + 10f)
                val y = pageRect.top + 10f + row * (panelHeight + 10f)
                
                val panelRect = RectF(x, y, x + panelWidth, y + panelHeight)
                canvas.drawRoundRect(panelRect, 4f, 4f, contentPaint)
                
                // Текстовые пузыри
                if (row == 0 && col == 1) {
                    val bubblePaint = Paint().apply {
                        color = Color.WHITE
                        isAntiAlias = true
                    }
                    val bubbleRect = RectF(x + 10f, y + 10f, x + panelWidth - 10f, y + 30f)
                    canvas.drawOval(bubbleRect, bubblePaint)
                }
            }
        }
    }

    /**
     * Отрисовка элементов управления
     */
    private fun drawPreviewControls(canvas: Canvas, theme: ThemeSettings) {
        val controlY = 300f
        val controlSize = 40f
        val controlSpacing = 60f
        val startX = (PREVIEW_WIDTH - 3 * controlSpacing) / 2f
        
        val controlPaint = Paint().apply {
            color = theme.primaryColor
            isAntiAlias = true
        }
        
        val iconPaint = Paint().apply {
            color = theme.onPrimaryColor
            strokeWidth = 3f
            strokeCap = Paint.Cap.ROUND
            isAntiAlias = true
        }
        
        // Кнопки управления
        for (i in 0..2) {
            val x = startX + i * controlSpacing
            val controlRect = RectF(x, controlY, x + controlSize, controlY + controlSize)
            canvas.drawOval(controlRect, controlPaint)
            
            val centerX = x + controlSize / 2f
            val centerY = controlY + controlSize / 2f
            
            when (i) {
                0 -> { // Предыдущая страница
                    canvas.drawLine(centerX + 5f, centerY - 8f, centerX - 5f, centerY, iconPaint)
                    canvas.drawLine(centerX - 5f, centerY, centerX + 5f, centerY + 8f, iconPaint)
                }
                1 -> { // Меню
                    for (j in 0..2) {
                        val lineY = centerY - 6f + j * 6f
                        canvas.drawLine(centerX - 8f, lineY, centerX + 8f, lineY, iconPaint)
                    }
                }
                2 -> { // Следующая страница
                    canvas.drawLine(centerX - 5f, centerY - 8f, centerX + 5f, centerY, iconPaint)
                    canvas.drawLine(centerX + 5f, centerY, centerX - 5f, centerY + 8f, iconPaint)
                }
            }
        }
    }

    /**
     * Отрисовка рамки превью
     */
    private fun drawPreviewBorder(canvas: Canvas, theme: ThemeSettings) {
        val borderPaint = Paint().apply {
            color = theme.outlineColor
            style = Paint.Style.STROKE
            strokeWidth = 2f
            isAntiAlias = true
        }
        
        val borderRect = RectF(1f, 1f, PREVIEW_WIDTH - 1f, PREVIEW_HEIGHT - 1f)
        canvas.drawRoundRect(borderRect, CORNER_RADIUS, CORNER_RADIUS, borderPaint)
    }

    /**
     * Отрисовка анимации слайда
     */
    private fun drawSlideTransition(canvas: Canvas, transition: PageTransitionSettings) {
        val progress = 0.6f // Симуляция прогресса анимации
        
        // Текущая страница
        val currentPagePaint = Paint().apply {
            color = Color.LTGRAY
            isAntiAlias = true
        }
        
        val currentX = -PREVIEW_WIDTH * progress
        val currentRect = RectF(currentX, 50f, currentX + PREVIEW_WIDTH, 350f)
        canvas.drawRect(currentRect, currentPagePaint)
        
        // Следующая страница
        val nextPagePaint = Paint().apply {
            color = Color.WHITE
            isAntiAlias = true
        }
        
        val nextX = PREVIEW_WIDTH * (1 - progress)
        val nextRect = RectF(nextX, 50f, nextX + PREVIEW_WIDTH, 350f)
        canvas.drawRect(nextRect, nextPagePaint)
        
        // Стрелка направления
        drawTransitionArrow(canvas, transition.direction)
    }

    /**
     * Отрисовка анимации затухания
     */
    private fun drawFadeTransition(canvas: Canvas, transition: PageTransitionSettings) {
        // Базовая страница
        val basePaint = Paint().apply {
            color = Color.LTGRAY
            isAntiAlias = true
        }
        
        val baseRect = RectF(50f, 50f, PREVIEW_WIDTH - 50f, 350f)
        canvas.drawRect(baseRect, basePaint)
        
        // Затухающая страница
        val fadePaint = Paint().apply {
            color = Color.WHITE
            alpha = 150 // Полупрозрачность
            isAntiAlias = true
        }
        
        canvas.drawRect(baseRect, fadePaint)
        
        // Индикатор затухания
        val indicatorPaint = Paint().apply {
            color = Color.BLACK
            alpha = 100
            textSize = 16f
            isAntiAlias = true
        }
        
        canvas.drawText("FADE", PREVIEW_WIDTH / 2f - 20f, PREVIEW_HEIGHT / 2f, indicatorPaint)
    }

    /**
     * Отрисовка анимации переворота
     */
    private fun drawFlipTransition(canvas: Canvas, transition: PageTransitionSettings) {
        val progress = 0.5f
        
        // Создаём эффект 3D переворота
        val matrix = Matrix()
        val centerX = PREVIEW_WIDTH / 2f
        val centerY = PREVIEW_HEIGHT / 2f
        
        // Левая половина (статичная)
        val leftPaint = Paint().apply {
            color = Color.LTGRAY
            isAntiAlias = true
        }
        
        val leftRect = RectF(50f, 50f, centerX, 350f)
        canvas.drawRect(leftRect, leftPaint)
        
        // Правая половина (переворачивающаяся)
        canvas.save()
        
        val scaleX = 1f - progress * 2f
        if (scaleX > 0) {
            matrix.setScale(scaleX, 1f, centerX, centerY)
            canvas.concat(matrix)
            
            val rightPaint = Paint().apply {
                color = Color.WHITE
                alpha = (255 * scaleX).toInt()
                isAntiAlias = true
            }
            
            val rightRect = RectF(centerX, 50f, PREVIEW_WIDTH - 50f, 350f)
            canvas.drawRect(rightRect, rightPaint)
        }
        
        canvas.restore()
    }

    /**
     * Отрисовка анимации загибания страницы
     */
    private fun drawCurlTransition(canvas: Canvas, transition: PageTransitionSettings) {
        // Основная страница
        val basePaint = Paint().apply {
            color = Color.LTGRAY
            isAntiAlias = true
        }
        
        val baseRect = RectF(50f, 50f, PREVIEW_WIDTH - 50f, 350f)
        canvas.drawRect(baseRect, basePaint)
        
        // Загибающийся угол
        val curlPaint = Paint().apply {
            color = Color.WHITE
            isAntiAlias = true
        }
        
        val shadowPaint = Paint().apply {
            color = Color.argb(100, 0, 0, 0)
            isAntiAlias = true
        }
        
        val path = Path().apply {
            moveTo(PREVIEW_WIDTH - 50f, 50f)
            lineTo(PREVIEW_WIDTH - 100f, 50f)
            lineTo(PREVIEW_WIDTH - 50f, 100f)
            close()
        }
        
        canvas.drawPath(path, shadowPaint)
        canvas.drawPath(path, curlPaint)
    }

    /**
     * Отрисовка анимации масштабирования
     */
    private fun drawZoomTransition(canvas: Canvas, transition: PageTransitionSettings) {
        val progress = 0.7f
        val scale = 0.5f + progress * 0.5f
        
        val centerX = PREVIEW_WIDTH / 2f
        val centerY = PREVIEW_HEIGHT / 2f
        
        canvas.save()
        canvas.scale(scale, scale, centerX, centerY)
        
        val pagePaint = Paint().apply {
            color = Color.WHITE
            alpha = (255 * progress).toInt()
            isAntiAlias = true
        }
        
        val pageRect = RectF(50f, 50f, PREVIEW_WIDTH - 50f, 350f)
        canvas.drawRect(pageRect, pagePaint)
        
        canvas.restore()
        
        // Индикатор масштабирования
        val zoomPaint = Paint().apply {
            color = Color.BLACK
            alpha = 150
            textSize = 14f
            isAntiAlias = true
        }
        
        canvas.drawText("${(scale * 100).toInt()}%", centerX - 15f, centerY + 180f, zoomPaint)
    }

    /**
     * Отрисовка одностраничного режима
     */
    private fun drawSinglePageStyle(canvas: Canvas, style: ReadingStyleSettings) {
        val pagePaint = Paint().apply {
            color = Color.WHITE
            isAntiAlias = true
        }
        
        val pageRect = RectF(50f, 50f, PREVIEW_WIDTH - 50f, 350f)
        canvas.drawRect(pageRect, pagePaint)
        
        // Рамка страницы
        val borderPaint = Paint().apply {
            color = style.borderColor
            style = Paint.Style.STROKE
            strokeWidth = 2f
            isAntiAlias = true
        }
        
        canvas.drawRect(pageRect, borderPaint)
    }

    /**
     * Отрисовка двухстраничного режима
     */
    private fun drawDoublePageStyle(canvas: Canvas, style: ReadingStyleSettings) {
        val pagePaint = Paint().apply {
            color = Color.WHITE
            isAntiAlias = true
        }
        
        val pageWidth = (PREVIEW_WIDTH - 70f) / 2f
        
        // Левая страница
        val leftRect = RectF(20f, 50f, 20f + pageWidth, 350f)
        canvas.drawRect(leftRect, pagePaint)
        
        // Правая страница
        val rightRect = RectF(30f + pageWidth, 50f, 30f + pageWidth * 2, 350f)
        canvas.drawRect(rightRect, pagePaint)
        
        // Разделитель
        val dividerPaint = Paint().apply {
            color = style.borderColor
            strokeWidth = 1f
        }
        
        canvas.drawLine(PREVIEW_WIDTH / 2f, 50f, PREVIEW_WIDTH / 2f, 350f, dividerPaint)
    }

    /**
     * Отрисовка непрерывного режима
     */
    private fun drawContinuousStyle(canvas: Canvas, style: ReadingStyleSettings) {
        val pagePaint = Paint().apply {
            color = Color.WHITE
            isAntiAlias = true
        }
        
        // Несколько страниц подряд
        for (i in 0..2) {
            val y = 30f + i * 120f
            val pageRect = RectF(50f, y, PREVIEW_WIDTH - 50f, y + 100f)
            canvas.drawRect(pageRect, pagePaint)
            
            if (i < 2) {
                // Разделитель между страницами
                val dividerPaint = Paint().apply {
                    color = style.borderColor
                    strokeWidth = 1f
                }
                canvas.drawLine(50f, y + 110f, PREVIEW_WIDTH - 50f, y + 110f, dividerPaint)
            }
        }
    }

    /**
     * Отрисовка режима веб-тун
     */
    private fun drawWebtoonStyle(canvas: Canvas, style: ReadingStyleSettings) {
        val pagePaint = Paint().apply {
            color = Color.WHITE
            isAntiAlias = true
        }
        
        // Длинная вертикальная полоса
        val pageRect = RectF(80f, 20f, PREVIEW_WIDTH - 80f, 380f)
        canvas.drawRect(pageRect, pagePaint)
        
        // Панели внутри
        val panelPaint = Paint().apply {
            color = style.borderColor
            alpha = 100
            isAntiAlias = true
        }
        
        for (i in 0..3) {
            val y = 40f + i * 80f
            val panelRect = RectF(90f, y, PREVIEW_WIDTH - 90f, y + 60f)
            canvas.drawRect(panelRect, panelPaint)
        }
    }

    /**
     * Отрисовка стрелки направления
     */
    private fun drawTransitionArrow(canvas: Canvas, direction: TransitionDirection) {
        val arrowPaint = Paint().apply {
            color = Color.BLACK
            alpha = 150
            strokeWidth = 4f
            strokeCap = Paint.Cap.ROUND
            isAntiAlias = true
        }
        
        val centerX = PREVIEW_WIDTH / 2f
        val centerY = PREVIEW_HEIGHT / 2f
        
        when (direction) {
            TransitionDirection.LEFT_TO_RIGHT -> {
                canvas.drawLine(centerX - 20f, centerY, centerX + 20f, centerY, arrowPaint)
                canvas.drawLine(centerX + 10f, centerY - 10f, centerX + 20f, centerY, arrowPaint)
                canvas.drawLine(centerX + 10f, centerY + 10f, centerX + 20f, centerY, arrowPaint)
            }
            TransitionDirection.RIGHT_TO_LEFT -> {
                canvas.drawLine(centerX + 20f, centerY, centerX - 20f, centerY, arrowPaint)
                canvas.drawLine(centerX - 10f, centerY - 10f, centerX - 20f, centerY, arrowPaint)
                canvas.drawLine(centerX - 10f, centerY + 10f, centerX - 20f, centerY, arrowPaint)
            }
            TransitionDirection.TOP_TO_BOTTOM -> {
                canvas.drawLine(centerX, centerY - 20f, centerX, centerY + 20f, arrowPaint)
                canvas.drawLine(centerX - 10f, centerY + 10f, centerX, centerY + 20f, arrowPaint)
                canvas.drawLine(centerX + 10f, centerY + 10f, centerX, centerY + 20f, arrowPaint)
            }
            TransitionDirection.BOTTOM_TO_TOP -> {
                canvas.drawLine(centerX, centerY + 20f, centerX, centerY - 20f, arrowPaint)
                canvas.drawLine(centerX - 10f, centerY - 10f, centerX, centerY - 20f, arrowPaint)
                canvas.drawLine(centerX + 10f, centerY - 10f, centerX, centerY - 20f, arrowPaint)
            }
        }
    }

    /**
     * Очистка кэша превью
     */
    fun clearCache() {
        previewCache.values.forEach { bitmap ->
            if (!bitmap.isRecycled) {
                bitmap.recycle()
            }
        }
        previewCache.clear()
        Log.d(TAG, "Preview cache cleared")
    }

    /**
     * Освобождение ресурсов
     */
    fun cleanup() {
        previewScope.cancel()
        clearCache()
        Log.d(TAG, "Preview generator cleaned up")
    }

    // Модели данных для настроек
    data class ThemeSettings(
        val name: String,
        val backgroundColor: Int,
        val surfaceColor: Int,
        val primaryColor: Int,
        val onPrimaryColor: Int,
        val onSurfaceColor: Int,
        val outlineColor: Int
    )

    data class PageTransitionSettings(
        val type: PageTransitionType,
        val direction: TransitionDirection,
        val duration: Long,
        val interpolator: String
    )

    data class ReadingStyleSettings(
        val mode: ReadingMode,
        val backgroundColor: Int,
        val borderColor: Int,
        val margin: Float,
        val spacing: Float
    )

    enum class PageTransitionType {
        SLIDE, FADE, FLIP, CURL, ZOOM
    }

    enum class TransitionDirection {
        LEFT_TO_RIGHT, RIGHT_TO_LEFT, TOP_TO_BOTTOM, BOTTOM_TO_TOP
    }

    enum class ReadingMode {
        SINGLE_PAGE, DOUBLE_PAGE, CONTINUOUS, WEBTOON
    }
}

