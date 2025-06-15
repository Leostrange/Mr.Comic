package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.mrcomic.data.GestureAction
import com.example.mrcomic.data.GestureSettings
import com.example.mrcomic.data.GestureType
import com.example.mrcomic.viewmodel.SettingsViewModel
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.res.stringResource

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GestureSettingsScreen(viewModel: SettingsViewModel) {
    val gestureSettings by viewModel.gestureSettings.collectAsState()
    var gestureMap by remember { mutableStateOf(gestureSettings.gestureMap) }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(
            stringResource(R.string.gesture_settings),
            style = MaterialTheme.typography.headlineMedium,
            modifier = Modifier.semantics { contentDescription = stringResource(R.string.gesture_settings) }
        )
        Spacer(modifier = Modifier.height(16.dp))
        GestureType.values().forEach { gesture ->
            var expanded by remember { mutableStateOf(false) }
            var selectedAction by remember { mutableStateOf(gestureMap[gesture] ?: GestureAction.NEXT_PAGE) }
            ExposedDropdownMenuBox(
                expanded = expanded,
                onExpandedChange = { expanded = !expanded }
            ) {
                TextField(
                    value = selectedAction.displayName,
                    onValueChange = {},
                    label = { Text(gesture.displayName) },
                    readOnly = true,
                    modifier = Modifier.menuAnchor().fillMaxWidth().semantics { contentDescription = gesture.displayName }
                )
                ExposedDropdownMenu(
                    expanded = expanded,
                    onDismissRequest = { expanded = false }
                ) {
                    GestureAction.values().forEach { action ->
                        DropdownMenuItem(
                            text = { Text(action.displayName) },
                            onClick = {
                                selectedAction = action
                                gestureMap = gestureMap.toMutableMap().apply { put(gesture, action) }
                                expanded = false
                            },
                            modifier = Modifier.semantics { contentDescription = action.displayName }
                        )
                    }
                }
            }
            Spacer(modifier = Modifier.height(8.dp))
        }
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = { viewModel.saveGestureSettings(GestureSettings(gestureMap)) },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.save) }
        ) { Text(stringResource(R.string.save)) }
    }
} 