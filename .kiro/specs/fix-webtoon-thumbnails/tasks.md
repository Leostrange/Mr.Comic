# Implementation Plan

- [x] 1. Исправить Webtoon режим


  - Удалить LaunchedEffect с onVisiblePageChanged из OptimizedWebtoonLazyColumn
  - Удалить параметр onVisiblePageChanged из функции
  - Удалить вызов onGoToPage в ReaderScreen для Webtoon режима
  - _Requirements: 1.1, 1.2, 1.3, 1.4_



- [x] 2. Реализовать создание миниатюр

  - Добавить метод createThumbnail в ReaderViewModel
  - Вызывать createThumbnail при загрузке каждой страницы в loadPage

  - Сохранять миниатюры в BitmapCache с правильным ключом
  - _Requirements: 2.1, 2.2, 2.3, 2.4, 2.5_

- [x] 3. Интегрировать избранное с базой данных

  - Добавить метод updateBookmarkStatus в ComicRepository
  - Реализовать toggleBookmark в ReaderViewModel
  - Добавить поле isBookmarked в ReaderUiState
  - Загружать статус избранного при открытии комикса
  - Подключить onToggleBookmark к ViewModel в ReaderScreen
  - _Requirements: 3.1, 3.2, 3.3, 3.4_

- [x] 3.5. Исправить свайп назад для выхода в библиотеку


  - Найти где обрабатывается жест свайпа назад
  - Проверить подключение onNavigateBack к ReaderScreen
  - Убедиться что BackHandler правильно настроен
  - Протестировать выход в библиотеку
  - _Requirements: Navigation_

- [x] 4. Проверить и собрать приложение


  - Запустить getDiagnostics для изменённых файлов
  - Собрать debug APK
  - Скопировать APK в releases с именем app-debug-WEBTOON-THUMBNAILS-FIX.apk
  - _Requirements: All_
