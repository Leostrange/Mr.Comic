@file:OptIn(androidx.compose.foundation.layout.ExperimentalLayoutApi::class)

package io.leostrange.mrcomic.feature.settings.ui

import android.app.ActivityManager
import android.content.Context
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoMode
import androidx.compose.material.icons.filled.BatterySaver
import androidx.compose.material.icons.filled.HighQuality
import androidx.compose.material.icons.filled.Memory
import androidx.compose.material.icons.filled.RestartAlt
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.data.preferences.PerfProfile
import io.leostrange.mrcomic.core.data.preferences.PerfRenderQuality
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPanelCard
import io.leostrange.mrcomic.core.ui.designsystem.MrComicSliderTile
import io.leostrange.mrcomic.core.ui.designsystem.MrComicSurfaceCard
import io.leostrange.mrcomic.core.ui.designsystem.MrComicSwitchRow
import kotlinx.coroutines.delay
import java.util.Locale

@Composable
internal fun DetailedPerformanceSection(
    uiState: SettingsUiState,
    viewModel: SettingsViewModel,
    language: String,
    modifier: Modifier = Modifier
) {
    val t = remember(language) { perfText(language) }
    val context = LocalContext.current
    var showResetDialog by remember { mutableStateOf(false) }

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        item {
            Text(
                text = t.pageSubtitle,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(horizontal = 4.dp, vertical = 2.dp)
            )
        }

        item {
            PerfCard(title = t.profileTitle, hint = t.profileHint) {
                PerfProfileSelector(
                    selected = uiState.perfProfile,
                    onSelect = viewModel::setPerfProfile,
                    t = t
                )
            }
        }

        item {
            PerfCard(title = t.readingTitle) {
                Column(verticalArrangement = Arrangement.spacedBy(0.dp)) {
                    PerfSliderRow(
                        title = t.preloadTitle,
                        subtitle = "${uiState.readerPreloadPages} ${t.preloadPages}",
                        value = uiState.readerPreloadPages.toFloat(),
                        valueRange = 0f..8f,
                        steps = 7,
                        onValueChange = { viewModel.setReaderPreloadPages(it.toInt()) }
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSegmentedRow(
                        title = t.renderQualityTitle,
                        subtitle = t.renderQualityDesc,
                        options = listOf(
                            t.qualityAuto to PerfRenderQuality.AUTO.storedValue,
                            t.qualityHigh to PerfRenderQuality.HIGH.storedValue,
                            t.qualityMedium to PerfRenderQuality.MEDIUM.storedValue,
                            t.qualityLow to PerfRenderQuality.LOW.storedValue
                        ),
                        selected = uiState.perfRenderQuality,
                        onSelect = viewModel::setPerfRenderQuality
                    )
                }
            }
        }

        item {
            PerfCard(title = t.cacheTitle) {
                Column(verticalArrangement = Arrangement.spacedBy(0.dp)) {
                    PerfSegmentedRow(
                        title = t.coverCacheTitle,
                        subtitle = t.coverCacheDesc,
                        options = listOf(
                            "64 ${t.mbSuffix}" to "64",
                            "128 ${t.mbSuffix}" to "128",
                            "256 ${t.mbSuffix}" to "256",
                            "512 ${t.mbSuffix}" to "512"
                        ),
                        selected = uiState.perfCoverCacheMb.toString(),
                        onSelect = { viewModel.setPerfCoverCacheMb(it.toInt()) }
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSliderRow(
                        title = t.pageCacheTitle,
                        subtitle = "${uiState.perfPageCacheCount} ${t.pageCachePages}",
                        value = uiState.perfPageCacheCount.toFloat(),
                        valueRange = 3f..10f,
                        steps = 6,
                        onValueChange = { viewModel.setPerfPageCacheCount(it.toInt()) }
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfRamInfoRow(context = context, t = t)
                }
            }
        }

        item {
            PerfCard(title = t.searchTitle) {
                PerfSwitchRow(
                    title = t.ftsTitle,
                    subtitle = t.ftsDesc,
                    checked = uiState.perfFtsSearchEnabled,
                    onCheckedChange = viewModel::setPerfFtsSearchEnabled
                )
            }
        }

        item {
            PerfCard(title = t.startupTitle) {
                Column(verticalArrangement = Arrangement.spacedBy(0.dp)) {
                    PerfSwitchRow(
                        title = t.startupPreloadTitle,
                        subtitle = t.startupPreloadDesc,
                        checked = uiState.perfStartupPreloadEnabled,
                        onCheckedChange = viewModel::setPerfStartupPreloadEnabled
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSwitchRow(
                        title = t.reducedAnimTitle,
                        subtitle = t.reducedAnimDesc,
                        checked = uiState.perfReducedAnimations,
                        onCheckedChange = viewModel::setPerfReducedAnimations
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSwitchRow(
                        title = t.reducedMotionTitle,
                        subtitle = t.reducedMotionDesc,
                        checked = uiState.performanceReducedMotion,
                        onCheckedChange = viewModel::setPerformanceReducedMotion
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSwitchRow(
                        title = t.reducedVisualEffectsTitle,
                        subtitle = t.reducedVisualEffectsDesc,
                        checked = uiState.performanceReducedVisualEffects,
                        onCheckedChange = viewModel::setPerformanceReducedVisualEffects
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSwitchRow(
                        title = t.videoSplashTitle,
                        subtitle = t.videoSplashDesc,
                        checked = uiState.appVideoSplashEnabled,
                        onCheckedChange = viewModel::setAppVideoSplashEnabled
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSegmentedRow(
                        title = t.navTransitionsTitle,
                        subtitle = t.navTransitionsDesc,
                        options = listOf(
                            t.navAnimNone to "NONE",
                            t.navAnimFade to "FADE",
                            t.navAnimSlide to "SLIDE",
                            t.navAnimLift to "LIFT"
                        ),
                        selected = uiState.appNavTransitionStyle,
                        onSelect = viewModel::setAppNavTransitionStyle
                    )
                }
            }
        }

        item {
            PerfCard(title = t.resetTitle) {
                PerfActionRow(
                    title = t.resetButton,
                    subtitle = t.resetDesc,
                    icon = Icons.Default.RestartAlt,
                    tint = MaterialTheme.colorScheme.error,
                    onClick = { showResetDialog = true }
                )
            }
        }

        item { Spacer(Modifier.height(16.dp)) }
    }

    if (showResetDialog) {
        AlertDialog(
            onDismissRequest = { showResetDialog = false },
            title = { Text(t.resetDialogTitle) },
            text = { Text(t.resetDialogBody) },
            confirmButton = {
                TextButton(
                    onClick = {
                        showResetDialog = false
                        viewModel.resetPerfSettings()
                    }
                ) { Text(t.resetConfirm) }
            },
            dismissButton = {
                TextButton(onClick = { showResetDialog = false }) { Text(t.resetCancel) }
            }
        )
    }
}

private data class PerfSettingsText(
    val pageSubtitle: String,
    val profileTitle: String,
    val profileHint: String,
    val profileAuto: String,
    val profileAutoDesc: String,
    val profileQuality: String,
    val profileQualityDesc: String,
    val profileBalanced: String,
    val profileBalancedDesc: String,
    val profileEconomy: String,
    val profileEconomyDesc: String,
    val readingTitle: String,
    val preloadTitle: String,
    val preloadPages: String,
    val renderQualityTitle: String,
    val renderQualityDesc: String,
    val qualityAuto: String,
    val qualityHigh: String,
    val qualityMedium: String,
    val qualityLow: String,
    val cacheTitle: String,
    val coverCacheTitle: String,
    val coverCacheDesc: String,
    val pageCacheTitle: String,
    val pageCachePages: String,
    val searchTitle: String,
    val ftsTitle: String,
    val ftsDesc: String,
    val startupTitle: String,
    val startupPreloadTitle: String,
    val startupPreloadDesc: String,
    val reducedAnimTitle: String,
    val reducedAnimDesc: String,
    val reducedMotionTitle: String,
    val reducedMotionDesc: String,
    val reducedVisualEffectsTitle: String,
    val reducedVisualEffectsDesc: String,
    val videoSplashTitle: String,
    val videoSplashDesc: String,
    val navTransitionsTitle: String,
    val navTransitionsDesc: String,
    val navAnimNone: String,
    val navAnimFade: String,
    val navAnimSlide: String,
    val navAnimLift: String,
    val resetTitle: String,
    val resetDesc: String,
    val resetButton: String,
    val resetDialogTitle: String,
    val resetDialogBody: String,
    val resetConfirm: String,
    val resetCancel: String,
    val ramTitle: String,
    val ramUsed: String,
    val ramFree: String,
    val ramTotal: String,
    val mbSuffix: String,
    val gbSuffix: String
)

private fun perfText(language: String): PerfSettingsText = when (language) {
    "en" -> PerfSettingsText(
        pageSubtitle = "Control memory, rendering quality, and background tasks.",
        profileTitle = "Performance profile",
        profileHint = "Profiles adjust preloading, render quality and animations at once.",
        profileAuto = "Auto",
        profileAutoDesc = "Adapts to device capabilities",
        profileQuality = "Quality",
        profileQualityDesc = "Best visuals, more memory",
        profileBalanced = "Balanced",
        profileBalancedDesc = "Default for most devices",
        profileEconomy = "Economy",
        profileEconomyDesc = "Less memory, fewer animations",
        readingTitle = "Reading",
        preloadTitle = "Page preload",
        preloadPages = "pages",
        renderQualityTitle = "Render quality",
        renderQualityDesc = "Scaling filter for image pages",
        qualityAuto = "Auto",
        qualityHigh = "High",
        qualityMedium = "Medium",
        qualityLow = "Low",
        cacheTitle = "Cache & memory",
        coverCacheTitle = "Cover cache size",
        coverCacheDesc = "Max memory for loaded cover images",
        pageCacheTitle = "Page cache limit",
        pageCachePages = "pages",
        searchTitle = "Search",
        ftsTitle = "Fast full-text search",
        ftsDesc = "Store a local index for faster library search",
        startupTitle = "Startup",
        startupPreloadTitle = "Preload on launch",
        startupPreloadDesc = "Warm up Continue screen data in background",
        reducedAnimTitle = "Reduce animations",
        reducedAnimDesc = "Calmer transitions for weaker devices",
        reducedMotionTitle = "Reduce motion globally",
        reducedMotionDesc = "A calmer app-wide mode for transitions and motion-heavy UI.",
        reducedVisualEffectsTitle = "Reduce heavy visual effects",
        reducedVisualEffectsDesc = "Turns down blur and decorative load on weaker devices.",
        videoSplashTitle = "Video splash",
        videoSplashDesc = "Shows the startup video before the main screen. Disabled by default on E-Ink devices.",
        navTransitionsTitle = "Screen transitions",
        navTransitionsDesc = "How the app moves between the library, reader, and players.",
        navAnimNone = "None",
        navAnimFade = "Fade",
        navAnimSlide = "Slide",
        navAnimLift = "Lift",
        resetTitle = "Reset",
        resetDesc = "Restore performance settings to defaults",
        resetButton = "Reset to defaults",
        resetDialogTitle = "Reset performance settings?",
        resetDialogBody = "All performance options will be restored to their default values.",
        resetConfirm = "Reset",
        resetCancel = "Cancel",
        ramTitle = "RAM",
        ramUsed = "Used",
        ramFree = "Free",
        ramTotal = "Total",
        mbSuffix = "MB",
        gbSuffix = "GB"
    )
    else -> PerfSettingsText(
        pageSubtitle = "Управление памятью, качеством рендера и фоновыми задачами.",
        profileTitle = "Профиль производительности",
        profileHint = "Профиль разом регулирует предзагрузку, качество рендера и анимации.",
        profileAuto = "Авто",
        profileAutoDesc = "Подстраивается под устройство",
        profileQuality = "Качество",
        profileQualityDesc = "Лучшая картинка, больше памяти",
        profileBalanced = "Баланс",
        profileBalancedDesc = "По умолчанию, подходит большинству",
        profileEconomy = "Экономия",
        profileEconomyDesc = "Меньше памяти и анимаций",
        readingTitle = "Чтение",
        preloadTitle = "Предзагрузка страниц",
        preloadPages = "стр.",
        renderQualityTitle = "Качество рендера",
        renderQualityDesc = "Фильтр масштабирования изображений",
        qualityAuto = "Авто",
        qualityHigh = "Высокое",
        qualityMedium = "Среднее",
        qualityLow = "Низкое",
        cacheTitle = "Кэш и память",
        coverCacheTitle = "Размер кэша обложек",
        coverCacheDesc = "Максимум памяти для загруженных обложек",
        pageCacheTitle = "Лимит кэша страниц",
        pageCachePages = "стр.",
        searchTitle = "Поиск",
        ftsTitle = "Быстрый полнотекстовый поиск",
        ftsDesc = "Хранить локальный индекс для более быстрого поиска по библиотеке",
        startupTitle = "Запуск",
        startupPreloadTitle = "Предзагрузка при запуске",
        startupPreloadDesc = "Прогревать данные экрана «Продолжить» в фоне",
        reducedAnimTitle = "Уменьшить анимации",
        reducedAnimDesc = "Более спокойные переходы для слабых устройств",
        reducedMotionTitle = "Глобально уменьшить движение",
        reducedMotionDesc = "Более спокойный режим для переходов и подвижного интерфейса во всём приложении.",
        reducedVisualEffectsTitle = "Упростить тяжёлые визуальные эффекты",
        reducedVisualEffectsDesc = "Уменьшает blur и декоративную нагрузку на слабых устройствах.",
        videoSplashTitle = "Видеозаставка",
        videoSplashDesc = "Показывает стартовую видеозаставку перед главным экраном. На E-Ink устройствах по умолчанию выключена.",
        navTransitionsTitle = "Переходы между экранами",
        navTransitionsDesc = "Как приложение переходит между библиотекой, ридером и плеерами.",
        navAnimNone = "Без анимации",
        navAnimFade = "Растворение",
        navAnimSlide = "Сдвиг",
        navAnimLift = "Подъём",
        resetTitle = "Сброс",
        resetDesc = "Вернуть настройки производительности к значениям по умолчанию",
        resetButton = "Сбросить к дефолтам",
        resetDialogTitle = "Сбросить настройки производительности?",
        resetDialogBody = "Все настройки производительности будут восстановлены до значений по умолчанию.",
        resetConfirm = "Сбросить",
        resetCancel = "Отмена",
        ramTitle = "Память",
        ramUsed = "Занято",
        ramFree = "Свободно",
        ramTotal = "Всего",
        mbSuffix = "МБ",
        gbSuffix = "ГБ"
    )
}

@Composable
private fun PerfCard(
    title: String,
    hint: String? = null,
    content: @Composable ColumnScope.() -> Unit
) {
    MrComicPanelCard(title = title, hint = hint) {
        content()
    }
}

@Composable
private fun PerfProfileSelector(
    selected: String,
    onSelect: (String) -> Unit,
    t: PerfSettingsText
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        PerfProfileChip(
            modifier = Modifier.weight(1f),
            icon = Icons.Default.AutoMode,
            title = t.profileAuto,
            subtitle = t.profileAutoDesc,
            selected = selected == PerfProfile.AUTO.storedValue,
            onClick = { onSelect(PerfProfile.AUTO.storedValue) }
        )
        PerfProfileChip(
            modifier = Modifier.weight(1f),
            icon = Icons.Default.HighQuality,
            title = t.profileQuality,
            subtitle = t.profileQualityDesc,
            selected = selected == PerfProfile.QUALITY.storedValue,
            onClick = { onSelect(PerfProfile.QUALITY.storedValue) }
        )
    }
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        PerfProfileChip(
            modifier = Modifier.weight(1f),
            icon = Icons.Default.Memory,
            title = t.profileBalanced,
            subtitle = t.profileBalancedDesc,
            selected = selected == PerfProfile.BALANCED.storedValue,
            onClick = { onSelect(PerfProfile.BALANCED.storedValue) }
        )
        PerfProfileChip(
            modifier = Modifier.weight(1f),
            icon = Icons.Default.BatterySaver,
            title = t.profileEconomy,
            subtitle = t.profileEconomyDesc,
            selected = selected == PerfProfile.ECONOMY.storedValue,
            onClick = { onSelect(PerfProfile.ECONOMY.storedValue) }
        )
    }
}

@Composable
private fun PerfProfileChip(
    modifier: Modifier = Modifier,
    icon: ImageVector,
    title: String,
    subtitle: String,
    selected: Boolean,
    onClick: () -> Unit
) {
    MrComicSurfaceCard(
        modifier = modifier.clickable(onClick = onClick),
        fillMaxWidth = false,
        selected = selected
    ) {
        Column(
            verticalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = if (selected) MaterialTheme.colorScheme.onPrimaryContainer else MaterialTheme.colorScheme.primary,
                modifier = Modifier.size(18.dp)
            )
            Text(
                text = title,
                style = MaterialTheme.typography.labelLarge,
                color = if (selected) MaterialTheme.colorScheme.onPrimaryContainer else MaterialTheme.colorScheme.onSurface
            )
            Text(
                text = subtitle,
                style = MaterialTheme.typography.bodySmall,
                color = if (selected) {
                    MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.82f)
                } else {
                    MaterialTheme.colorScheme.onSurfaceVariant
                }
            )
        }
    }
}

@Composable
private fun PerfSliderRow(
    title: String,
    subtitle: String,
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    steps: Int,
    onValueChange: (Float) -> Unit
) {
    MrComicSliderTile(
        title = title,
        valueLabel = subtitle,
        value = value,
        onValueChange = onValueChange,
        valueRange = valueRange,
        steps = steps,
        modifier = Modifier.padding(vertical = 10.dp)
    )
}

@Composable
private fun PerfSegmentedRow(
    title: String,
    subtitle: String,
    options: List<Pair<String, String>>,
    selected: String,
    onSelect: (String) -> Unit
) {
    Column(
        modifier = Modifier.fillMaxWidth().padding(vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Text(text = title, style = MaterialTheme.typography.titleSmall)
        Text(
            text = subtitle,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            options.forEach { (label, value) ->
                MrComicFilterChip(
                    selected = selected == value,
                    onClick = { onSelect(value) },
                    modifier = Modifier.weight(1f),
                    label = { Text(text = label, style = MaterialTheme.typography.labelMedium) }
                )
            }
        }
    }
}

@Composable
private fun PerfSwitchRow(
    title: String,
    subtitle: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    MrComicSwitchRow(
        title = title,
        subtitle = subtitle,
        checked = checked,
        onCheckedChange = onCheckedChange
    )
}

@Composable
private fun PerfActionRow(
    title: String,
    subtitle: String,
    icon: ImageVector,
    tint: androidx.compose.ui.graphics.Color,
    onClick: () -> Unit
) {
    MrComicSurfaceCard(
        modifier = Modifier.clickable(onClick = onClick)
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Icon(icon, contentDescription = null, tint = tint)
            Column(modifier = Modifier.weight(1f)) {
                Text(title, style = MaterialTheme.typography.titleSmall, color = tint)
                Text(
                    subtitle,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun PerfRamInfoRow(
    context: Context,
    t: PerfSettingsText
) {
    val activityManager = remember(context) { context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager }
    var memoryInfo by remember(activityManager) {
        mutableStateOf(ActivityManager.MemoryInfo().also(activityManager::getMemoryInfo))
    }
    LaunchedEffect(activityManager) {
        while (true) {
            memoryInfo = ActivityManager.MemoryInfo().also(activityManager::getMemoryInfo)
            delay(5_000L)
        }
    }
    val usedBytes = (memoryInfo.totalMem - memoryInfo.availMem).coerceAtLeast(0L)

    Column(
        modifier = Modifier.fillMaxWidth().padding(vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Text(text = t.ramTitle, style = MaterialTheme.typography.titleSmall)
        Text(
            text = "${t.ramUsed}: ${formatBytes(usedBytes, t.mbSuffix, t.gbSuffix)}",
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Text(
            text = "${t.ramFree}: ${formatBytes(memoryInfo.availMem, t.mbSuffix, t.gbSuffix)}",
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Text(
            text = "${t.ramTotal}: ${formatBytes(memoryInfo.totalMem, t.mbSuffix, t.gbSuffix)}",
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

private fun formatBytes(
    bytes: Long,
    mbSuffix: String,
    gbSuffix: String
): String {
    val mb = bytes / (1024f * 1024f)
    val gb = mb / 1024f
    return if (gb >= 1f) {
        String.format(Locale.US, "%.1f %s", gb, gbSuffix)
    } else {
        String.format(Locale.US, "%.0f %s", mb, mbSuffix)
    }
}
