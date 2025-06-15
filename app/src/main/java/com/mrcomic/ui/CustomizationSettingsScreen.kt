import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel

@Composable
fun CustomizationSettingsScreen(viewModel: SettingsViewModel = viewModel()) {
    val themes = viewModel.themes.collectAsState()
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text("Кастомизация", style = MaterialTheme.typography.headlineMedium)
        LazyColumn {
            items(themes.value) { theme ->
                Text(theme.name, modifier = Modifier.clickable { viewModel.applyTheme(theme) })
            }
        }
        Button(onClick = { /* Открыть файловый менеджер */ }) {
            Text("Импортировать тему")
        }
    }
} 