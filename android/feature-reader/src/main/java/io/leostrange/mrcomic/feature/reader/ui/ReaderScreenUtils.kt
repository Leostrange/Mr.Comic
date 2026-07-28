package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.content.ContextWrapper
import android.webkit.WebResourceResponse
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.webkit.WebViewAssetLoader
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.feature.reader.ui.gesture.ReaderColorScheme
import java.io.ByteArrayInputStream
import java.io.File
import java.util.Locale
import org.json.JSONTokener

// ── WebView asset path handlers ──────────────────────────────────────────

internal class ReaderFormatAssetPathHandler(
    private val resolver: (String) -> io.leostrange.mrcomic.engine.formats.base.FormatReaderWebResource?
) : WebViewAssetLoader.PathHandler {
    override fun handle(path: String): WebResourceResponse? {
        val cleanPath = path.substringBefore('#').substringBefore('?').trimStart('/')
        val resource = resolver(cleanPath) ?: return null
        return WebResourceResponse(
            resource.mimeType,
            resource.encoding,
            ByteArrayInputStream(resource.bytes)
        ).apply {
            responseHeaders = mapOf(
                "Cache-Control" to "public, max-age=300",
                "Access-Control-Allow-Origin" to "*"
            )
        }
    }
}

internal class ReaderUserFontAssetPathHandler(
    private val context: Context
) : WebViewAssetLoader.PathHandler {
    override fun handle(path: String): WebResourceResponse? {
        val decodedPath = android.net.Uri.decode(path).replace('\\', '/').trimStart('/')
        val fileName = decodedPath.substringAfterLast('/').trim()
        if (fileName.isBlank()) return null
        val mimeType = when (fileName.substringAfterLast('.', "").lowercase(Locale.US)) {
            "ttf" -> "font/ttf"
            "otf" -> "font/otf"
            "woff" -> "font/woff"
            "woff2" -> "font/woff2"
            else -> return null
        }
        val builtInBytes = runCatching {
            context.assets.open("fonts/$fileName").use { it.readBytes() }
        }.getOrNull()
        if (builtInBytes != null) {
            return fontWebResourceResponse(mimeType, builtInBytes)
        }
        val rootDir = ReaderTextFontCatalog.fontDirectory(context).canonicalFile
        val file = File(rootDir, fileName).canonicalFile
        if (file.parentFile != rootDir || !file.exists() || !file.isFile || !file.canRead()) {
            return null
        }
        return fontWebResourceResponse(mimeType, file.readBytes())
    }

    private fun fontWebResourceResponse(mimeType: String, bytes: ByteArray): WebResourceResponse =
        WebResourceResponse(
            mimeType,
            "binary",
            ByteArrayInputStream(bytes)
        ).apply {
            responseHeaders = mapOf(
                "Cache-Control" to "public, max-age=300",
                "Access-Control-Allow-Origin" to "*"
            )
        }
}

// ── Color scheme helpers ─────────────────────────────────────────────────

internal fun colorSchemePalette(scheme: String): Pair<String, String> =
    ReaderColorScheme.palette(scheme)

internal fun colorSchemePaletteForPreset(
    scheme: String,
    readerPreset: ReadingPreset
): Pair<String, String> = ReaderColorScheme.paletteForPreset(scheme, readerPreset)

internal fun normalizeReaderOverrideColor(value: String?): String? =
    ReaderColorScheme.normalizeOverrideColor(value)

internal fun defaultReaderAccentColor(backgroundColor: String): String =
    ReaderColorScheme.defaultAccentColor(backgroundColor)

internal fun readerSelectionOverlayColor(color: String, alpha: Float): String {
    val clampedAlpha = alpha.coerceIn(0f, 1f)
    return runCatching {
        val parsed = android.graphics.Color.parseColor(color)
        val red = android.graphics.Color.red(parsed)
        val green = android.graphics.Color.green(parsed)
        val blue = android.graphics.Color.blue(parsed)
        "rgba($red,$green,$blue,$clampedAlpha)"
    }.getOrDefault("rgba(26,111,154,$clampedAlpha)")
}

internal fun readerColorOverrideHex(value: Long?): String? =
    value?.let { String.format(Locale.US, "#%08X", it) }

// ── Misc helpers ─────────────────────────────────────────────────────────

internal fun readerHeaderFooterReservedHeightDp(
    fontSizeSp: Int,
    verticalPaddingDp: Int
): Dp {
    val safeFont = fontSizeSp.coerceIn(10, 20).toFloat()
    val safePadding = verticalPaddingDp.coerceIn(0, 24).toFloat()
    return (safeFont + safePadding * 2f + 10f).dp
}

internal fun normalizedTocTitle(title: String): String =
    title.replace(Regex("\\s+"), " ").trim()

internal fun findReaderHardwareKeyHost(context: Context): ReaderHardwareKeyHost? = when (context) {
    is ReaderHardwareKeyHost -> context
    is ContextWrapper -> findReaderHardwareKeyHost(context.baseContext)
    else -> null
}

internal fun looksLikeReaderStyleJson(raw: String): Boolean = runCatching {
    JSONTokener(raw.trim()).nextValue() is org.json.JSONObject
}.getOrDefault(false)
