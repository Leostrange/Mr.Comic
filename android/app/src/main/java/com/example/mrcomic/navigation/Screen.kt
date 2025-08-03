package com.example.mrcomic.navigation

/**
 * Экраны навигации приложения
 */
sealed class Screen(val route: String) {
    object ComicListScreen : Screen("comic_list")
    object ComicDetailScreen : Screen("comic_detail/{comicId}") {
        fun createRoute(comicId: Int): String {
            return "comic_detail/$comicId"
        }
    }
    object Reader : Screen("reader/{uri}") {
        fun createRoute(uri: String): String {
            return "reader/$uri"
        }
    }
    object AddComic : Screen("add_comic")
    object Settings : Screen("settings")
    object Onboarding : Screen("onboarding")
    object Debug : Screen("debug")
} 