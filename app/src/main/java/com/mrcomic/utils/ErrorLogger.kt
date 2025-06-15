import android.content.Context
import java.io.File

object ErrorLogger {
    fun logError(context: Context, error: String) {
        val logFile = File(context.filesDir, "errors.log")
        logFile.appendText("${System.currentTimeMillis()}: $error\n")
    }
} 