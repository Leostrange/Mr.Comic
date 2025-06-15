package com.example.mrcomic.ui.profiles

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.foundation.shape.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.*
import androidx.compose.ui.window.Dialog
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.*
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.*
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.encodeToString
import kotlinx.serialization.decodeFromString
import java.io.File
import java.util.*

/**
 * Система профилей пользователей для Mr.Comic
 * Поддерживает множественные профили, синхронизацию и персонализацию
 */

val Context.userProfilesDataStore: DataStore<Preferences> by preferencesDataStore(name = "user_profiles")

/**
 * Профиль пользователя
 */
@Serializable
data class UserProfile(
    val id: String = UUID.randomUUID().toString(),
    val name: String = "Новый пользователь",
    val displayName: String = "",
    val email: String = "",
    val avatarPath: String = "",
    val avatarColor: String = "#6750A4",
    val createdAt: Long = System.currentTimeMillis(),
    val lastActiveAt: Long = System.currentTimeMillis(),
    val isActive: Boolean = false,
    val isPrimary: Boolean = false,
    
    // Персональные настройки
    val preferredLanguage: String = "ru",
    val preferredThemeId: String = "material_you",
    val readingPreferences: ReadingPreferences = ReadingPreferences(),
    val libraryPreferences: LibraryPreferences = LibraryPreferences(),
    val privacySettings: PrivacySettings = PrivacySettings(),
    
    // Статистика
    val statistics: UserStatistics = UserStatistics(),
    
    // Синхронизация
    val syncSettings: SyncSettings = SyncSettings(),
    val cloudBackupEnabled: Boolean = false,
    val lastSyncAt: Long = 0L,
    
    // Персонализация
    val personalizedRecommendations: Boolean = true,
    val adaptiveInterface: Boolean = true,
    val learningEnabled: Boolean = true,
    val behaviorAnalytics: Boolean = true,
    
    // Родительский контроль
    val parentalControls: ParentalControls = ParentalControls(),
    val isChildProfile: Boolean = false,
    val parentProfileId: String? = null,
    
    // Достижения и геймификация
    val achievements: List<Achievement> = emptyList(),
    val level: Int = 1,
    val experience: Long = 0L,
    val badges: List<Badge> = emptyList(),
    
    // Социальные функции
    val socialSettings: SocialSettings = SocialSettings(),
    val friends: List<String> = emptyList(),
    val sharedLibraries: List<String> = emptyList()
)

/**
 * Настройки чтения
 */
@Serializable
data class ReadingPreferences(
    val defaultReadingMode: String = "single_page",
    val autoBookmark: Boolean = true,
    val readingReminders: Boolean = false,
    val nightModeSchedule: Boolean = false,
    val nightModeStartTime: String = "22:00",
    val nightModeEndTime: String = "06:00",
    val pageTransitionAnimation: String = "slide",
    val doubleTapAction: String = "zoom",
    val volumeKeyNavigation: Boolean = false,
    val keepScreenOn: Boolean = true,
    val fullscreenMode: Boolean = false,
    val hideSystemUI: Boolean = false,
    val customGestures: Map<String, String> = emptyMap()
)

/**
 * Настройки библиотеки
 */
@Serializable
data class LibraryPreferences(
    val defaultView: String = "grid",
    val sortBy: String = "title",
    val sortOrder: String = "asc",
    val showUnread: Boolean = true,
    val showCompleted: Boolean = true,
    val showInProgress: Boolean = true,
    val autoDownload: Boolean = false,
    val downloadQuality: String = "high",
    val storageLocation: String = "internal",
    val autoCleanup: Boolean = true,
    val cleanupAfterDays: Int = 30,
    val categories: List<String> = emptyList(),
    val customTags: List<String> = emptyList()
)

/**
 * Настройки приватности
 */
@Serializable
data class PrivacySettings(
    val shareReadingHistory: Boolean = false,
    val shareStatistics: Boolean = false,
    val allowRecommendations: Boolean = true,
    val dataCollection: Boolean = true,
    val crashReporting: Boolean = true,
    val analyticsEnabled: Boolean = true,
    val locationTracking: Boolean = false,
    val adPersonalization: Boolean = true,
    val profileVisibility: String = "private", // private, friends, public
    val showOnlineStatus: Boolean = false
)

/**
 * Статистика пользователя
 */
@Serializable
data class UserStatistics(
    val totalComicsRead: Int = 0,
    val totalPagesRead: Long = 0L,
    val totalReadingTime: Long = 0L, // в миллисекундах
    val averageReadingSpeed: Float = 0f, // страниц в минуту
    val favoriteGenres: List<String> = emptyList(),
    val readingStreak: Int = 0,
    val longestReadingStreak: Int = 0,
    val lastReadingDate: Long = 0L,
    val monthlyReadingGoal: Int = 0,
    val monthlyProgress: Int = 0,
    val yearlyReadingGoal: Int = 0,
    val yearlyProgress: Int = 0,
    val readingHeatmap: Map<String, Int> = emptyMap(), // дата -> количество страниц
    val deviceUsageStats: Map<String, Long> = emptyMap() // устройство -> время использования
)

/**
 * Настройки синхронизации
 */
@Serializable
data class SyncSettings(
    val syncEnabled: Boolean = false,
    val syncReadingProgress: Boolean = true,
    val syncBookmarks: Boolean = true,
    val syncSettings: Boolean = true,
    val syncLibrary: Boolean = true,
    val syncThemes: Boolean = true,
    val autoSync: Boolean = true,
    val syncOnWifiOnly: Boolean = true,
    val syncFrequency: String = "daily", // immediate, hourly, daily, weekly
    val conflictResolution: String = "latest" // latest, manual, merge
)

/**
 * Родительский контроль
 */
@Serializable
data class ParentalControls(
    val enabled: Boolean = false,
    val ageRating: String = "all", // all, 6+, 12+, 16+, 18+
    val allowedGenres: List<String> = emptyList(),
    val blockedGenres: List<String> = emptyList(),
    val timeRestrictions: Boolean = false,
    val allowedStartTime: String = "08:00",
    val allowedEndTime: String = "20:00",
    val weekdayTimeLimit: Int = 120, // минуты
    val weekendTimeLimit: Int = 180, // минуты
    val requireParentApproval: Boolean = false,
    val blockExplicitContent: Boolean = true,
    val safeSearch: Boolean = true
)

/**
 * Достижение
 */
@Serializable
data class Achievement(
    val id: String,
    val name: String,
    val description: String,
    val iconPath: String,
    val unlockedAt: Long,
    val category: String,
    val rarity: String, // common, rare, epic, legendary
    val experience: Int
)

/**
 * Значок
 */
@Serializable
data class Badge(
    val id: String,
    val name: String,
    val description: String,
    val iconPath: String,
    val earnedAt: Long,
    val level: Int = 1
)

/**
 * Социальные настройки
 */
@Serializable
data class SocialSettings(
    val allowFriendRequests: Boolean = true,
    val allowLibrarySharing: Boolean = false,
    val allowRecommendations: Boolean = true,
    val showReadingActivity: Boolean = false,
    val allowComments: Boolean = true,
    val allowRatings: Boolean = true,
    val publicProfile: Boolean = false,
    val discoverableByEmail: Boolean = false,
    val discoverableByUsername: Boolean = true
)

/**
 * Менеджер профилей пользователей
 */
object UserProfileManager {
    
    private val PROFILES_KEY = stringPreferencesKey("user_profiles")
    private val ACTIVE_PROFILE_KEY = stringPreferencesKey("active_profile_id")
    private val PROFILE_AVATARS_KEY = stringPreferencesKey("profile_avatars")
    
    private val json = Json { 
        ignoreUnknownKeys = true
        encodeDefaults = true
    }
    
    /**
     * Получение всех профилей
     */
    fun getAllProfiles(context: Context): Flow<List<UserProfile>> {
        return context.userProfilesDataStore.data.map { preferences ->
            val profilesJson = preferences[PROFILES_KEY] ?: "[]"
            try {
                json.decodeFromString<List<UserProfile>>(profilesJson)
            } catch (e: Exception) {
                // Создаем профиль по умолчанию
                listOf(createDefaultProfile())
            }
        }
    }
    
    /**
     * Получение активного профиля
     */
    fun getActiveProfile(context: Context): Flow<UserProfile?> {
        return context.userProfilesDataStore.data.map { preferences ->
            val activeProfileId = preferences[ACTIVE_PROFILE_KEY]
            val profilesJson = preferences[PROFILES_KEY] ?: "[]"
            
            if (activeProfileId != null) {
                try {
                    val profiles = json.decodeFromString<List<UserProfile>>(profilesJson)
                    profiles.find { it.id == activeProfileId }
                } catch (e: Exception) {
                    null
                }
            } else {
                null
            }
        }
    }
    
    /**
     * Создание нового профиля
     */
    suspend fun createProfile(
        context: Context,
        name: String,
        email: String = "",
        isChildProfile: Boolean = false,
        parentProfileId: String? = null
    ): UserProfile {
        
        val newProfile = UserProfile(
            name = name,
            displayName = name,
            email = email,
            isChildProfile = isChildProfile,
            parentProfileId = parentProfileId,
            parentalControls = if (isChildProfile) {
                ParentalControls(
                    enabled = true,
                    ageRating = "12+",
                    timeRestrictions = true,
                    blockExplicitContent = true,
                    safeSearch = true
                )
            } else {
                ParentalControls()
            }
        )
        
        context.userProfilesDataStore.edit { preferences ->
            val profilesJson = preferences[PROFILES_KEY] ?: "[]"
            val profiles = try {
                json.decodeFromString<List<UserProfile>>(profilesJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<UserProfile>()
            }
            
            profiles.add(newProfile)
            preferences[PROFILES_KEY] = json.encodeToString(profiles)
        }
        
        return newProfile
    }
    
    /**
     * Обновление профиля
     */
    suspend fun updateProfile(context: Context, profile: UserProfile) {
        context.userProfilesDataStore.edit { preferences ->
            val profilesJson = preferences[PROFILES_KEY] ?: "[]"
            val profiles = try {
                json.decodeFromString<List<UserProfile>>(profilesJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<UserProfile>()
            }
            
            val index = profiles.indexOfFirst { it.id == profile.id }
            if (index >= 0) {
                profiles[index] = profile.copy(lastActiveAt = System.currentTimeMillis())
                preferences[PROFILES_KEY] = json.encodeToString(profiles)
            }
        }
    }
    
    /**
     * Удаление профиля
     */
    suspend fun deleteProfile(context: Context, profileId: String) {
        context.userProfilesDataStore.edit { preferences ->
            val profilesJson = preferences[PROFILES_KEY] ?: "[]"
            val profiles = try {
                json.decodeFromString<List<UserProfile>>(profilesJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<UserProfile>()
            }
            
            profiles.removeAll { it.id == profileId }
            preferences[PROFILES_KEY] = json.encodeToString(profiles)
            
            // Если удаляем активный профиль, сбрасываем активность
            if (preferences[ACTIVE_PROFILE_KEY] == profileId) {
                preferences.remove(ACTIVE_PROFILE_KEY)
            }
        }
    }
    
    /**
     * Установка активного профиля
     */
    suspend fun setActiveProfile(context: Context, profileId: String) {
        context.userProfilesDataStore.edit { preferences ->
            preferences[ACTIVE_PROFILE_KEY] = profileId
            
            // Обновляем время последней активности
            val profilesJson = preferences[PROFILES_KEY] ?: "[]"
            val profiles = try {
                json.decodeFromString<List<UserProfile>>(profilesJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<UserProfile>()
            }
            
            val updatedProfiles = profiles.map { profile ->
                if (profile.id == profileId) {
                    profile.copy(
                        isActive = true,
                        lastActiveAt = System.currentTimeMillis()
                    )
                } else {
                    profile.copy(isActive = false)
                }
            }
            
            preferences[PROFILES_KEY] = json.encodeToString(updatedProfiles)
        }
    }
    
    /**
     * Создание профиля по умолчанию
     */
    private fun createDefaultProfile(): UserProfile {
        return UserProfile(
            name = "Основной профиль",
            displayName = "Пользователь",
            isPrimary = true,
            isActive = true
        )
    }
    
    /**
     * Обновление статистики профиля
     */
    suspend fun updateStatistics(
        context: Context,
        profileId: String,
        pagesRead: Int = 0,
        readingTime: Long = 0L,
        comicsCompleted: Int = 0
    ) {
        context.userProfilesDataStore.edit { preferences ->
            val profilesJson = preferences[PROFILES_KEY] ?: "[]"
            val profiles = try {
                json.decodeFromString<List<UserProfile>>(profilesJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<UserProfile>()
            }
            
            val index = profiles.indexOfFirst { it.id == profileId }
            if (index >= 0) {
                val profile = profiles[index]
                val updatedStats = profile.statistics.copy(
                    totalPagesRead = profile.statistics.totalPagesRead + pagesRead,
                    totalReadingTime = profile.statistics.totalReadingTime + readingTime,
                    totalComicsRead = profile.statistics.totalComicsRead + comicsCompleted,
                    lastReadingDate = System.currentTimeMillis()
                )
                
                profiles[index] = profile.copy(statistics = updatedStats)
                preferences[PROFILES_KEY] = json.encodeToString(profiles)
            }
        }
    }
    
    /**
     * Добавление достижения
     */
    suspend fun addAchievement(
        context: Context,
        profileId: String,
        achievement: Achievement
    ) {
        context.userProfilesDataStore.edit { preferences ->
            val profilesJson = preferences[PROFILES_KEY] ?: "[]"
            val profiles = try {
                json.decodeFromString<List<UserProfile>>(profilesJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<UserProfile>()
            }
            
            val index = profiles.indexOfFirst { it.id == profileId }
            if (index >= 0) {
                val profile = profiles[index]
                val updatedAchievements = profile.achievements.toMutableList()
                
                // Проверяем, что достижение еще не получено
                if (!updatedAchievements.any { it.id == achievement.id }) {
                    updatedAchievements.add(achievement)
                    
                    val updatedProfile = profile.copy(
                        achievements = updatedAchievements,
                        experience = profile.experience + achievement.experience
                    )
                    
                    profiles[index] = updatedProfile
                    preferences[PROFILES_KEY] = json.encodeToString(profiles)
                }
            }
        }
    }
    
    /**
     * Экспорт профиля
     */
    suspend fun exportProfile(context: Context, profileId: String): String? {
        val profiles = getAllProfiles(context).first()
        val profile = profiles.find { it.id == profileId }
        
        return profile?.let { json.encodeToString(it) }
    }
    
    /**
     * Импорт профиля
     */
    suspend fun importProfile(context: Context, profileJson: String): Boolean {
        return try {
            val profile = json.decodeFromString<UserProfile>(profileJson)
            val newProfile = profile.copy(
                id = UUID.randomUUID().toString(), // Новый ID для избежания конфликтов
                isActive = false,
                createdAt = System.currentTimeMillis()
            )
            
            context.userProfilesDataStore.edit { preferences ->
                val profilesJson = preferences[PROFILES_KEY] ?: "[]"
                val profiles = try {
                    json.decodeFromString<List<UserProfile>>(profilesJson).toMutableList()
                } catch (e: Exception) {
                    mutableListOf<UserProfile>()
                }
                
                profiles.add(newProfile)
                preferences[PROFILES_KEY] = json.encodeToString(profiles)
            }
            
            true
        } catch (e: Exception) {
            false
        }
    }
}

/**
 * Компонент выбора профиля
 */
@Composable
fun ProfileSelector(
    profiles: List<UserProfile>,
    activeProfile: UserProfile?,
    onProfileSelected: (UserProfile) -> Unit,
    onCreateProfile: () -> Unit,
    onEditProfile: (UserProfile) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyRow(
        modifier = modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        contentPadding = PaddingValues(horizontal = 16.dp)
    ) {
        items(profiles) { profile ->
            ProfileCard(
                profile = profile,
                isActive = profile.id == activeProfile?.id,
                onClick = { onProfileSelected(profile) },
                onEdit = { onEditProfile(profile) }
            )
        }
        
        item {
            AddProfileCard(onClick = onCreateProfile)
        }
    }
}

/**
 * Карточка профиля
 */
@Composable
private fun ProfileCard(
    profile: UserProfile,
    isActive: Boolean,
    onClick: () -> Unit,
    onEdit: () -> Unit,
    modifier: Modifier = Modifier
) {
    val animatedScale by animateFloatAsState(
        targetValue = if (isActive) 1.1f else 1f,
        animationSpec = spring(dampingRatio = Spring.DampingRatioMediumBouncy),
        label = "profile_scale"
    )
    
    val animatedElevation by animateDpAsState(
        targetValue = if (isActive) 8.dp else 2.dp,
        animationSpec = tween(300),
        label = "profile_elevation"
    )
    
    Card(
        modifier = modifier
            .size(120.dp)
            .graphicsLayer(scaleX = animatedScale, scaleY = animatedScale)
            .clickable { onClick() },
        elevation = CardDefaults.cardElevation(defaultElevation = animatedElevation),
        colors = CardDefaults.cardColors(
            containerColor = if (isActive) {
                MaterialTheme.colorScheme.primaryContainer
            } else {
                MaterialTheme.colorScheme.surface
            }
        ),
        border = if (isActive) {
            BorderStroke(2.dp, MaterialTheme.colorScheme.primary)
        } else null
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(12.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            // Аватар
            ProfileAvatar(
                profile = profile,
                size = 48.dp
            )
            
            // Имя
            Text(
                text = profile.displayName.ifEmpty { profile.name },
                style = MaterialTheme.typography.labelMedium,
                fontWeight = if (isActive) FontWeight.Bold else FontWeight.Normal,
                color = if (isActive) {
                    MaterialTheme.colorScheme.onPrimaryContainer
                } else {
                    MaterialTheme.colorScheme.onSurface
                },
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                textAlign = TextAlign.Center
            )
            
            // Индикатор активности
            if (isActive) {
                Icon(
                    imageVector = Icons.Default.CheckCircle,
                    contentDescription = "Активный профиль",
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(16.dp)
                )
            }
        }
        
        // Кнопка редактирования (показывается при долгом нажатии)
        var showEditButton by remember { mutableStateOf(false) }
        
        if (showEditButton) {
            Box(
                modifier = Modifier.fillMaxSize(),
                contentAlignment = Alignment.TopEnd
            ) {
                IconButton(
                    onClick = {
                        onEdit()
                        showEditButton = false
                    },
                    modifier = Modifier
                        .size(24.dp)
                        .background(
                            MaterialTheme.colorScheme.surface.copy(alpha = 0.9f),
                            CircleShape
                        )
                ) {
                    Icon(
                        imageVector = Icons.Default.Edit,
                        contentDescription = "Редактировать профиль",
                        modifier = Modifier.size(16.dp)
                    )
                }
            }
        }
    }
}

/**
 * Карточка добавления профиля
 */
@Composable
private fun AddProfileCard(
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier
            .size(120.dp)
            .clickable { onClick() },
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        ),
        border = BorderStroke(
            1.dp,
            MaterialTheme.colorScheme.outline.copy(alpha = 0.5f)
        )
    ) {
        Column(
            modifier = Modifier.fillMaxSize(),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Icon(
                imageVector = Icons.Default.Add,
                contentDescription = "Добавить профиль",
                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.size(32.dp)
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                text = "Добавить\nпрофиль",
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center,
                lineHeight = 14.sp
            )
        }
    }
}

/**
 * Аватар профиля
 */
@Composable
fun ProfileAvatar(
    profile: UserProfile,
    size: Dp = 40.dp,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .size(size)
            .clip(CircleShape)
            .background(
                Color(android.graphics.Color.parseColor(profile.avatarColor))
            ),
        contentAlignment = Alignment.Center
    ) {
        if (profile.avatarPath.isNotEmpty() && File(profile.avatarPath).exists()) {
            // Загружаем изображение аватара
            val bitmap = remember(profile.avatarPath) {
                BitmapFactory.decodeFile(profile.avatarPath)?.asImageBitmap()
            }
            
            bitmap?.let {
                Image(
                    bitmap = it,
                    contentDescription = "Аватар ${profile.name}",
                    modifier = Modifier.fillMaxSize(),
                    contentScale = ContentScale.Crop
                )
            } ?: ProfileInitials(profile, size)
        } else {
            ProfileInitials(profile, size)
        }
        
        // Индикатор детского профиля
        if (profile.isChildProfile) {
            Icon(
                imageVector = Icons.Default.ChildCare,
                contentDescription = "Детский профиль",
                tint = Color.White,
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .size(size * 0.3f)
                    .background(
                        MaterialTheme.colorScheme.primary,
                        CircleShape
                    )
                    .padding(2.dp)
            )
        }
    }
}

/**
 * Инициалы профиля
 */
@Composable
private fun ProfileInitials(
    profile: UserProfile,
    size: Dp
) {
    val initials = remember(profile.name) {
        profile.name.split(" ")
            .take(2)
            .mapNotNull { it.firstOrNull()?.uppercaseChar() }
            .joinToString("")
            .take(2)
    }
    
    Text(
        text = initials,
        style = MaterialTheme.typography.titleMedium,
        color = Color.White,
        fontWeight = FontWeight.Bold,
        fontSize = (size.value * 0.4f).sp
    )
}

