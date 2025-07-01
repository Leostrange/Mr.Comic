package reader

import android.content.Context
import android.net.Uri
import java.io.File
import java.io.FileOutputStream

fun copyUriToFile(context: Context, uri: Uri): File {
    val inputStream = context.contentResolver.openInputStream(uri)
        ?: throw IllegalArgumentException("Can't open input stream from URI:$uri")
    val tempFile = File.createTempFile("tmp_", null, context.cacheDir)
    FileOutputStream(tempFile).use { output ->
        inputStream.copyTo(output)
    }
    return tempFile
}


