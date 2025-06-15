package com.example.mrcomic.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import com.example.mrcomic.theme.ui.viewmodel.ProfileSelectionViewModel
import com.example.mrcomic.theme.data.model.User
import java.util.*
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProfileSelectionScreen(viewModel: ProfileSelectionViewModel, onProfileSelected: () -> Unit) {
    val users by viewModel.users.collectAsState()
    val activeProfileId by viewModel.activeProfileId.collectAsState()
    var showCreateDialog by remember { mutableStateOf(false) }
    var newName by remember { mutableStateOf(TextFieldValue("")) }
    var newAvatarUrl by remember { mutableStateOf(TextFieldValue("")) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(stringResource(R.string.profile_selection), style = MaterialTheme.typography.headlineMedium)
        Spacer(modifier = Modifier.height(16.dp))
        users.forEach { user ->
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(vertical = 8.dp)
                    .background(
                        if (user.id == activeProfileId) MaterialTheme.colorScheme.primary.copy(alpha = 0.1f)
                        else Color.Transparent,
                        shape = MaterialTheme.shapes.medium
                    )
                    .clickable {
                        viewModel.selectProfile(user.id)
                        onProfileSelected()
                    }
                    .semantics { contentDescription = "${user.username}, ${if (user.id == activeProfileId) stringResource(R.string.active_profile) else ""}" },
                verticalAlignment = Alignment.CenterVertically
            ) {
                if (!user.avatarUrl.isNullOrBlank()) {
                    // Здесь можно использовать Coil/Glide для загрузки аватара
                    Image(
                        painter = painterResource(id = com.example.mrcomic.R.drawable.ic_avatar_placeholder),
                        contentDescription = stringResource(R.string.avatar),
                        modifier = Modifier
                            .size(48.dp)
                            .clip(CircleShape)
                    )
                } else {
                    Icon(
                        imageVector = Icons.Default.Person,
                        contentDescription = stringResource(R.string.avatar),
                        modifier = Modifier
                            .size(48.dp)
                            .clip(CircleShape)
                    )
                }
                Spacer(modifier = Modifier.width(16.dp))
                Text(user.username, style = MaterialTheme.typography.titleMedium)
                Spacer(modifier = Modifier.weight(1f))
                IconButton(
                    onClick = { viewModel.deleteProfile(user) },
                    modifier = Modifier.semantics { contentDescription = stringResource(R.string.delete_profile) }
                ) {
                    Icon(Icons.Default.Delete, contentDescription = stringResource(R.string.delete_profile))
                }
            }
        }
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = { showCreateDialog = true },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.create_profile) }
        ) {
            Text(stringResource(R.string.create_profile))
        }
    }
    if (showCreateDialog) {
        AlertDialog(
            onDismissRequest = { showCreateDialog = false },
            title = { Text(stringResource(R.string.create_new_profile)) },
            text = {
                Column {
                    OutlinedTextField(
                        value = newName,
                        onValueChange = { newName = it },
                        label = { Text(stringResource(R.string.profile_name)) },
                        modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.profile_name) }
                    )
                    OutlinedTextField(
                        value = newAvatarUrl,
                        onValueChange = { newAvatarUrl = it },
                        label = { Text(stringResource(R.string.avatar_url_optional)) },
                        modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.avatar_url_optional) }
                    )
                }
            },
            confirmButton = {
                Button(
                    onClick = {
                        if (newName.text.isNotBlank()) {
                            val user = User(
                                id = UUID.randomUUID().toString(),
                                username = newName.text,
                                email = null,
                                avatarUrl = newAvatarUrl.text.takeIf { it.isNotBlank() },
                                bio = null,
                                role = "user",
                                reputation = 0,
                                followers = null,
                                following = null,
                                preferences = null
                            )
                            viewModel.createProfile(user)
                            showCreateDialog = false
                            newName = TextFieldValue("")
                            newAvatarUrl = TextFieldValue("")
                            onProfileSelected()
                        }
                    },
                    modifier = Modifier.semantics { contentDescription = stringResource(R.string.create) }
                ) { Text(stringResource(R.string.create)) }
            },
            dismissButton = {
                Button(
                    onClick = { showCreateDialog = false },
                    modifier = Modifier.semantics { contentDescription = stringResource(R.string.cancel) }
                ) { Text(stringResource(R.string.cancel)) }
            }
        )
    }
} 