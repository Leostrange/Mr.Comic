package reader

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.File
import java.util.zip.ZipFile

class CbzReaderSafe(private val file: File) {
    fun getPages(): List<Bitmap> {
        val pages = mutableListOf<Bitmap>()
        ZipFile(file).use { zip ->
            zip.entries().asSequence()
                .filter { it.name.endsWith(".jpg", true) || it.name.endsWith(".png", true) }
                .sortedBy { it.name }
                .forEach { entry ->
                    val stream = zip.getInputStream(entry)
                    BitmapFactory.decodeStream(stream)?.let { bmp -> pages.add(bmp) }
                    stream.close()
                }
        }
        return pages
    }
}


