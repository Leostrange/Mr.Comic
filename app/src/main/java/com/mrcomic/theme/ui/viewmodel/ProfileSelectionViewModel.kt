package com.example.mrcomic.theme.ui.viewmodel

import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.theme.data.model.User
import com.example.mrcomic.theme.data.repository.UserRepository
import com.example.mrcomic.data.ActiveProfileManager
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import kotlinx.coroutines.flow.first

class ProfileSelectionViewModel(
    private val context: Context,
    private val userRepository: UserRepository
) : ViewModel() {
    val users: StateFlow<List<User>> = userRepository.getAllUsers()
        .stateIn(viewModelScope, SharingStarted.Lazily, emptyList())
    val activeProfileId: StateFlow<String?> = ActiveProfileManager.getActiveProfileId(context)
        .stateIn(viewModelScope, SharingStarted.Lazily, null)

    fun selectProfile(userId: String) {
        viewModelScope.launch {
            ActiveProfileManager.setActiveProfileId(context, userId)
        }
    }

    fun createProfile(user: User) {
        viewModelScope.launch {
            userRepository.insertUser(user)
            ActiveProfileManager.setActiveProfileId(context, user.id)
        }
    }

    fun deleteProfile(user: User) {
        viewModelScope.launch {
            userRepository.deleteUser(user)
            // Если удалён активный профиль — сбросить активный
            val currentId = activeProfileId.value
            if (currentId == user.id) {
                ActiveProfileManager.clearActiveProfileId(context)
            }
        }
    }
} 