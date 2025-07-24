import androidx.compose.foundation.layout.*
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.material3.OutlinedTextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import coil.compose.AsyncImage

@Composable
fun ThemesScreen(
    onEditTheme: (String) -> Unit,
    viewModel: ThemesViewModel = hiltViewModel()
) {
    val selectedTheme by viewModel.selectedTheme.collectAsState()
    val themes by viewModel.availableThemes.collectAsState()
    var importUrl by remember { mutableStateOf("") }

    Column(modifier = Modifier.fillMaxSize().padding(16.dp)) {
        Text(text = "Current Theme: ${selectedTheme.name}")
        Spacer(modifier = Modifier.height(8.dp))
        themes.forEach { themeName ->
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp)
            ) {
                AsyncImage(
                    model = viewModel.getThemePreviewPath(themeName),
                    contentDescription = null,
                    modifier = Modifier.size(64.dp)
                )
                Spacer(Modifier.width(8.dp))
                Text(themeName, modifier = Modifier.weight(1f))
                Button(onClick = { viewModel.selectCustomTheme(themeName) }) {
                    Text("Apply")
                }
                Spacer(Modifier.width(8.dp))
                Button(onClick = { onEditTheme(themeName) }) {
                    Text("Edit")
                }
            }
        }

        Spacer(modifier = Modifier.height(16.dp))
        OutlinedTextField(
            value = importUrl,
            onValueChange = { importUrl = it },
            label = { Text("Theme URL") },
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(modifier = Modifier.height(8.dp))
        Button(onClick = { viewModel.importTheme(importUrl); importUrl = "" }) {
            Text("Load from URL")
        }
    }
}

