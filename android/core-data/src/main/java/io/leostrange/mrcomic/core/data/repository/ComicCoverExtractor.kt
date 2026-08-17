package io.leostrange.mrcomic.core.data.repository

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.LinearGradient
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.RectF
import android.graphics.Shader
import android.graphics.Typeface
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.util.Base64
import android.util.Log
import android.util.Xml
import io.leostrange.mrcomic.core.model.ComicFormat
import kotlinx.coroutines.flow.first
import net.sf.sevenzipjbinding.ExtractOperationResult
import net.sf.sevenzipjbinding.IInArchive
import net.sf.sevenzipjbinding.PropID
import net.sf.sevenzipjbinding.SevenZip
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream
import net.lingala.zip4j.ZipFile
import org.apache.commons.compress.archivers.sevenz.SevenZFile
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import org.xmlpull.v1.XmlPullParser
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.InputStream
import java.io.PushbackReader
import java.io.RandomAccessFile
import java.io.Reader
import java.net.URLDecoder
import java.nio.charset.Charset
import kotlin.math.min
import kotlin.math.roundToInt

private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")

    internal fun ComicRepository.generateCoverPath(comicId: String, sourcePath: String, format: ComicFormat): String? {
        return try {
            val coverFile = coverFileForComic(comicId)
            if (coverFile.exists()) return coverFile.absolutePath
            val legacyCoverFile = legacyCoverFileForComic(comicId)
            if (legacyCoverFile.exists()) {
                runCatching { legacyCoverFile.copyTo(coverFile, overwrite = true) }
                if (coverFile.exists()) return coverFile.absolutePath
            }

            val bitmap = when (format) {
                ComicFormat.CBZ, ComicFormat.ZIP -> extractCoverFromZip(sourcePath)
                ComicFormat.CBR, ComicFormat.RAR -> extractCoverFromRar(sourcePath)
                ComicFormat.PDF -> extractCoverFromPdf(sourcePath)
                ComicFormat.SEVENZ -> extractCoverFrom7z(sourcePath)
                ComicFormat.TAR -> extractCoverFromTar(sourcePath)
                ComicFormat.FB2 -> extractCoverFromFb2(sourcePath)
                ComicFormat.EPUB -> extractCoverFromEpub(sourcePath)
                ComicFormat.DJVU -> extractCoverFromDjvuPlaceholder(sourcePath)
                else -> null
            } ?: return null

            coverFile.outputStream().use { out ->
                bitmap.compress(Bitmap.CompressFormat.JPEG, 82, out)
            }
            if (!bitmap.isRecycled) bitmap.recycle()
            coverFile.absolutePath
        } catch (e: Throwable) {
            Log.w(ComicRepository.TAG, "Cover generation failed for $sourcePath", e)
            null
        }
    }

    internal fun ComicRepository.coverFileForComic(comicId: String): File = File(persistentCoversDir, "$comicId.jpg")

    internal fun ComicRepository.legacyCoverFileForComic(comicId: String): File = File(legacyCoversDir, "$comicId.jpg")

    internal fun ComicRepository.extractCoverFromDjvuPlaceholder(sourcePath: String): Bitmap? {
        val width = 600
        val height = 900
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        val background = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            shader = LinearGradient(
                0f,
                0f,
                width.toFloat(),
                height.toFloat(),
                intArrayOf(
                    Color.parseColor("#1C2438"),
                    Color.parseColor("#344A72"),
                    Color.parseColor("#101828")
                ),
                floatArrayOf(0f, 0.45f, 1f),
                Shader.TileMode.CLAMP
            )
        }
        canvas.drawRect(0f, 0f, width.toFloat(), height.toFloat(), background)

        val frameRect = RectF(34f, 34f, width - 34f, height - 34f)
        val framePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.argb(34, 255, 255, 255)
            style = Paint.Style.FILL
        }
        canvas.drawRoundRect(frameRect, 42f, 42f, framePaint)

        val strokePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.argb(86, 255, 255, 255)
            style = Paint.Style.STROKE
            strokeWidth = 3f
        }
        canvas.drawRoundRect(frameRect, 42f, 42f, strokePaint)

        val badgePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.parseColor("#EEF2FF")
            textSize = 40f
            typeface = Typeface.create(Typeface.DEFAULT_BOLD, Typeface.BOLD)
            letterSpacing = 0.12f
        }
        canvas.drawText("DJVU", 74f, 124f, badgePaint)

        val title = resolveDisplayName(sourcePath)
            .substringBeforeLast('.')
            .ifBlank { "Document" }
            .trim()
            .take(48)

        val titlePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.WHITE
            textSize = 60f
            typeface = Typeface.create(Typeface.SERIF, Typeface.BOLD)
        }
        val maxTextWidth = width - 148f
        drawCoverTextBlock(
            canvas = canvas,
            text = title,
            x = 74f,
            startY = 270f,
            maxWidth = maxTextWidth,
            lineHeight = 72f,
            maxLines = 5,
            paint = titlePaint
        )

        val notePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.argb(220, 232, 236, 245)
            textSize = 30f
            typeface = Typeface.create(Typeface.SANS_SERIF, Typeface.NORMAL)
        }
        canvas.drawText("DjVu placeholder cover", 74f, height - 116f, notePaint)
        canvas.drawText("The file is saved and can be reopened later.", 74f, height - 74f, notePaint)

        return bitmap
    }

    internal fun ComicRepository.extractCoverFromZip(sourcePath: String): Bitmap? {
        var tempFile: File? = null
        var zip: ZipFile? = null
        return try {
            zip = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "zip")
                tempFile?.let { ZipFile(it) }
            } else {
                ZipFile(sourcePath)
            } ?: return null

            val candidates = zip.fileHeaders
                .filter { !it.isDirectory }
                .sortedBy { it.fileName }

            val coverBitmap = candidates
                .asSequence()
                .filter { isImageName(it.fileName) }
                .mapNotNull { header -> zip.getInputStream(header).use(::decodeCoverBitmap) }
                .firstOrNull()
                ?: candidates
                    .asSequence()
                    .mapNotNull { header -> zip.getInputStream(header).use(::decodeCoverBitmap) }
                    .firstOrNull()

            coverBitmap
        } catch (e: Exception) {
            Log.w(ComicRepository.TAG, "ZIP cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { zip?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    internal fun ComicRepository.extractCoverFromRar(sourcePath: String): Bitmap? {
        var tempFile: File? = null
        var randomAccessFile: RandomAccessFile? = null
        var inputStream: RandomAccessFileInStream? = null
        var archive: IInArchive? = null
        return try {
            val file = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "rar")
                tempFile
            } else {
                File(sourcePath)
            } ?: return null

            randomAccessFile = RandomAccessFile(file, "r")
            inputStream = RandomAccessFileInStream(randomAccessFile)
            runCatching { SevenZip.initSevenZipFromPlatformJAR(context.cacheDir) }
            archive = SevenZip.openInArchive(null, inputStream)

            val itemIndices = (0 until archive.getNumberOfItems())
                .filter { index ->
                    val fileName = archive.getStringProperty(index, PropID.PATH)?.trim().orEmpty()
                    fileName.isNotBlank() && !archive.getProperty(index, PropID.IS_FOLDER).asBooleanFlag()
                }

            val coverBitmap = itemIndices
                .asSequence()
                .filter { index ->
                    val fileName = archive.getStringProperty(index, PropID.PATH)?.trim().orEmpty()
                    isImageName(fileName)
                }
                .mapNotNull { index -> extractRarEntryBytes(archive, index)?.let(::decodeCoverBytes) }
                .firstOrNull()
                ?: itemIndices
                    .asSequence()
                    .mapNotNull { index -> extractRarEntryBytes(archive, index)?.let(::decodeCoverBytes) }
                    .firstOrNull()

            coverBitmap
        } catch (e: Throwable) {
            // Catch Throwable: 7-Zip bindings can still surface native errors for corrupted archives.
            Log.w(ComicRepository.TAG, "RAR cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { archive?.close() } catch (_: Exception) {}
            try { inputStream?.close() } catch (_: Exception) {}
            try { randomAccessFile?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    internal fun ComicRepository.extractCoverFromPdf(sourcePath: String): Bitmap? {
        var descriptor: ParcelFileDescriptor? = null
        var renderer: PdfRenderer? = null
        return try {
            descriptor = if (sourcePath.startsWith("content://")) {
                context.contentResolver.openFileDescriptor(Uri.parse(sourcePath), "r")
            } else {
                ParcelFileDescriptor.open(File(sourcePath), ParcelFileDescriptor.MODE_READ_ONLY)
            }
            renderer = descriptor?.let { PdfRenderer(it) } ?: return null
            if (renderer.pageCount <= 0) return null

            val page = renderer.openPage(0)
            try {
                val targetWidth = 420
                val targetHeight = ((page.height.toFloat() / page.width.toFloat()) * targetWidth).roundToInt().coerceAtLeast(1)
                // ARGB_8888 обязателен: PdfRenderer не поддерживает RGB_565 (рендер упадёт)
                val bitmap = Bitmap.createBitmap(targetWidth, targetHeight, Bitmap.Config.ARGB_8888)
                bitmap.eraseColor(android.graphics.Color.WHITE)
                val matrix = Matrix().apply {
                    setScale(targetWidth / page.width.toFloat(), targetHeight / page.height.toFloat())
                }
                page.render(bitmap, null, matrix, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
                scaleForCover(bitmap)
            } finally {
                page.close()
            }
        } catch (e: Exception) {
            Log.w(ComicRepository.TAG, "PDF cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { renderer?.close() } catch (_: Exception) {}
            try { descriptor?.close() } catch (_: Exception) {}
        }
    }

    internal fun ComicRepository.extractCoverFrom7z(sourcePath: String): Bitmap? {
        var tempFile: File? = null
        var szFile: SevenZFile? = null
        return try {
            val file = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "7z")
                tempFile ?: return null
            } else {
                File(sourcePath)
            }
            @Suppress("DEPRECATION")
            szFile = SevenZFile(file)
            val candidates = szFile.entries.toList()
                .filter { !it.isDirectory }
                .sortedBy { it.name }

            val coverBitmap = candidates
                .asSequence()
                .filter { isImageName(it.name) }
                .mapNotNull { entry -> szFile.getInputStream(entry).use(::decodeCoverBitmap) }
                .firstOrNull()
                ?: candidates
                    .asSequence()
                    .mapNotNull { entry -> szFile.getInputStream(entry).use(::decodeCoverBitmap) }
                    .firstOrNull()

            coverBitmap
        } catch (e: Exception) {
            Log.w(ComicRepository.TAG, "7z cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { szFile?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    internal fun ComicRepository.extractCoverFromTar(sourcePath: String): Bitmap? {
        return try {
            val inputStream: InputStream = if (sourcePath.startsWith("content://"))
                context.contentResolver.openInputStream(Uri.parse(sourcePath)) ?: return null
            else
                File(sourcePath).inputStream()
            TarArchiveInputStream(inputStream).use { tis ->
                val fallbackBitmaps = mutableListOf<Pair<String, Bitmap>>()
                var entry = tis.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory) {
                        val name = entry.name ?: ""
                        val bitmap = decodeCoverBitmap(ByteArrayInputStream(tis.readBytes()))
                        if (bitmap != null) {
                            if (isImageName(name)) {
                                return bitmap
                            }
                            fallbackBitmaps += name to bitmap
                        }
                    }
                    entry = tis.nextEntry
                }
                fallbackBitmaps.sortedBy { it.first }.firstOrNull()?.second
            }
        } catch (e: Exception) {
            Log.w(ComicRepository.TAG, "TAR cover extraction failed for $sourcePath", e)
            null
        }
    }

    internal fun ComicRepository.extractRarEntryBytes(archive: IInArchive, index: Int): ByteArray? {
        val bytes = ByteArrayOutputStream()
        val result = archive.extractSlow(index, object : net.sf.sevenzipjbinding.ISequentialOutStream {
            override fun write(data: ByteArray?): Int {
                if (data == null || data.isEmpty()) return 0
                bytes.write(data)
                return data.size
            }
        })
        return if (result == ExtractOperationResult.OK) bytes.toByteArray() else null
    }

    internal fun ComicRepository.decodeCoverBytes(bytes: ByteArray): Bitmap? =
        decodeCoverBitmap(ByteArrayInputStream(bytes))

    internal fun ComicRepository.extractCoverFromFb2(sourcePath: String): Bitmap? {
        return try {
            openSourceInputStream(sourcePath)?.use { source ->
                val buffered = source.buffered()
                val charset = detectFb2CoverCharset(buffered)
                createFb2CoverXmlReader(buffered, charset).use { reader ->
                    val parser = Xml.newPullParser().apply {
                        setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, true)
                        setInput(reader)
                    }
                    var event = parser.eventType
                    while (event != XmlPullParser.END_DOCUMENT) {
                        if (event == XmlPullParser.START_TAG && parser.name == "binary") {
                            val contentType = parser.getAttributeValue(null, "content-type") ?: ""
                            if (contentType.startsWith("image/")) {
                                decodeFb2BinaryCover(parser)?.let { return it }
                            }
                        }
                        event = parser.next()
                    }
                }
            }
            null
        } catch (e: Exception) {
            Log.w(ComicRepository.TAG, "FB2 cover extraction failed for $sourcePath", e)
            null
        }
    }

    internal fun ComicRepository.openSourceInputStream(sourcePath: String): InputStream? =
        if (sourcePath.startsWith("content://")) {
            context.contentResolver.openInputStream(Uri.parse(sourcePath))
        } else {
            File(sourcePath).inputStream()
        }

    internal fun ComicRepository.decodeFb2BinaryCover(parser: XmlPullParser): Bitmap? {
        val base64Data = StringBuilder()
        var event = parser.next()
        while (event != XmlPullParser.END_DOCUMENT) {
            when (event) {
                XmlPullParser.TEXT, XmlPullParser.CDSECT -> base64Data.append(parser.text)
                XmlPullParser.END_TAG -> if (parser.name == "binary") break
            }
            event = parser.next()
        }
        if (base64Data.isBlank()) return null
        val bytes = Base64.decode(base64Data.toString(), Base64.DEFAULT)
        return if (bytes.isNotEmpty()) decodeCoverBitmap(ByteArrayInputStream(bytes)) else null
    }

    internal fun ComicRepository.detectFb2CoverCharset(input: InputStream): Charset {
        val markLimit = 4096
        input.mark(markLimit)
        val buffer = ByteArray(markLimit)
        val read = input.read(buffer)
        input.reset()
        val peek = if (read > 0) buffer.copyOf(read).toString(Charsets.ISO_8859_1) else ""
        val declaredEnc = Regex("""encoding\s*=\s*["']([^"']+)["']""", RegexOption.IGNORE_CASE)
            .find(peek)
            ?.groupValues
            ?.get(1)
            ?: "UTF-8"
        return runCatching { Charset.forName(declaredEnc) }.getOrElse { Charsets.UTF_8 }
    }

    internal fun ComicRepository.createFb2CoverXmlReader(input: InputStream, charset: Charset): Reader {
        val standardXmlEntities = setOf("amp", "lt", "gt", "apos", "quot")
        val fb2HtmlEntities = mapOf(
            "nbsp" to "\u00A0",
            "mdash" to "\u2014",
            "ndash" to "\u2013",
            "laquo" to "\u00AB",
            "raquo" to "\u00BB",
            "hellip" to "\u2026"
        )

        return object : PushbackReader(input.reader(charset), 64) {
            private val entityBuffer = StringBuilder()

            override fun read(): Int {
                val current = super.read()
                if (current != '&'.code) return current

                entityBuffer.setLength(0)
                var next = super.read()
                while (next != -1 && next != ';'.code && next != '&'.code && entityBuffer.length < 32) {
                    entityBuffer.append(next.toChar())
                    next = super.read()
                }

                return if (next == ';'.code) {
                    val entity = entityBuffer.toString()
                    when {
                        entity in fb2HtmlEntities -> fb2HtmlEntities.getValue(entity).first().code
                        entity in standardXmlEntities || entity.startsWith("#") -> {
                            unreadString("$entity;")
                            '&'.code
                        }
                        else -> {
                            unreadString("amp;$entity;")
                            '&'.code
                        }
                    }
                } else {
                    if (next != -1) unread(next)
                    unreadString("amp;$entityBuffer")
                    '&'.code
                }
            }

            override fun read(cbuf: CharArray, off: Int, len: Int): Int {
                if (len <= 0) return 0
                var count = 0
                while (count < len) {
                    val current = read()
                    if (current == -1) break
                    cbuf[off + count] = current.toChar()
                    count++
                }
                return if (count == 0) -1 else count
            }

            private fun unreadString(value: String) {
                for (index in value.length - 1 downTo 0) {
                    unread(value[index].code)
                }
            }
        }
    }

    // ── EPUB cover ────────────────────────────────────────────────────────────

    internal fun ComicRepository.extractCoverFromEpub(sourcePath: String): Bitmap? {
        var tempFile: File? = null
        var zip: ZipFile? = null
        return try {
            zip = if (sourcePath.startsWith("content://")) {
                tempFile = copyContentUriToTemp(Uri.parse(sourcePath), "epub")
                tempFile?.let { ZipFile(it) }
            } else {
                ZipFile(sourcePath)
            } ?: return null

            val stream = findEpubCoverStream(zip) ?: return null
            stream.use { decodeCoverBitmap(it) }
        } catch (e: Exception) {
            Log.w(ComicRepository.TAG, "EPUB cover extraction failed for $sourcePath", e)
            null
        } finally {
            try { zip?.close() } catch (_: Exception) {}
            tempFile?.delete()
        }
    }

    internal fun ComicRepository.findEpubCoverStream(zip: ZipFile): InputStream? {
        // Step 1: find OPF via container.xml
        val containerHeader = zip.getFileHeader("META-INF/container.xml")
            ?: return firstZipImageStream(zip)
        val opfPath = zip.getInputStream(containerHeader).use { stream ->
            val parser = Xml.newPullParser().apply {
                setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
                setInput(stream, null)
            }
            var ev = parser.eventType
            while (ev != XmlPullParser.END_DOCUMENT) {
                if (ev == XmlPullParser.START_TAG && parser.name == "rootfile")
                    return@use parser.getAttributeValue(null, "full-path")
                ev = parser.next()
            }
            null
        } ?: return firstZipImageStream(zip)

        val opfDir = opfPath.substringBeforeLast('/', "")
        val opfHeader = zip.getFileHeader(opfPath) ?: return firstZipImageStream(zip)

        // Step 2: parse OPF manifest for cover-image
        data class ManifestItem(val href: String, val mediaType: String, val properties: String)
        val manifest = mutableMapOf<String, ManifestItem>()
        var coverId: String? = null

        zip.getInputStream(opfHeader).use { stream ->
            val parser = Xml.newPullParser().apply {
                setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
                setInput(stream, null)
            }
            var inManifest = false
            var ev = parser.eventType
            while (ev != XmlPullParser.END_DOCUMENT) {
                when (ev) {
                    XmlPullParser.START_TAG -> when (parser.name.lowercase()) {
                        "manifest" -> inManifest = true
                        "item" -> if (inManifest) {
                            val id    = parser.getAttributeValue(null, "id") ?: ""
                            val href  = parser.getAttributeValue(null, "href") ?: ""
                            val mt    = parser.getAttributeValue(null, "media-type") ?: ""
                            val props = parser.getAttributeValue(null, "properties") ?: ""
                            if (id.isNotEmpty() && href.isNotEmpty() && mt.startsWith("image/"))
                                manifest[id] = ManifestItem(href, mt, props)
                        }
                        // EPUB2: <meta name="cover" content="itemId"/>
                        "meta" -> {
                            if (parser.getAttributeValue(null, "name") == "cover")
                                coverId = parser.getAttributeValue(null, "content")
                        }
                    }
                    XmlPullParser.END_TAG ->
                        if (parser.name.lowercase() == "manifest") inManifest = false
                }
                ev = parser.next()
            }
        }

        // Priority: EPUB3 properties="cover-image" > EPUB2 meta > first image
        val item = manifest.values.firstOrNull { "cover-image" in it.properties }
            ?: coverId?.let { manifest[it] }
            ?: manifest.values.firstOrNull()
            ?: return firstZipImageStream(zip)

        val decoded = try { URLDecoder.decode(item.href, "UTF-8") } catch (_: Exception) { item.href }
        val entry = normalizePaths(if (opfDir.isEmpty()) decoded else "$opfDir/$decoded")
        return zip.getFileHeader(entry)?.let { zip.getInputStream(it) }
            ?: firstZipImageStream(zip)
    }

    internal fun ComicRepository.firstZipImageStream(zip: ZipFile): InputStream? {
        val header = zip.fileHeaders
            .filter { !it.isDirectory && isImageName(it.fileName) }
            .minByOrNull { it.fileName }
            ?: return null
        return zip.getInputStream(header)
    }

    /** Resolves `..` segments in ZIP entry paths */
    internal fun ComicRepository.normalizePaths(p: String): String {
        val stack = ArrayDeque<String>()
        for (part in p.split('/')) when (part) {
            ".." -> if (stack.isNotEmpty()) stack.removeLast()
            ".", "" -> {}
            else -> stack.addLast(part)
        }
        return stack.joinToString("/")
    }

    // ── ComicInfo.xml (CBZ metadata standard) ────────────────────────────────

    internal fun ComicRepository.decodeCoverBitmap(input: InputStream): Bitmap? {
        val bytes = input.readBytes()
        if (bytes.isEmpty()) return null

        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
        val sample = calculateInSampleSize(bounds.outWidth, bounds.outHeight, 700, 1000)

        val options = BitmapFactory.Options().apply {
            inPreferredConfig = Bitmap.Config.RGB_565
            inSampleSize = sample.coerceAtLeast(1)
        }
        val decoded = BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options) ?: return null
        return scaleForCover(decoded)
    }

    internal fun ComicRepository.scaleForCover(source: Bitmap): Bitmap {
        val maxWidth = 360
        val maxHeight = 520
        val scale = min(maxWidth / source.width.toFloat(), maxHeight / source.height.toFloat())
        if (scale >= 1f) return source
        val width = (source.width * scale).roundToInt().coerceAtLeast(1)
        val height = (source.height * scale).roundToInt().coerceAtLeast(1)
        val resized = Bitmap.createScaledBitmap(source, width, height, true)
        if (resized != source) source.recycle()
        return resized
    }

    internal fun ComicRepository.resolveDisplayName(sourcePath: String): String = runCatching {
        if (sourcePath.startsWith("content://")) {
            context.contentResolver.query(
                Uri.parse(sourcePath),
                arrayOf(android.provider.OpenableColumns.DISPLAY_NAME),
                null,
                null,
                null
            )?.use { cursor ->
                if (cursor.moveToFirst()) cursor.getString(0) else null
            }
        } else {
            File(sourcePath).name
        }
    }.getOrNull().orEmpty().ifBlank { "Document" }

    internal fun ComicRepository.drawCoverTextBlock(
        canvas: Canvas,
        text: String,
        x: Float,
        startY: Float,
        maxWidth: Float,
        lineHeight: Float,
        maxLines: Int,
        paint: Paint
    ) {
        val words = text.split(Regex("\\s+")).filter { it.isNotBlank() }
        if (words.isEmpty()) return

        val lines = mutableListOf<String>()
        var currentLine = ""
        for (word in words) {
            val candidate = if (currentLine.isBlank()) word else "$currentLine $word"
            if (paint.measureText(candidate) <= maxWidth || currentLine.isBlank()) {
                currentLine = candidate
            } else {
                lines += currentLine
                currentLine = word
                if (lines.size == maxLines - 1) break
            }
        }
        if (currentLine.isNotBlank() && lines.size < maxLines) {
            lines += currentLine
        }
        if (lines.size == maxLines && words.joinToString(" ").length > lines.joinToString(" ").length) {
            lines[lines.lastIndex] = lines.last().trimEnd('.', '…') + "…"
        }

        lines.forEachIndexed { index, line ->
            canvas.drawText(line, x, startY + index * lineHeight, paint)
        }
    }

    internal fun ComicRepository.calculateInSampleSize(width: Int, height: Int, reqWidth: Int, reqHeight: Int): Int {
        var inSampleSize = 1
        if (height > reqHeight || width > reqWidth) {
            var halfHeight = height / 2
            var halfWidth = width / 2
            while ((halfHeight / inSampleSize) >= reqHeight && (halfWidth / inSampleSize) >= reqWidth) {
                inSampleSize *= 2
            }
        }
        return inSampleSize
    }

    internal fun ComicRepository.copyContentUriToTemp(uri: Uri, extension: String): File? {
        return try {
            val tempDir = File(context.cacheDir, "import_tmp").apply { mkdirs() }
            val tempFile = File(tempDir, "comic_${uri.hashCode()}_${System.nanoTime()}.$extension")
            context.contentResolver.openInputStream(uri)?.use { input ->
                tempFile.outputStream().use { output -> input.copyTo(output) }
            } ?: return null
            tempFile
        } catch (e: Exception) {
            Log.w(ComicRepository.TAG, "Temp copy failed for $uri", e)
            null
        }
    }

    internal fun ComicRepository.isImageName(name: String?): Boolean {
        val ext = name?.lowercase()?.substringAfterLast('.', "") ?: return false
        return ext in IMAGE_EXTENSIONS
    }

private fun Any?.asBooleanFlag(): Boolean = when (this) {
    is Boolean -> this
    is Number -> toInt() != 0
    is String -> equals("true", ignoreCase = true) || equals("1")
    else -> false
}
