import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import java.io.File
import java.io.FileInputStream
import java.io.IOException
import java.util.zip.ZipInputStream
import android.content.Context

class CbzPageExtractor(private val context: Context) {

    private var pageBitmaps: MutableList<Bitmap> = mutableListOf()
    private var totalPages: Int = 0
    private var tempFile: File? = null

    fun openCbz(uri: Uri): Int {
        try {
            tempFile = FileUtils.copyUriToTempFile(context, uri, "temp_cbz_comic.cbz")
            tempFile?.let {
                FileInputStream(it).use { fileInputStream ->
                    val zipInputStream = ZipInputStream(fileInputStream)
                    var zipEntry = zipInputStream.nextEntry
                    while (zipEntry != null) {
                        if (!zipEntry.isDirectory && isImageFile(zipEntry.name)) {
                            val bitmap = BitmapFactory.decodeStream(zipInputStream)
                            bitmap?.let { pageBitmaps.add(it) }
                        }
                        zipInputStream.closeEntry()
                        zipEntry = zipInputStream.nextEntry
                    }
                    totalPages = pageBitmaps.size
                    return totalPages
                }
            }
        } catch (e: IOException) {
            Log.e("CbzPageExtractor", "Error opening CBZ: ${e.message}", e)
        } finally {
            tempFile?.delete()
        }
        return 0
    }

    fun getPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= pageBitmaps.size) {
            return null
        }
        return pageBitmaps[pageIndex]
    }

    fun closeCbz() {
        pageBitmaps.forEach { it.recycle() }
        pageBitmaps.clear()
        totalPages = 0
        tempFile?.delete()
        tempFile = null
    }

    private fun isImageFile(fileName: String): Boolean {
        val lowerCaseFileName = fileName.lowercase()
        return lowerCaseFileName.endsWith(".jpg") ||
                lowerCaseFileName.endsWith(".jpeg") ||
                lowerCaseFileName.endsWith(".png") ||
                lowerCaseFileName.endsWith(".gif") ||
                lowerCaseFileName.endsWith(".bmp")
    }
}