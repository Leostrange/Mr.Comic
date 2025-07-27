package reader

import android.net.Uri
import android.widget.Toast
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
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
    var errorMessage by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(uri) {
        try {
            isLoading = true
            errorMessage = null
            val reader = MrComicReader(context, uri)
            
            if (reader.isEpub()) {
                try {
                    FolioReader.get().openBook(copyUriToFile(context, uri).absolutePath)
                } catch (e: Exception) {
                    errorMessage = "Ошибка при открытии EPUB: ${e.message}"
                }
            } else {
                val pages = withContext(Dispatchers.IO) {
                    try {
                        reader.readPages()
                    } catch (e: Exception) {
                        throw Exception("Ошибка при чтении страниц: ${e.message}", e)
                    }
                }
                bitmaps.clear()
                bitmaps.addAll(pages)
            }
        } catch (e: Exception) {
            e.printStackTrace()
            errorMessage = when {
                e.message?.contains("encrypted", ignoreCase = true) == true -> 
                    "Файл защищен паролем и не может быть открыт"
                e.message?.contains("format", ignoreCase = true) == true -> 
                    "Неподдерживаемый формат файла"
                e.message?.contains("corrupted", ignoreCase = true) == true -> 
                    "Файл поврежден"
                else -> "Ошибка при открытии файла: ${e.message}"
            }
        } finally {
            isLoading = false
        }
    }

    when {
        isLoading -> {
            Box(
                modifier = Modifier.fillMaxSize(),
                contentAlignment = Alignment.Center
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    CircularProgressIndicator()
                    Spacer(modifier = Modifier.height(16.dp))
                    Text("Загрузка файла...")
                }
            }
        }
        
        errorMessage != null -> {
            Box(
                modifier = Modifier.fillMaxSize(),
                contentAlignment = Alignment.Center
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    modifier = Modifier.padding(16.dp)
                ) {
                    Text(
                        text = errorMessage!!,
                        color = MaterialTheme.colorScheme.error,
                        style = MaterialTheme.typography.bodyLarge
                    )
                }
            }
        }
        
        bitmaps.isEmpty() -> {
            Box(
                modifier = Modifier.fillMaxSize(),
                contentAlignment = Alignment.Center
            ) {
                Text("Не удалось найти страницы в файле")
            }
        }
        
        else -> {
            LazyColumn(
                modifier = Modifier.fillMaxSize(),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                items(bitmaps.size) { index ->
                    Image(
                        bitmap = bitmaps[index].asImageBitmap(),
                        contentDescription = "Страница ${index + 1}",
                        modifier = Modifier
                            .fillMaxWidth()
                            .wrapContentHeight()
                    )
                }
            }
        }
    }
}


