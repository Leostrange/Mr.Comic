import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.github.mikephil.charting.charts.LineChart
import com.github.mikephil.charting.data.LineData
import com.github.mikephil.charting.data.LineDataSet
import androidx.compose.ui.viewinterop.AndroidView

@Composable
fun AnalyticsScreen(viewModel: StatsViewModel) {
    val stats = viewModel.stats.collectAsState()
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text("Аналитика", style = MaterialTheme.typography.headlineMedium)
        AndroidView(
            factory = { context ->
                LineChart(context).apply {
                    data = LineData(stats.value.map { LineDataSet(it.entries, it.label) })
                }
            },
            modifier = Modifier.height(200.dp)
        )
        Button(onClick = { viewModel.exportToCsv() }) {
            Text("Экспорт в CSV")
        }
    }
} 