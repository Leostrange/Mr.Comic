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
import androidx.compose.material3.RadioButton
import androidx.compose.material3.DropdownMenu
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember

@Composable
fun TranslationSettingsScreen(viewModel: TranslationViewModel) {
    val providers = viewModel.providers.collectAsState(initial = emptyList())
    var selectedProvider by remember { mutableStateOf("") }
    var ocrQuality by remember { mutableStateOf("medium") }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(stringResource(R.string.translation_settings), style = MaterialTheme.typography.headlineMedium)
        DropdownMenu(
            expanded = true,
            onDismissRequest = {},
            modifier = Modifier.padding(8.dp)
        ) {
            providers.value.forEach { provider ->
                Text(provider.name, modifier = Modifier.clickable {
                    selectedProvider = provider.name
                    viewModel.selectProvider(provider.name)
                })
            }
        }
        Text("OCR Качество")
        Row {
            RadioButton(selected = ocrQuality == "high", onClick = { ocrQuality = "high"; viewModel.setOcrQuality("high") })
            Text("Высокое")
            RadioButton(selected = ocrQuality == "medium", onClick = { ocrQuality = "medium"; viewModel.setOcrQuality("medium") })
            Text("Среднее")
        }
        Text("Язык перевода")
        DropdownMenu(
            expanded = true,
            onDismissRequest = {},
            modifier = Modifier.padding(8.dp)
        ) {
            listOf("en", "ru", "es").forEach { lang ->
                Text(lang, modifier = Modifier.clickable { viewModel.setTargetLanguage(lang) })
            }
        }
    }
} 