package reader

import android.net.Uri
import android.widget.Toast
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import com.folioreader.FolioReader

@Composable
fun MrComicViewerScreen(uri: Uri) {
    val context = LocalContext.current
    val bitmaps = remember { mutableStateListOf<android.graphics.Bitmap>() }
    var isLoading by remember { mutableStateOf(true) }

    LaunchedEffect(uri) {
        try {
            val reader = MrComicReader(context, uri)
            if (reader.isEpub()) {
                FolioReader.get().openBook(copyUriToFile(context, uri).absolutePath)
            } else {
                val pages = withContext(Dispatchers.IO) {
                    reader.readPages()
                }
                bitmaps.clear()
                bitmaps.addAll(pages)
            }
        } catch (e: Exception) {
            e.printStackTrace()
            Toast.makeText(context, "Ошибка при открытии файла", Toast.LENGTH_LONG).show()
        } finally {
            isLoading = false
        }
    }

    if (!isLoading) {
        LazyColumn(
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            items(bitmaps.size) { index ->
                Image(
                    bitmap = bitmaps[index].asImageBitmap(),
                    contentDescription = null,
                    modifier = Modifier
                        .fillMaxWidth()
                        .wrapContentHeight()
                )
            }
        }
    }
}


