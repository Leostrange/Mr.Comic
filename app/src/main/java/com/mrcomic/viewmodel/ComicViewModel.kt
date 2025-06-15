import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

class ComicViewModel : ViewModel() {
    private val _isDoublePage = MutableStateFlow(false)
    val isDoublePage: StateFlow<Boolean> = _isDoublePage
    fun setDoublePageMode(enabled: Boolean) { _isDoublePage.value = enabled }
} 