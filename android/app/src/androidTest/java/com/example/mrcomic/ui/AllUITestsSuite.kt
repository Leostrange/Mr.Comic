package com.example.mrcomic.ui

import com.example.mrcomic.ui.library.LibraryScreenTest
import com.example.mrcomic.ui.navigation.NavigationTest
import com.example.mrcomic.ui.reader.ReaderScreenTest
import com.example.mrcomic.ui.settings.SettingsScreenTest
import org.junit.runner.RunWith
import org.junit.runners.Suite

/**
 * Тестовый набор для запуска всех UI тестов приложения
 * 
 * Использование:
 * ```bash
 * # Запуск всех UI тестов
 * ./gradlew connectedAndroidTest -Pandroid.testInstrumentationRunnerArguments.class=com.example.mrcomic.ui.AllUITestsSuite
 * 
 * # Или запуск отдельного набора тестов
 * ./gradlew connectedAndroidTest -Pandroid.testInstrumentationRunnerArguments.class=com.example.mrcomic.ui.library.LibraryScreenTest
 * ```
 */
@RunWith(Suite::class)
@Suite.SuiteClasses(
    SimpleUITest::class,
    LibraryScreenTest::class,
    ReaderScreenTest::class,
    SettingsScreenTest::class,
    NavigationTest::class
)
class AllUITestsSuite