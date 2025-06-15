import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.drawPath
import androidx.compose.ui.unit.dp

@Composable
fun AnnotationScreen(annotation: Annotation) {
    Column(modifier = Modifier.fillMaxSize().padding(16.dp)) {
        Text(text = annotation.text ?: "")
        Canvas(modifier = Modifier.size(300.dp)) {
            // Пример: отрисовка пути, если drawingPath сериализован и десериализован в Path
            // drawPath(drawingPath, Color.Black, style = Stroke(width = 5f))
        }
    }
} 