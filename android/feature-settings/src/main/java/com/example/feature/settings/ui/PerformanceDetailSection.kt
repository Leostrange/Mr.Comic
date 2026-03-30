@file:OptIn(androidx.compose.foundation.layout.ExperimentalLayoutApi::class)

package com.example.feature.settings.ui

import android.app.ActivityManager
import android.content.Context
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
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
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.example.core.data.preferences.PerfProfile
import com.example.core.data.preferences.PerfRenderQuality

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
                        title = when (language) {
                            "en" -> "Reduce motion globally"
                            "ja" -> "全体のモーションを減らす"
                            "zh" -> "全局减少动效"
                            "ko" -> "전체 모션 줄이기"
                            else -> "Глобально уменьшить движение"
                        },
                        subtitle = when (language) {
                            "en" -> "A calmer app-wide mode for transitions and motion-heavy UI."
                            "ja" -> "画面遷移や動きの多い UI を全体的に穏やかにします。"
                            "zh" -> "让过渡与动态较多的界面整体更平稳。"
                            "ko" -> "전환과 움직임이 많은 UI를 전체적으로 더 차분하게 만듭니다."
                            else -> "Более спокойный режим для переходов и подвижного интерфейса во всём приложении."
                        },
                        checked = uiState.performanceReducedMotion,
                        onCheckedChange = viewModel::setPerformanceReducedMotion
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSwitchRow(
                        title = when (language) {
                            "en" -> "Reduce heavy visual effects"
                            "ja" -> "重い視覚効果を減らす"
                            "zh" -> "减少重型视觉效果"
                            "ko" -> "무거운 시각 효과 줄이기"
                            else -> "Упростить тяжёлые визуальные эффекты"
                        },
                        subtitle = when (language) {
                            "en" -> "Turns down blur and decorative load on weaker devices."
                            "ja" -> "弱い端末ではブラーや装飾負荷を抑えます。"
                            "zh" -> "在较弱设备上降低模糊和装饰性负载。"
                            "ko" -> "성능이 약한 기기에서 블러와 장식 효과를 줄입니다."
                            else -> "Уменьшает blur и декоративную нагрузку на слабых устройствах."
                        },
                        checked = uiState.performanceReducedVisualEffects,
                        onCheckedChange = viewModel::setPerformanceReducedVisualEffects
                    )
                    HorizontalDivider(modifier = Modifier.padding(horizontal = 4.dp))
                    PerfSwitchRow(
                        title = when (language) {
                            "en" -> "Video splash"
                            "ja" -> "ビデオスプラッシュ"
                            "zh" -> "视频启动页"
                            "ko" -> "비디오 스플래시"
                            else -> "Видеозаставка"
                        },
                        subtitle = when (language) {
                            "en" -> "Shows the startup video before the main screen. Disabled by default on E-Ink devices."
                            "ja" -> "メイン画面の前に起動動画を表示します。E-Ink 端末では既定でオフです。"
                            "zh" -> "在主界面前显示启动视频。E-Ink 设备默认关闭。"
                            "ko" -> "메인 화면 전에 시작 비디오를 재생합니다. E-Ink 기기에서는 기본적으로 꺼져 있습니다."
                            else -> "Показывает стартовую видеозаставку перед главным экраном. На E-Ink устройствах по умолчанию выключена."
                        },
                        checked = uiState.appVideoSplashEnabled,
                        onCheckedChange = viewModel::setAppVideoSplashEnabled
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
    val resetTitle: String,
    val resetDesc: String,
    val resetButton: String,
    val resetDialogTitle: String,
    val resetDialogBody: String,
    val resetConfirm: String,
    val resetCancel: String,
    val ramUsed: String,
    val ramFree: String,
    val ramTotal: String,
    val mbSuffix: String
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
        resetTitle = "Reset",
        resetDesc = "Restore performance settings to defaults",
        resetButton = "Reset to defaults",
        resetDialogTitle = "Reset performance settings?",
        resetDialogBody = "All performance options will be restored to their default values.",
        resetConfirm = "Reset",
        resetCancel = "Cancel",
        ramUsed = "Used",
        ramFree = "Free",
        ramTotal = "Total",
        mbSuffix = "MB"
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
        resetTitle = "Сброс",
        resetDesc = "Вернуть настройки производительности к значениям по умолчанию",
        resetButton = "Сбросить к дефолтам",
        resetDialogTitle = "Сбросить настройки производительности?",
        resetDialogBody = "Все настройки производительности будут восстановлены до значений по умолчанию.",
        resetConfirm = "Сбросить",
        resetCancel = "Отмена",
        ramUsed = "Занято",
        ramFree = "Свободно",
        ramTotal = "Всего",
        mbSuffix = "МБ"
    )
}

@Composable
private fun PerfCard(
    title: String,
    hint: String? = null,
    content: @Composable ColumnScope.() -> Unit
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(24.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.78f)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
            content = {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.SemiBold
                )
                if (!hint.isNullOrBlank()) {
                    Text(
                        text = hint,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                content()
            }
        )
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
    Surface(
        modifier = modifier.clickable(onClick = onClick),
        shape = RoundedCornerShape(20.dp),
        color = if (selected) {
            MaterialTheme.colorScheme.primaryContainer
        } else {
            MaterialTheme.colorScheme.surface
        }
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 12.dp, vertical = 12.dp),
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
    Column(
        modifier = Modifier.fillMaxWidth().padding(vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(text = title, style = MaterialTheme.typography.titleSmall)
            Text(
                text = subtitle,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.primary,
                fontWeight = FontWeight.SemiBold
            )
        }
        Slider(value = value, onValueChange = onValueChange, valueRange = valueRange, steps = steps)
    }
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
                Surface(
                    modifier = Modifier.weight(1f).clickable { onSelect(value) },
                    shape = RoundedCornerShape(18.dp),
                    color = if (selected == value) {
                        MaterialTheme.colorScheme.primaryContainer
                    } else {
                        MaterialTheme.colorScheme.surface
                    }
                ) {
                    Box(
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 10.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = label,
                            style = MaterialTheme.typography.labelMedium,
                            color = if (selected == value) {
                                MaterialTheme.colorScheme.onPrimaryContainer
                            } else {
                                MaterialTheme.colorScheme.onSurface
                            }
                        )
                    }
                }
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
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(title, style = MaterialTheme.typography.titleSmall)
                Spacer(Modifier.height(2.dp))
                Text(
                    subtitle,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Spacer(Modifier.width(12.dp))
            Switch(checked = checked, onCheckedChange = onCheckedChange)
        }
    }
}

@Composable
private fun PerfActionRow(
    title: String,
    subtitle: String,
    icon: ImageVector,
    tint: androidx.compose.ui.graphics.Color,
    onClick: () -> Unit
) {
    Surface(
        modifier = Modifier.fillMaxWidth().clickable(onClick = onClick),
        shape = RoundedCornerShape(20.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
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
    val memoryInfo = remember(activityManager) { ActivityManager.MemoryInfo().also(activityManager::getMemoryInfo) }
    val usedBytes = (memoryInfo.totalMem - memoryInfo.availMem).coerceAtLeast(0L)

    Column(
        modifier = Modifier.fillMaxWidth().padding(vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Text(text = "RAM", style = MaterialTheme.typography.titleSmall)
        Text(
            text = "${t.ramUsed}: ${formatBytes(usedBytes)}",
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Text(
            text = "${t.ramFree}: ${formatBytes(memoryInfo.availMem)}",
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Text(
            text = "${t.ramTotal}: ${formatBytes(memoryInfo.totalMem)}",
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

private fun formatBytes(bytes: Long): String {
    val mb = bytes / (1024f * 1024f)
    val gb = mb / 1024f
    return if (gb >= 1f) String.format("%.1f GB", gb) else String.format("%.0f MB", mb)
}
