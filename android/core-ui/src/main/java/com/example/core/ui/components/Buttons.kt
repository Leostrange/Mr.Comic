package com.example.core.ui.components

import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.ElevatedButton
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.core.ui.theme.MrComicTheme

/**
 * Primary button with icon support
 */
@Composable
fun MrComicButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    icon: ImageVector? = null,
    text: String
) {
    Button(
        onClick = onClick,
        modifier = modifier,
        enabled = enabled,
        shape = MaterialTheme.shapes.small,
        contentPadding = PaddingValues(
            horizontal = 24.dp,
            vertical = 12.dp
        )
    ) {
        if (icon != null) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
        }
        Text(text = text)
    }
}

/**
 * Secondary button (outlined)
 */
@Composable
fun MrComicSecondaryButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    icon: ImageVector? = null,
    text: String
) {
    OutlinedButton(
        onClick = onClick,
        modifier = modifier,
        enabled = enabled,
        shape = MaterialTheme.shapes.small,
        contentPadding = PaddingValues(
            horizontal = 24.dp,
            vertical = 12.dp
        )
    ) {
        if (icon != null) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
        }
        Text(text = text)
    }
}

/**
 * Tertiary button (text only)
 */
@Composable
fun MrComicTertiaryButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    icon: ImageVector? = null,
    text: String
) {
    TextButton(
        onClick = onClick,
        modifier = modifier,
        enabled = enabled,
        shape = MaterialTheme.shapes.small,
        contentPadding = PaddingValues(
            horizontal = 16.dp,
            vertical = 8.dp
        )
    ) {
        if (icon != null) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
        }
        Text(text = text)
    }
}

/**
 * Elevated button for cards and surfaces
 */
@Composable
fun MrComicElevatedButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    icon: ImageVector? = null,
    text: String
) {
    ElevatedButton(
        onClick = onClick,
        modifier = modifier,
        enabled = enabled,
        shape = MaterialTheme.shapes.small,
        contentPadding = PaddingValues(
            horizontal = 24.dp,
            vertical = 12.dp
        )
    ) {
        if (icon != null) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
        }
        Text(text = text)
    }
}

/**
 * Tonal button (filled with container color)
 */
@Composable
fun MrComicTonalButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    icon: ImageVector? = null,
    text: String
) {
    FilledTonalButton(
        onClick = onClick,
        modifier = modifier,
        enabled = enabled,
        shape = MaterialTheme.shapes.small,
        contentPadding = PaddingValues(
            horizontal = 24.dp,
            vertical = 12.dp
        )
    ) {
        if (icon != null) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
        }
        Text(text = text)
    }
}

/**
 * Floating Action Button with consistent styling
 */
@Composable
fun MrComicFAB(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    icon: ImageVector = Icons.Default.Add,
    contentDescription: String? = null
) {
    FloatingActionButton(
        onClick = onClick,
        modifier = modifier,
        shape = MaterialTheme.shapes.large,
        containerColor = MaterialTheme.colorScheme.primaryContainer,
        contentColor = MaterialTheme.colorScheme.onPrimaryContainer
    ) {
        Icon(
            imageVector = icon,
            contentDescription = contentDescription
        )
    }
}

@Preview(showBackground = true)
@Composable
private fun ButtonsPreview() {
    com.example.core.ui.theme.MrComicTheme {
        androidx.compose.foundation.layout.Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = androidx.compose.foundation.layout.Arrangement.spacedBy(8.dp)
        ) {
            MrComicButton(
                onClick = { },
                text = "Primary Button",
                icon = Icons.Default.Add
            )
            
            MrComicSecondaryButton(
                onClick = { },
                text = "Secondary Button"
            )
            
            MrComicTertiaryButton(
                onClick = { },
                text = "Tertiary Button"
            )
            
            MrComicElevatedButton(
                onClick = { },
                text = "Elevated Button"
            )
            
            MrComicTonalButton(
                onClick = { },
                text = "Tonal Button"
            )
        }
    }
}
