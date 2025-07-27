package com.example.mrcomic.ui.utils

/**
 * Тестовые данные для UI тестов
 */
object TestData {

    // Тестовые комиксы
    object Comics {
        const val COMIC_TITLE_1 = "Тестовый комикс 1"
        const val COMIC_TITLE_2 = "Тестовый комикс 2"
        const val COMIC_TITLE_3 = "Супергерой: Начало"
        const val COMIC_AUTHOR_1 = "Автор Тестович"
        const val COMIC_AUTHOR_2 = "Художник Рисовалов"
        
        const val COMIC_DESCRIPTION_1 = "Захватывающая история о приключениях героя"
        const val COMIC_DESCRIPTION_2 = "Эпическая сага в мире фантазий"
        
        const val COMIC_PAGE_COUNT_1 = 25
        const val COMIC_PAGE_COUNT_2 = 50
        const val COMIC_PAGE_COUNT_3 = 100
        
        const val COMIC_FILE_SIZE_1 = "15.2 MB"
        const val COMIC_FILE_SIZE_2 = "28.7 MB"
        
        val COMIC_FORMATS = listOf("CBZ", "CBR", "PDF", "EPUB")
    }

    // Тестовые настройки
    object Settings {
        const val THEME_LIGHT = "Светлая"
        const val THEME_DARK = "Тёмная"
        const val THEME_AMOLED = "AMOLED"
        
        const val READING_MODE_SINGLE = "Одна страница"
        const val READING_MODE_DOUBLE = "Две страницы"
        const val READING_MODE_CONTINUOUS = "Непрерывная прокрутка"
        
        const val ZOOM_MODE_FIT_WIDTH = "По ширине"
        const val ZOOM_MODE_FIT_HEIGHT = "По высоте"
        const val ZOOM_MODE_FIT_SCREEN = "По экрану"
    }

    // Тестовые теги для UI элементов
    object TestTags {
        // Общие
        const val LOADING_INDICATOR = "loading_indicator"
        const val ERROR_MESSAGE = "error_message"
        const val RETRY_BUTTON = "retry_button"
        
        // Навигация
        const val BOTTOM_NAV_LIBRARY = "bottom_nav_library"
        const val BOTTOM_NAV_READER = "bottom_nav_reader"
        const val BOTTOM_NAV_SETTINGS = "bottom_nav_settings"
        
        // Библиотека
        const val LIBRARY_SCREEN = "library_screen"
        const val LIBRARY_LIST = "library_list"
        const val COMIC_ITEM = "comic_item"
        const val ADD_COMIC_BUTTON = "add_comic_button"
        const val SEARCH_BAR = "search_bar"
        const val SORT_BUTTON = "sort_button"
        const val FILTER_BUTTON = "filter_button"
        
        // Читалка
        const val READER_SCREEN = "reader_screen"
        const val COMIC_PAGE = "comic_page"
        const val PAGE_COUNTER = "page_counter"
        const val READER_TOOLBAR = "reader_toolbar"
        const val ZOOM_CONTROLS = "zoom_controls"
        const val BRIGHTNESS_SLIDER = "brightness_slider"
        
        // Настройки
        const val SETTINGS_SCREEN = "settings_screen"
        const val THEME_SELECTOR = "theme_selector"
        const val READING_MODE_SELECTOR = "reading_mode_selector"
        const val LANGUAGE_SELECTOR = "language_selector"
        
        // Диалоги
        const val CONFIRMATION_DIALOG = "confirmation_dialog"
        const val FILE_PICKER_DIALOG = "file_picker_dialog"
        const val ABOUT_DIALOG = "about_dialog"
    }

    // Тестовые сообщения и тексты
    object Texts {
        const val EMPTY_LIBRARY_MESSAGE = "Библиотека пуста"
        const val ADD_FIRST_COMIC = "Добавьте первый комикс"
        const val LOADING_COMICS = "Загрузка комиксов..."
        const val DELETE_CONFIRMATION = "Удалить комикс?"
        const val NO_INTERNET = "Нет подключения к интернету"
        
        // Кнопки
        const val BUTTON_ADD = "Добавить"
        const val BUTTON_DELETE = "Удалить"
        const val BUTTON_CANCEL = "Отмена"
        const val BUTTON_OK = "ОК"
        const val BUTTON_RETRY = "Повторить"
        const val BUTTON_CLOSE = "Закрыть"
        
        // Меню
        const val MENU_SORT_BY_NAME = "По названию"
        const val MENU_SORT_BY_DATE = "По дате"
        const val MENU_SORT_BY_SIZE = "По размеру"
        const val MENU_SORT_ASCENDING = "По возрастанию"
        const val MENU_SORT_DESCENDING = "По убыванию"
    }

    // Тестовые пути файлов
    object FilePaths {
        const val TEST_CBZ_FILE = "/test_assets/test_comic.cbz"
        const val TEST_CBR_FILE = "/test_assets/test_comic.cbr"
        const val TEST_PDF_FILE = "/test_assets/test_comic.pdf"
        const val TEST_EPUB_FILE = "/test_assets/test_book.epub"
        
        const val INVALID_FILE = "/test_assets/invalid_file.txt"
        const val CORRUPTED_FILE = "/test_assets/corrupted.cbz"
    }

    // Временные интервалы для тестов
    object Timeouts {
        const val SHORT_TIMEOUT = 1000L
        const val MEDIUM_TIMEOUT = 3000L
        const val LONG_TIMEOUT = 5000L
        const val NETWORK_TIMEOUT = 10000L
    }
}