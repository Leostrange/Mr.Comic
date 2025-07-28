package com.example.mrcomic.ui

import android.net.Uri
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.example.feature.reader.domain.BookReaderFactory
import com.example.feature.reader.data.cache.BitmapCache
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject

@Composable
fun DebugReaderScreen() {
    val context = LocalContext.current
    var debugLog by remember { mutableStateOf("=== READER DEBUG LOG ===\n") }
    var isLoading by remember { mutableStateOf(false) }
    
    fun addLog(message: String) {
        debugLog += "${System.currentTimeMillis()}: $message\n"
        android.util.Log.d("DebugReader", message)
    }
    
    LaunchedEffect(Unit) {
        addLog("Debug screen started")
        addLog("Context: ${context.javaClass.simpleName}")
        
        // Test if dependencies are available
        try {
            addLog("Testing zip4j availability...")
            val zipClass = Class.forName("net.lingala.zip4j.ZipFile")
            addLog("✅ zip4j found: ${zipClass.name}")
        } catch (e: Exception) {
            addLog("❌ zip4j not found: ${e.message}")
        }
        
        try {
            addLog("Testing junrar availability...")
            val rarClass = Class.forName("com.github.junrar.api.Archive")
            addLog("✅ junrar found: ${rarClass.name}")
        } catch (e: Exception) {
            addLog("❌ junrar not found: ${e.message}")
        }
        
        try {
            addLog("Testing pdfium availability...")
            val pdfClass = Class.forName("com.shockwave.pdfium.PdfiumCore")
            addLog("✅ pdfium found: ${pdfClass.name}")
        } catch (e: Exception) {
            addLog("❌ pdfium not found: ${e.message}")
        }
        
        // Test factory availability
        try {
            addLog("Testing BookReaderFactory...")
            // We can't easily inject here, so just test class loading
            val factoryClass = Class.forName("com.example.feature.reader.domain.BookReaderFactory")
            addLog("✅ BookReaderFactory found: ${factoryClass.name}")
        } catch (e: Exception) {
            addLog("❌ BookReaderFactory not found: ${e.message}")
        }
    }
    
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Text(
            text = "📱 Reader Debug Screen",
            style = MaterialTheme.typography.headlineMedium
        )
        
        Button(
            onClick = {
                isLoading = true
                // Test creating a mock URI for debugging
                val testUri = Uri.parse("content://test.cbz")
                addLog("Testing with mock URI: $testUri")
                isLoading = false
            },
            enabled = !isLoading
        ) {
            Text("Test Mock URI")
        }
        
        Button(
            onClick = {
                addLog("Testing Android PDF renderer...")
                try {
                    val pdfRendererClass = Class.forName("android.graphics.pdf.PdfRenderer")
                    addLog("✅ Android PdfRenderer available: ${pdfRendererClass.name}")
                } catch (e: Exception) {
                    addLog("❌ Android PdfRenderer not available: ${e.message}")
                }
            }
        ) {
            Text("Test Android PDF Renderer")
        }
        
        if (isLoading) {
            Box(
                modifier = Modifier.fillMaxWidth(),
                contentAlignment = Alignment.Center
            ) {
                CircularProgressIndicator()
            }
        }
        
        Card(
            modifier = Modifier.fillMaxSize()
        ) {
            LazyColumn(
                modifier = Modifier.padding(16.dp)
            ) {
                item {
                    Text(
                        text = debugLog,
                        style = MaterialTheme.typography.bodySmall,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }
}