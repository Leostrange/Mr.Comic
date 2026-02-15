package com.example.feature.cbr

import android.content.Intent
import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

data class CbrLicenseInfo(
    val libraryName: String = "JunRAR",
    val version: String = "7.5.5",
    val license: String = "UnRAR License",
    val description: String = "Java library for extracting RAR archives",
    val restrictions: List<String> = listOf(
        "Cannot be used to create RAR archives",
        "Cannot be used to reverse-engineer RAR compression",
        "Distribution must include license notice"
    ),
    val sourceUrl: String = "https://github.com/junrar/junrar"
)

data class CbrLicenseUiState(
    val isCbrEnabled: Boolean = false,
    val isCbrAvailable: Boolean = true,
    val isLicenseAccepted: Boolean = false,
    val showLicenseDialog: Boolean = false,
    val licenseInfo: CbrLicenseInfo = CbrLicenseInfo()
)

@HiltViewModel
class CbrLicenseViewModel @Inject constructor() : ViewModel() {
    
    private val _uiState = MutableStateFlow(CbrLicenseUiState())
    val uiState: StateFlow<CbrLicenseUiState> = _uiState.asStateFlow()
    
    fun setCbrEnabled(enabled: Boolean) {
        _uiState.value = _uiState.value.copy(isCbrEnabled = enabled)
    }
    
    fun showLicenseDialog() {
        _uiState.value = _uiState.value.copy(showLicenseDialog = true)
    }
    
    fun hideLicenseDialog() {
        _uiState.value = _uiState.value.copy(showLicenseDialog = false)
    }
    
    fun acceptLicenseAndEnable() {
        _uiState.value = _uiState.value.copy(
            isLicenseAccepted = true,
            isCbrEnabled = true,
            showLicenseDialog = false
        )
    }
    
    fun openSourceUrl() {
        // This would typically use a navigation callback or Activity context
        // For now, just log it
        android.util.Log.d("CbrLicenseViewModel", "Opening source URL: ${_uiState.value.licenseInfo.sourceUrl}")
    }
}
