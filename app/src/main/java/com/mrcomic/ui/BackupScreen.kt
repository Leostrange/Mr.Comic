package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import com.example.mrcomic.R
import java.io.File

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun BackupScreen(viewModel: BackupViewModel) {
    val state by viewModel.state.collectAsState()
    val context = LocalContext.current
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(
            text = stringResource(R.string.backup_title),
            style = MaterialTheme.typography.titleLarge,
            modifier = Modifier.semantics { contentDescription = stringResource(R.string.backup_title) }
        )
        Spacer(Modifier.height(24.dp))
        OutlinedTextField(
            value = state.password,
            onValueChange = { viewModel.onPasswordChange(it) },
            label = { Text(stringResource(R.string.password)) },
            visualTransformation = PasswordVisualTransformation(),
            singleLine = true,
            modifier = Modifier
                .fillMaxWidth()
                .semantics { contentDescription = stringResource(R.string.password) },
            isError = state.error?.contains("пароль", true) == true
        )
        Spacer(Modifier.height(24.dp))
        Button(
            onClick = { viewModel.createBackup() },
            enabled = !state.isLoading,
            modifier = Modifier
                .fillMaxWidth()
                .height(56.dp)
                .semantics { contentDescription = stringResource(R.string.create_backup) }
        ) {
            Text(stringResource(R.string.create_backup))
        }
        Spacer(Modifier.height(16.dp))
        Button(
            onClick = {
                // TODO: реализовать выбор файла через SAF/FilePicker
                // viewModel.onFileSelected(file)
            },
            enabled = !state.isLoading,
            modifier = Modifier
                .fillMaxWidth()
                .height(56.dp)
                .semantics { contentDescription = stringResource(R.string.select_file) }
        ) {
            Icon(
                imageVector = Icons.Default.FolderOpen,
                contentDescription = stringResource(R.string.select_file),
                modifier = Modifier.size(24.dp)
            )
            Spacer(Modifier.width(8.dp))
            Text(stringResource(R.string.select_file))
        }
        Spacer(Modifier.height(16.dp))
        Button(
            onClick = { viewModel.restoreBackup() },
            enabled = !state.isLoading && state.selectedFile != null,
            modifier = Modifier
                .fillMaxWidth()
                .height(56.dp)
                .semantics { contentDescription = stringResource(R.string.restore) }
        ) {
            Text(stringResource(R.string.restore))
        }
        if (state.isLoading) {
            Spacer(Modifier.height(24.dp))
            LinearProgressIndicator(
                modifier = Modifier
                    .fillMaxWidth()
                    .semantics { contentDescription = stringResource(R.string.loading) }
            )
        }
        state.error?.let {
            Spacer(Modifier.height(16.dp))
            Text(
                it,
                color = MaterialTheme.colorScheme.error,
                style = MaterialTheme.typography.bodyLarge,
                modifier = Modifier.semantics { contentDescription = it }
            )
        }
        state.successMessage?.let {
            Spacer(Modifier.height(16.dp))
            Text(
                it,
                color = MaterialTheme.colorScheme.primary,
                style = MaterialTheme.typography.bodyLarge,
                modifier = Modifier.semantics { contentDescription = it }
            )
        }
    }
} 