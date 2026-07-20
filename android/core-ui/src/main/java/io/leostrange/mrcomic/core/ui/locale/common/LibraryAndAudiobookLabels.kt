package io.leostrange.mrcomic.core.ui.locale

fun AppStrings.libraryFileCountLabel(fileCount: Int): String = when (languageCode) {
    "en" -> if (fileCount == 1) "1 file" else "$fileCount files"
    "ja" -> "${fileCount}ファイル"
    "zh" -> "${fileCount}个文件"
    "ko" -> "파일 ${fileCount}개"
    else -> when {
        fileCount == 1 -> "1 файл"
        fileCount % 10 in 2..4 && fileCount % 100 !in 12..14 -> "$fileCount файла"
        else -> "$fileCount файлов"
    }
}

fun AppStrings.libraryFolderCountLabel(folderCount: Int): String = when (languageCode) {
    "en" -> if (folderCount == 1) "1 folder" else "$folderCount folders"
    "ja" -> "${folderCount}フォルダ"
    "zh" -> "${folderCount}个文件夹"
    "ko" -> "폴더 ${folderCount}개"
    else -> when {
        folderCount == 1 -> "1 папка"
        folderCount % 10 in 2..4 && folderCount % 100 !in 12..14 -> "$folderCount папки"
        else -> "$folderCount папок"
    }
}

fun AppStrings.libraryVolumeCountLabel(volumeCount: Int): String = when (languageCode) {
    "en" -> if (volumeCount == 1) "1 vol." else "$volumeCount vols."
    "ja" -> "${volumeCount}巻"
    "zh" -> "${volumeCount}卷"
    "ko" -> "${volumeCount}권"
    else -> when {
        volumeCount == 1 -> "1 том"
        volumeCount % 10 in 2..4 && volumeCount % 100 !in 12..14 -> "$volumeCount тома"
        else -> "$volumeCount томов"
    }
}

fun AppStrings.librarySetCountLabel(setCount: Int): String = when (languageCode) {
    "en" -> if (setCount == 1) "1 set" else "$setCount sets"
    "ja" -> "${setCount}セット"
    "zh" -> "${setCount}组"
    "ko" -> "${setCount}세트"
    else -> when {
        setCount == 1 -> "1 набор"
        setCount % 10 in 2..4 && setCount % 100 !in 12..14 -> "$setCount набора"
        else -> "$setCount наборов"
    }
}

fun AppStrings.libraryQuotePageLabel(page: Int): String = when (languageCode) {
    "en" -> "Page ${page + 1}"
    "ja" -> "${page + 1}ページ"
    "zh" -> "第 ${page + 1} 页"
    "ko" -> "${page + 1}페이지"
    else -> "Страница ${page + 1}"
}

fun AppStrings.libraryQuoteSourceMissingLabel(): String = when (languageCode) {
    "en" -> "Source unavailable"
    "ja" -> "元の本が利用できません"
    "zh" -> "原始书籍不可用"
    "ko" -> "원본 책을 사용할 수 없습니다"
    else -> "Источник книги недоступен"
}

fun AppStrings.libraryQuoteCountLabel(quoteCount: Int): String = when (languageCode) {
    "en" -> if (quoteCount == 1) "1 quote" else "$quoteCount quotes"
    "ja" -> "${quoteCount}件の引用"
    "zh" -> "${quoteCount}条摘录"
    "ko" -> "문구 ${quoteCount}개"
    else -> when {
        quoteCount % 10 == 1 && quoteCount % 100 != 11 -> "$quoteCount цитата"
        quoteCount % 10 in 2..4 && quoteCount % 100 !in 12..14 -> "$quoteCount цитаты"
        else -> "$quoteCount цитат"
    }
}

fun AppStrings.libraryQuoteSourceCountLabel(sourceCount: Int): String = when (languageCode) {
    "en" -> if (sourceCount == 1) "1 source" else "$sourceCount sources"
    "ja" -> "出典 ${sourceCount}件"
    "zh" -> "${sourceCount}个来源"
    "ko" -> "출처 ${sourceCount}개"
    else -> when {
        sourceCount % 10 == 1 && sourceCount % 100 != 11 -> "$sourceCount источник"
        sourceCount % 10 in 2..4 && sourceCount % 100 !in 12..14 -> "$sourceCount источника"
        else -> "$sourceCount источников"
    }
}

fun AppStrings.libraryGraphicSectionLabel(): String = when (languageCode) {
    "en" -> "Comics, manga, and webtoons"
    "ja" -> "コミック・マンガ・ウェブトゥーン"
    "zh" -> "漫画、日漫与条漫"
    "ko" -> "코믹, 만화, 웹툰"
    else -> "Комиксы, манга и вебтун"
}

fun AppStrings.libraryBooksSectionLabel(): String = when (languageCode) {
    "en" -> "Books"
    "ja" -> "書籍"
    "zh" -> "书籍"
    "ko" -> "책"
    else -> "Книги"
}

fun AppStrings.audiobookPlayActionLabel(): String = when (languageCode) {
    "en" -> "Play"
    "ja" -> "再生"
    "zh" -> "播放"
    "ko" -> "재생"
    else -> "Воспроизведение"
}

fun AppStrings.audiobookPauseActionLabel(): String = when (languageCode) {
    "en" -> "Pause"
    "ja" -> "一時停止"
    "zh" -> "暂停"
    "ko" -> "일시정지"
    else -> "Пауза"
}

fun AppStrings.audiobookStopActionLabel(): String = when (languageCode) {
    "en" -> "Stop"
    "ja" -> "停止"
    "zh" -> "停止"
    "ko" -> "중지"
    else -> "Остановить"
}
