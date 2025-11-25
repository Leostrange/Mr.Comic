package com.example.core.data.permission

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import androidx.core.content.ContextCompat
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import javax.inject.Inject
import javax.inject.Singleton

data class PermissionState(
    val isGranted: Boolean = false,
    val needsRationale: Boolean = false,
    val permissionType: PermissionType = PermissionType.NONE
)

enum class PermissionType {
    NONE,
    READ_EXTERNAL_STORAGE,
    READ_MEDIA_IMAGES
}

@Singleton
class StoragePermissionManager @Inject constructor(
    @ApplicationContext private val context: Context
) {
    
    private val _permissionState = MutableStateFlow(checkCurrentPermission())
    val permissionState: StateFlow<PermissionState> = _permissionState.asStateFlow()
    
    fun checkCurrentPermission(): PermissionState {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            val isGranted = ContextCompat.checkSelfPermission(
                context,
                Manifest.permission.READ_MEDIA_IMAGES
            ) == PackageManager.PERMISSION_GRANTED
            
            return PermissionState(
                isGranted = isGranted,
                needsRationale = false,
                permissionType = PermissionType.READ_MEDIA_IMAGES
            )
        } else {
            val isGranted = ContextCompat.checkSelfPermission(
                context,
                Manifest.permission.READ_EXTERNAL_STORAGE
            ) == PackageManager.PERMISSION_GRANTED
            
            return PermissionState(
                isGranted = isGranted,
                needsRationale = false,
                permissionType = PermissionType.READ_EXTERNAL_STORAGE
            )
        }
    }
    
    fun getRequiredPermission(): String {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            Manifest.permission.READ_MEDIA_IMAGES
        } else {
            Manifest.permission.READ_EXTERNAL_STORAGE
        }
    }
    
    fun updatePermissionState(granted: Boolean, shouldShowRationale: Boolean = false) {
        _permissionState.value = PermissionState(
            isGranted = granted,
            needsRationale = shouldShowRationale,
            permissionType = checkCurrentPermission().permissionType
        )
    }
    
    fun hasStoragePermission(): Boolean {
        return checkCurrentPermission().isGranted
    }
    
    fun refresh() {
        _permissionState.value = checkCurrentPermission()
    }
}
