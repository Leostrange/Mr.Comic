package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.InsertDriveFile
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.mascot.MrComicMiniAvatar

@Composable
internal fun EmptyLibraryPlaceholder(
    modifier: Modifier,
    showMascot: Boolean,
    onAddFile: () -> Unit,
    onAddFolder: () -> Unit
) {
    val strings = LocalStrings.current
    Column(modifier = modifier.padding(32.dp), horizontalAlignment = Alignment.CenterHorizontally) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
            size = 40.dp
        )
        Spacer(Modifier.height(16.dp))
        Text(
            strings.libraryEmptyTitle,
            style = MaterialTheme.typography.headlineSmall,
            textAlign = TextAlign.Center
        )
        Spacer(Modifier.height(8.dp))
        Text(
            strings.libraryEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(24.dp))
        MrComicButton(
            onClick = onAddFile,
            variant = MrComicButtonVariant.Filled
        ) {
            Icon(Icons.AutoMirrored.Filled.InsertDriveFile, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(strings.libraryOpenFile)
        }
        Spacer(Modifier.height(8.dp))
        MrComicButton(
            onClick = onAddFolder,
            variant = MrComicButtonVariant.Outlined
        ) {
            Icon(Icons.Default.FolderOpen, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(strings.libraryOpenFolder)
        }
    }
}

@Composable
internal fun EmptyStatusFilterPlaceholder(
    statusFilter: LibraryStatusFilter,
    showMascot: Boolean,
    onShowAll: () -> Unit,
    modifier: Modifier
) {
    val strings = LocalStrings.current
    val copy = remember(statusFilter, strings.languageCode) {
        libraryStatusEmptyStateText(statusFilter, strings.languageCode)
    }
    val icon = when (statusFilter) {
        LibraryStatusFilter.COMPLETED -> Icons.Default.CheckCircle
        LibraryStatusFilter.IN_PROGRESS -> Icons.Default.PlayArrow
        LibraryStatusFilter.BOOKMARKED -> Icons.Default.BookmarkBorder
        LibraryStatusFilter.ALL -> Icons.AutoMirrored.Filled.MenuBook
    }

    Column(modifier = modifier.padding(32.dp), horizontalAlignment = Alignment.CenterHorizontally) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = icon,
            size = 40.dp
        )
        Spacer(Modifier.height(16.dp))
        Text(
            copy.title,
            style = MaterialTheme.typography.headlineSmall,
            textAlign = TextAlign.Center
        )
        Spacer(Modifier.height(8.dp))
        Text(
            copy.message,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(24.dp))
        MrComicButton(
            onClick = onShowAll,
            variant = MrComicButtonVariant.Tonal
        ) {
            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(copy.action)
        }
    }
}

@Composable
internal fun EmptyFolderPlaceholder(
    title: String,
    showMascot: Boolean
) {
    val strings = LocalStrings.current
    Surface(
        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
        shape = RoundedCornerShape(22.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier.padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            LibraryPlaceholderLeadIcon(
                showMascot = showMascot,
                neutralIcon = Icons.Default.FolderOpen,
                size = 36.dp
            )
            Text(
                strings.libraryEmptyFolderTitle.format(title),
                textAlign = TextAlign.Center
            )
            Text(
                strings.libraryEmptyFolderHint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

@Composable
internal fun EmptyQuotesPlaceholder(
    modifier: Modifier = Modifier,
    showMascot: Boolean = true
) {
    val strings = LocalStrings.current
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
            size = 32.dp
        )
        Text(
            text = strings.libraryQuotes,
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface
        )
        Text(
            text = strings.libraryQuotesEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
    }
}

@Composable
internal fun EmptyBookmarksPlaceholder(
    modifier: Modifier = Modifier,
    showMascot: Boolean = true
) {
    val strings = LocalStrings.current
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.Default.BookmarkBorder,
            size = 32.dp
        )
        Text(
            text = strings.libraryBookmarks,
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface
        )
        Text(
            text = strings.libraryBookmarksEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
    }
}

@Composable
internal fun LibraryPlaceholderLeadIcon(
    showMascot: Boolean,
    neutralIcon: ImageVector,
    size: Dp
) {
    MrComicMiniAvatar(
        showMascot = showMascot,
        modifier = Modifier.size(size),
        compact = true,
        neutralIcon = neutralIcon,
        neutralTint = MaterialTheme.colorScheme.primary
    )
}
