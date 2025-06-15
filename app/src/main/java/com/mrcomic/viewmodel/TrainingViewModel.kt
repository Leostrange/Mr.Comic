import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.google.gson.Gson
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File

class TrainingViewModel : ViewModel() {
    fun exportTrainingData(context: Context, dao: ComicDao): File {
        val data = dao.getTrainingData()
        val json = Gson().toJson(data)
        val file = File(context.filesDir, "training_data.json")
        file.writeText(json)
        return file
    }

    fun startTraining(modelFile: File, dataFile: File) {
        viewModelScope.launch {
            withContext(Dispatchers.Default) {
                // PyTorchModel().fineTune(modelFile, dataFile)
            }
        }
    }
} 