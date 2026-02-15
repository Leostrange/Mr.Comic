package com.example.mrcomic.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun CrashReportScreen(log: String, onContinue: () -> Unit, onClear: () -> Unit) {
    Surface(modifier = Modifier.fillMaxSize()) {
        Column(modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState())) {
            Text("Crash detected", style = MaterialTheme.typography.headlineSmall)
            Text(text = log, modifier = Modifier.padding(top = 12.dp))
            Button(onClick = onContinue, modifier = Modifier.padding(top = 16.dp)) {
                Text("Continue")
            }
            Button(onClick = onClear, modifier = Modifier.padding(top = 8.dp)) {
                Text("Clear report")
            }
        }
    }
}


