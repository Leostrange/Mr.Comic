import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import java.io.File

@Composable
fun ErrorLogScreen() {
    val context = LocalContext.current
    val logFile = remember { File(context.filesDir, "errors.log") }
    val logText = remember { if (logFile.exists()) logFile.readText() else "" }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text("Лог ошибок", style = MaterialTheme.typography.headlineMedium)
        Text(logText, modifier = Modifier.verticalScroll(rememberScrollState()))
        Button(onClick = { /* Экспортировать logFile */ }) {
            Text("Экспортировать ошибки")
        }
    }
} 