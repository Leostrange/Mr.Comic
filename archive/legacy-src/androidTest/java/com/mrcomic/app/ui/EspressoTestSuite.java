package com.mrcomic.app.ui;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.espresso.Espresso;
import androidx.test.espresso.IdlingRegistry;
import androidx.test.espresso.IdlingResource;
import androidx.test.filters.LargeTest;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.action.ViewActions.*;
import static androidx.test.espresso.assertion.ViewAssertions.*;
import static androidx.test.espresso.matcher.ViewMatchers.*;
import static org.hamcrest.Matchers.*;

/**
 * Основной класс для запуска UI-тестов Mr.Comic с использованием Espresso
 * Содержит настройки и конфигурацию для всех UI-тестов
 */
@RunWith(AndroidJUnit4.class)
@LargeTest
public class EspressoTestSuite {

    @Rule
    public ActivityScenarioRule<MainActivity> activityRule =
            new ActivityScenarioRule<>(MainActivity.class);
    
    private IdlingResource mIdlingResource;

    /**
     * Настройка перед запуском тестов
     */
    @Before
    public void registerIdlingResource() {
        activityRule.getScenario().onActivity(activity -> {
            mIdlingResource = activity.getIdlingResource();
            // Регистрируем IdlingResource для Espresso
            IdlingRegistry.getInstance().register(mIdlingResource);
        });
    }

    /**
     * Очистка после завершения тестов
     */
    @After
    public void unregisterIdlingResource() {
        if (mIdlingResource != null) {
            IdlingRegistry.getInstance().unregister(mIdlingResource);
        }
    }

    /**
     * Тест запуска приложения
     */
    @Test
    public void testAppLaunch() {
        // Проверяем, что главный экран отображается
        onView(withId(R.id.main_layout))
                .check(matches(isDisplayed()));
        
        // Проверяем, что заголовок приложения отображается
        onView(withId(R.id.app_title))
                .check(matches(withText("Mr.Comic")));
    }

    /**
     * Тест проверки версии приложения
     */
    @Test
    public void testAppVersion() {
        // Открываем меню
        onView(withId(R.id.menu_button))
                .perform(click());
        
        // Выбираем "О программе"
        onView(withText("О программе"))
                .perform(click());
        
        // Проверяем, что диалог "О программе" отображается
        onView(withId(R.id.about_dialog))
                .check(matches(isDisplayed()));
        
        // Проверяем, что версия приложения отображается
        onView(withId(R.id.app_version))
                .check(matches(withText(containsString("Версия"))));
        
        // Закрываем диалог
        onView(withText("OK"))
                .perform(click());
    }

    /**
     * Тест проверки доступности всех основных экранов
     */
    @Test
    public void testAllScreensAccessible() {
        // Проверяем главный экран
        onView(withId(R.id.main_layout))
                .check(matches(isDisplayed()));
        
        // Открываем меню настроек
        onView(withId(R.id.menu_button))
                .perform(click());
        
        onView(withText("Настройки"))
                .perform(click());
        
        // Проверяем экран настроек
        onView(withId(R.id.settings_dialog))
                .check(matches(isDisplayed()));
        
        // Закрываем настройки
        onView(withText("Отмена"))
                .perform(click());
        
        // Открываем экран закладок
        onView(withId(R.id.bookmarks_toggle_button))
                .perform(click());
        
        // Проверяем экран закладок
        onView(withId(R.id.bookmarks_sidebar))
                .check(matches(isDisplayed()));
        
        // Закрываем экран закладок
        onView(withId(R.id.bookmarks_toggle_button))
                .perform(click());
    }

    /**
     * Тест проверки работы с файлами
     */
    @Test
    public void testFileOperations() {
        // Открываем меню
        onView(withId(R.id.menu_button))
                .perform(click());
        
        // Выбираем "Открыть файл"
        onView(withText("Открыть файл"))
                .perform(click());
        
        // Проверяем, что диалог выбора файла отображается
        onView(withId(R.id.file_chooser_dialog))
                .check(matches(isDisplayed()));
        
        // Закрываем диалог
        onView(withText("Отмена"))
                .perform(click());
    }
}
