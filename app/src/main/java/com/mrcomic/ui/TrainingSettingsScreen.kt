import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun TrainingSettingsScreen(viewModel: TrainingViewModel) {
    var selectedModel = remember { mutableStateOf("") }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text("Обучение переводчика", style = MaterialTheme.typography.headlineMedium)
        Button(onClick = { /* viewModel.exportTrainingData() */ }) {
            Text("Экспортировать обучающие данные")
        }
        Button(onClick = { /* viewModel.startTraining() */ }) {
            Text("Запустить обучение")
        }
    }
} 