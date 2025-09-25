package com.example.mrcomic.feature.settings

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.core.data.repository.AppIconRepository
import com.example.mrcomic.core.model.AppIcon
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class AppIconSettingsViewModel @Inject constructor(
    private val appIconRepository: AppIconRepository
) : ViewModel() {
    
    val selectedIcon: StateFlow<AppIcon> = appIconRepository.selectedIcon
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = AppIcon.DEFAULT
        )
    
    fun setAppIcon(icon: AppIcon) {
        viewModelScope.launch {
            try {
                appIconRepository.setAppIcon(icon)
            } catch (e: Exception) {
                // Handle error - could show a snackbar or error state
                e.printStackTrace()
            }
        }
    }
}