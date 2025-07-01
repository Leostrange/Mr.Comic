package com.example.mrcomic

import android.Manifest
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import com.example.mrcomic.ui.ComicReaderScreen
import com.example.mrcomic.ui.theme.MrComicTheme
import com.example.mrcomic.viewmodel.ComicViewModel
import com.google.accompanist.permissions.ExperimentalPermissionsApi
import com.google.accompanist.permissions.rememberMultiplePermissionsState
import dagger.hilt.android.AndroidEntryPoint
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.core.net.toUri
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.example.mrcomic.ui.screens.add_comic.AddComicScreen
import com.example.feature.library.ui.LibraryScreen

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    @OptIn(ExperimentalPermissionsApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MrComicTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    MrComicApp()
                }
            }
        }
    }
}

@Composable
fun MrComicApp() {
    val navController = rememberNavController()
    NavHost(navController = navController, startDestination = "library") {
        composable("library") {
            LibraryScreen(
                onBookClick = { filePath ->
                    val encodedPath = Uri.encode(filePath)
                    navController.navigate("reader/$encodedPath")
                },
                onAddClick = { navController.navigate("add_comic") },
                onSettingsClick = { /* TODO */ }
            )
        }
        composable("add_comic") {
            AddComicScreen(
                onComicAdded = { navController.popBackStack() },
                onNavigateUp = { navController.popBackStack() }
            )
        }
        composable(
            "reader/{filePath}",
            arguments = listOf(navArgument("filePath") { type = NavType.StringType })
        ) { backStackEntry ->
            val filePath = backStackEntry.arguments?.getString("filePath")
            if (filePath != null) {
                ComicReaderScreen(uri = Uri.parse(filePath))
            } else {
                // Handle error: filePath is null
                navController.popBackStack()
            }
        }
    }
}

