package com.example.mrcomic.navigation

sealed class Screen(val route: String) {
    object Library : Screen("library")
    object Details : Screen("details/{comicId}") {
        fun createRoute(comicId: Long) = "details/$comicId"
    }
    object Reader : Screen("reader/{comicId}") {
        fun createRoute(comicId: Long) = "reader/$comicId"
    }
    object Settings : Screen("settings")
} 