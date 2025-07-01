package com.example.core.ui.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.Box
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.example.core.model.BottomNavItem
import com.example.core.model.ComicBook
import com.example.core.ui.theme.PaddingLarge
import com.example.core.ui.theme.PaddingMedium

/**
 * A standardized Card component for the application.
 */
@Composable
fun MrComicCard(
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit
) {
    Card(
        modifier = modifier,
        shape = MaterialTheme.shapes.medium,
        elevation = CardDefaults.cardElevation(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        ),
        content = content
    )
}

/**
 * A standardized primary Button for the application.
 */
@Composable
fun MrComicPrimaryButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    text: String
) {
    Button(
        onClick = onClick,
        modifier = modifier,
        contentPadding = PaddingValues(horizontal = PaddingLarge, vertical = PaddingMedium)
    ) {
        Text(text = text)
    }
}

/**
 * A standardized TopAppBar for the application.
 *
 * @param title The title to be displayed in the center of the app bar.
 * @param modifier The modifier to be applied to the app bar.
 * @param navigationIcon The composable to be displayed at the start of the app bar, typically an icon button.
 * @param actions The composable to be displayed at the end of the app bar, typically a row of icon buttons.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MrComicTopAppBar(
    title: String,
    modifier: Modifier = Modifier,
    navigationIcon: @Composable () -> Unit = {},
    actions: @Composable RowScope.() -> Unit = {}
) {
    CenterAlignedTopAppBar(
        title = { Text(text = title) },
        modifier = modifier,
        navigationIcon = navigationIcon,
        actions = actions,
        colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer
        )
    )
}

/**
 * A standardized Bottom Navigation Bar for the application.
 */
@Composable
fun MrComicBottomAppBar(
    items: List<BottomNavItem>,
    currentRoute: String?,
    modifier: Modifier = Modifier,
    onItemClick: (BottomNavItem) -> Unit
) {
    NavigationBar(
        modifier = modifier,
        containerColor = MaterialTheme.colorScheme.primaryContainer
    ) {
        items.forEach { item ->
            NavigationBarItem(
                selected = currentRoute == item.route,
                onClick = { onItemClick(item) },
                icon = { Icon(imageVector = item.icon, contentDescription = item.label) },
                label = { Text(text = item.label) }
            )
        }
    }
}

/**
 * A Card component to display a comic book cover.
 *
 * @param comicBook The comic book data to display.
 * @param isSelected Whether the card is in a selected state.
 * @param onClick The action to perform when the card is clicked.
 * @param onLongClick The action to perform when the card is long-clicked.
 * @param modifier The modifier to be applied to the card.
 */
@OptIn(ExperimentalFoundationApi::class)
@Composable
fun ComicCoverCard(
    comicBook: ComicBook,
    isSelected: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    MrComicCard(
        modifier = modifier
    ) {
        Box(modifier = Modifier.combinedClickable(onClick = onClick, onLongClick = onLongClick)) {
            Column {
                AsyncImage(
                    model = ImageRequest.Builder(LocalContext.current)
                        .data(comicBook.coverUrl)
                        .crossfade(true)
                        // TODO: Add placeholder and error drawables
                        .build(),
                    contentDescription = comicBook.title,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier
                        .fillMaxWidth()
                        .aspectRatio(2f / 3f) // Typical comic book aspect ratio
                )
                Text(
                    text = comicBook.title,
                    style = MaterialTheme.typography.titleMedium,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.padding(PaddingMedium)
                )
            }
            if (isSelected) {
                Box(
                    modifier = Modifier
                        .matchParentSize()
                        .border(
                            width = 3.dp,
                            color = MaterialTheme.colorScheme.primary,
                            shape = MaterialTheme.shapes.medium
                        )
                )
            }
        }
    }
}