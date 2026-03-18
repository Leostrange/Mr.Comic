package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.BugReport
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp

@Composable
fun CrashReportScreen(
    log: String,
    onContinue: () -> Unit,
    onClear: () -> Unit
) {
    val context = LocalContext.current
    Column(modifier = Modifier.fillMaxSize().padding(16.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Icon(Icons.Default.BugReport, contentDescription = null, tint = MaterialTheme.colorScheme.error, modifier = Modifier.size(32.dp))
            Spacer(Modifier.width(8.dp))
            Text("Предыдущий краш", style = MaterialTheme.typography.headlineSmall)
        }
        Spacer(Modifier.height(8.dp))
        Card(modifier = Modifier.weight(1f).fillMaxWidth()) {
            Text(
                text = log,
                modifier = Modifier.padding(8.dp).verticalScroll(rememberScrollState()),
                style = MaterialTheme.typography.bodySmall,
                fontFamily = FontFamily.Monospace
            )
        }
        Spacer(Modifier.height(16.dp))
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            OutlinedButton(
                onClick = {
                    val sendIntent = android.content.Intent(android.content.Intent.ACTION_SEND).apply {
                        type = "text/plain"
                        putExtra(android.content.Intent.EXTRA_TEXT, log)
                        putExtra(android.content.Intent.EXTRA_SUBJECT, "Mr.Comic Crash Report")
                    }
                    context.startActivity(android.content.Intent.createChooser(sendIntent, "Поделиться логом"))
                },
                modifier = Modifier.weight(1f)
            ) { Text("Поделиться") }
            Button(
                onClick = { onClear(); onContinue() },
                modifier = Modifier.weight(1f)
            ) { Text("Продолжить") }
        }
    }
}
