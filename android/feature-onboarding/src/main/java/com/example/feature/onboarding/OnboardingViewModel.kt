package com.example.feature.onboarding

import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.ui.theme.ReadingPreset
import com.example.core.ui.theme.style
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class OnboardingViewModel @Inject constructor(
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val prefs = UserPreferences(context.dataStore)

    fun completeOnboarding(
        preset: ReadingPreset,
        onCompleted: () -> Unit = {}
    ) {
        viewModelScope.launch {
            applyReadingPreset(preset)
            prefs.set(PreferencesKeys.APP_ONBOARDING_COMPLETED, true)
            onCompleted()
        }
    }

    private suspend fun applyReadingPreset(preset: ReadingPreset) {
        prefs.set(PreferencesKeys.READER_PRESET, preset.name)
        if (preset == ReadingPreset.CUSTOM) return

        val style = preset.style()
        prefs.set(PreferencesKeys.READING_BRIGHTNESS, style.brightness)
        prefs.set(PreferencesKeys.READER_IMMERSIVE_MODE, style.immersiveMode)
        prefs.set(PreferencesKeys.READER_PAGE_ANIMATION, style.pageAnimation)
        prefs.set(PreferencesKeys.READER_PAGE_SOUND, false)
        prefs.set(PreferencesKeys.TEXT_COLOR_SCHEME, style.textColorScheme)
        prefs.set(PreferencesKeys.TEXT_FONT_FAMILY, style.fontFamily)
        prefs.set(PreferencesKeys.TEXT_LINE_HEIGHT, style.lineHeight)
        prefs.set(PreferencesKeys.TEXT_BOLD, false)
    }
}
