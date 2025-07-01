package reader

import com.github.junrar.Archive
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.File
import java.io.FileOutputStream

class CbrReaderSafe(private val file: File) {
    fun getPages(): List<Bitmap> {
        val archive = Archive(file)
        val pages = mutableListOf<Bitmap>()
        archive.fileHeaders
            .filter { !it.isDirectory && (it.fileName.endsWith(".jpg", true) || it.fileName.endsWith(".png", true)) }
            .sortedBy { it.fileName }
            .forEachIndexed { i, header ->
                val tmp = File.createTempFile("page_$i", ".jpg")
                FileOutputStream(tmp).use { os ->
                    archive.extractFile(header, os)
                }
                BitmapFactory.decodeFile(tmp.absolutePath)?.let { pages.add(it) }
                tmp.delete()
            }
        archive.close()
        return pages
    }
}


