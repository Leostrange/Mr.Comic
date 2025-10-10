package com.example.feature.reader.ui.gestures

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp

/**
 * Simple test composable to verify gesture detection
 * Shows which gesture was detected
 */
@Composable
fun GestureTestScreen() {
    var lastGesture by remember { mutableStateOf("No gesture yet") }
    var gestureCount by remember { mutableStateOf(0) }
    var screenSize by remember { mutableStateOf(IntSize.Zero) }
    
    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.DarkGray)
            .onSizeChanged { size ->
                screenSize = size
            }
            .readerGestures(
                screenSize = screenSize,
                tapZoneConfig = TapZoneConfig(
                    leftZoneRatio = 0.25f,
                    rightZoneRatio = 0.25f,
                    enabled = true
                ),
                gestureSensitivity = 1.0f,
                isZoomed = false,
                blockSwipeWhenZoomed = true,
                onGestureAction = { action ->
                    gestureCount++
                    lastGesture = when (action) {
                        is GestureAction.NextPage -> "Next Page (Right Tap)"
                        is GestureAction.PreviousPage -> "Previous Page (Left Tap)"
                        is GestureAction.ToggleUI -> "Toggle UI (Center Tap)"
                        is GestureAction.ToggleOrientation -> "Toggle Orientation (Center Tap)"
                        is GestureAction.CycleZoom -> "Cycle Zoom (Double Tap)"
                        is GestureAction.DoubleTapZoom -> "Double Tap Zoom at (${action.position})"
                        is GestureAction.ShowTopPanel -> "Show Top Panel (Long Press Center)"
                        is GestureAction.ShowLeftPanel -> "Show Left Panel (Long Press Left)"
                        is GestureAction.ShowRightPanel -> "Show Right Panel (Long Press Right)"
                        is GestureAction.ShowBottomPanel -> "Show Bottom Panel"
                        is GestureAction.HideUI -> "Hide UI"
                        is GestureAction.Zoom -> "Pinch Zoom (scale: ${action.scale})"
                    }
                }
            ),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(16.dp),
            modifier = Modifier.padding(32.dp)
        ) {
            Text(
                text = "Gesture Test Screen",
                style = MaterialTheme.typography.headlineMedium,
                color = Color.White
            )
            
            Text(
                text = "Last Gesture:",
                style = MaterialTheme.typography.titleMedium,
                color = Color.White
            )
            
            Text(
                text = lastGesture,
                style = MaterialTheme.typography.bodyLarge,
                color = Color.Green
            )
            
            Text(
                text = "Gesture Count: $gestureCount",
                style = MaterialTheme.typography.bodyMedium,
                color = Color.White
            )
            
            Spacer(modifier = Modifier.height(32.dp))
            
            Text(
                text = "Try these gestures:",
                style = MaterialTheme.typography.titleSmall,
                color = Color.White
            )
            
            Column(
                horizontalAlignment = Alignment.Start,
                modifier = Modifier.padding(16.dp)
            ) {
                Text("• Tap LEFT → Previous Page", color = Color.White)
                Text("• Tap CENTER → Toggle UI", color = Color.White)
                Text("• Tap RIGHT → Next Page", color = Color.White)
                Text("• Double Tap → Cycle Zoom", color = Color.White)
                Text("• Long Press CENTER → Top Panel", color = Color.White)
                Text("• Long Press LEFT → Left Panel", color = Color.White)
                Text("• Long Press RIGHT → Right Panel", color = Color.White)
                Text("• Pinch → Zoom", color = Color.White)
            }
        }
        
        // Visual zones overlay
        Row(
            modifier = Modifier
                .fillMaxSize()
                .padding(bottom = 100.dp)
        ) {
            // Left zone
            Box(
                modifier = Modifier
                    .weight(0.25f)
                    .fillMaxHeight()
                    .background(Color.Red.copy(alpha = 0.1f))
            )
            // Center zone
            Box(
                modifier = Modifier
                    .weight(0.5f)
                    .fillMaxHeight()
                    .background(Color.Green.copy(alpha = 0.1f))
            )
            // Right zone
            Box(
                modifier = Modifier
                    .weight(0.25f)
                    .fillMaxHeight()
                    .background(Color.Blue.copy(alpha = 0.1f))
            )
        }
    }
}
