import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.unit.dp

@Composable
fun ThemesScreen(
    viewModel: ThemesViewModel = hiltViewModel()
) {
    val selectedTheme by viewModel.selectedTheme.collectAsState()

    Column(modifier = Modifier.fillMaxSize().padding(16.dp)) {
        Text(text = "Current Theme: ${selectedTheme.name}")
        Button(onClick = { viewModel.selectTheme(AppTheme.LIGHT) }) {
            Text("Light Theme")
        }
        Button(onClick = { viewModel.selectTheme(AppTheme.DARK) }) {
            Text("Dark Theme")
        }
        Button(onClick = { viewModel.selectTheme(AppTheme.SYSTEM) }) {
            Text("System Theme")
        }
    }
}

