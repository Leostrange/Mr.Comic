package com.mrcomic.app.ui;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.espresso.Espresso;
import androidx.test.espresso.action.ViewActions;
import androidx.test.espresso.assertion.ViewAssertions;
import androidx.test.espresso.matcher.ViewMatchers;
import androidx.test.filters.LargeTest;

import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.action.ViewActions.*;
import static androidx.test.espresso.assertion.ViewAssertions.*;
import static androidx.test.espresso.matcher.ViewMatchers.*;
import static org.hamcrest.Matchers.*;

/**
 * Тесты пользовательских сценариев Mr.Comic
 * Проверяет основные пользовательские сценарии работы с приложением
 */
@RunWith(AndroidJUnit4.class)
@LargeTest
public class UserFlowTests {

    @Rule
    public ActivityScenarioRule<MainActivity> activityRule =
            new ActivityScenarioRule<>(MainActivity.class);

    /**
     * Тест сценария открытия и чтения комикса
     */
    @Test
    public void testOpenAndReadComicFlow() {
        // Открываем меню
        onView(withId(R.id.menu_button))
                .perform(click());
        
        // Выбираем "Открыть файл"
        onView(withText("Открыть файл"))
                .perform(click());
        
        // Выбираем файл из списка (предполагается, что есть хотя бы один файл)
        onView(withId(R.id.file_list))
                .perform(click());
        
        // Проверяем, что файл открылся
        onView(withId(R.id.document_viewer))
                .check(matches(isDisplayed()));
        
        // Листаем несколько страниц вперед
        for (int i = 0; i < 3; i++) {
            onView(withId(R.id.next_page_button))
                    .perform(click());
            
            // Небольшая пауза для анимации
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        
        // Листаем страницу назад
        onView(withId(R.id.previous_page_button))
                .perform(click());
    }

    /**
     * Тест сценария добавления и использования закладок
     */
    @Test
    public void testBookmarksFlow() {
        // Открываем файл (предполагается, что файл уже открыт)
        
        // Добавляем закладку на текущую страницу
        onView(withId(R.id.add_bookmark_button))
                .perform(click());
        
        // Вводим название закладки
        onView(withId(R.id.bookmark_name_input))
                .perform(typeText("Тестовая закладка"), closeSoftKeyboard());
        
        // Сохраняем закладку
        onView(withText("Сохранить"))
                .perform(click());
        
        // Переходим на другую страницу
        onView(withId(R.id.next_page_button))
                .perform(click());
        
        // Открываем панель закладок
        onView(withId(R.id.bookmarks_toggle_button))
                .perform(click());
        
        // Выбираем созданную закладку
        onView(withText("Тестовая закладка"))
                .perform(click());
        
        // Проверяем, что произошел переход на страницу с закладкой
        // (косвенно, через проверку видимости элементов)
        onView(withId(R.id.document_viewer))
                .check(matches(isDisplayed()));
    }

    /**
     * Тест сценария создания и просмотра аннотаций
     */
    @Test
    public void testAnnotationsFlow() {
        // Открываем файл (предполагается, что файл уже открыт)
        
        // Долгое нажатие на область документа для вызова контекстного меню
        onView(withId(R.id.document_viewer))
                .perform(longClick());
        
        // Выбираем "Добавить аннотацию"
        onView(withText("Добавить аннотацию"))
                .perform(click());
        
        // Вводим текст аннотации
        onView(withId(R.id.annotation_text_input))
                .perform(typeText("Тестовая аннотация"), closeSoftKeyboard());
        
        // Сохраняем аннотацию
        onView(withText("Сохранить"))
                .perform(click());
        
        // Открываем панель аннотаций
        onView(withId(R.id.annotations_toggle_button))
                .perform(click());
        
        // Проверяем наличие созданной аннотации
        onView(withText("Тестовая аннотация"))
                .check(matches(isDisplayed()));
    }

    /**
     * Тест сценария изменения настроек приложения
     */
    @Test
    public void testSettingsChangeFlow() {
        // Открываем меню
        onView(withId(R.id.menu_button))
                .perform(click());
        
        // Выбираем настройки
        onView(withText("Настройки"))
                .perform(click());
        
        // Включаем ночной режим
        onView(withId(R.id.night_mode_switch))
                .perform(click());
        
        // Изменяем размер шрифта
        onView(withId(R.id.font_size_slider))
                .perform(swipeRight());
        
        // Сохраняем настройки
        onView(withText("Применить"))
                .perform(click());
        
        // Проверяем, что настройки применились
        // (косвенно, через проверку атрибутов)
        onView(withId(R.id.main_layout))
                .check(matches(hasDescendant(withClassName(containsString("NightMode")))));
    }

    /**
     * Тест сценария использования OCR и перевода
     */
    @Test
    public void testOcrAndTranslationFlow() {
        // Открываем файл (предполагается, что файл уже открыт)
        
        // Долгое нажатие на область документа для вызова контекстного меню
        onView(withId(R.id.document_viewer))
                .perform(longClick());
        
        // Выбираем "Распознать текст"
        onView(withText("Распознать текст"))
                .perform(click());
        
        // Ожидаем завершения OCR
        // (в реальном тесте здесь должен быть механизм ожидания)
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        // Проверяем, что текст распознан
        onView(withId(R.id.ocr_result_text))
                .check(matches(isDisplayed()));
        
        // Нажимаем кнопку перевода
        onView(withId(R.id.translate_button))
                .perform(click());
        
        // Ожидаем завершения перевода
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        // Проверяем, что текст переведен
        onView(withId(R.id.translation_result_text))
                .check(matches(isDisplayed()));
    }

    /**
     * Тест сценария резервного копирования и восстановления
     */
    @Test
    public void testBackupAndRestoreFlow() {
        // Открываем меню
        onView(withId(R.id.menu_button))
                .perform(click());
        
        // Выбираем "Резервное копирование"
        onView(withText("Резервное копирование"))
                .perform(click());
        
        // Создаем резервную копию
        onView(withId(R.id.create_backup_button))
                .perform(click());
        
        // Вводим название резервной копии
        onView(withId(R.id.backup_name_input))
                .perform(typeText("Тестовая копия"), closeSoftKeyboard());
        
        // Сохраняем резервную копию
        onView(withText("Создать"))
                .perform(click());
        
        // Проверяем, что копия создана
        onView(withText("Резервная копия успешно создана"))
                .check(matches(isDisplayed()));
        
        // Восстанавливаем из резервной копии
        onView(withId(R.id.restore_backup_button))
                .perform(click());
        
        // Выбираем созданную копию
        onView(withText("Тестовая копия"))
                .perform(click());
        
        // Подтверждаем восстановление
        onView(withText("Восстановить"))
                .perform(click());
        
        // Проверяем, что восстановление выполнено
        onView(withText("Восстановление успешно завершено"))
                .check(matches(isDisplayed()));
    }

    /**
     * Тест сценария интеграции с Google Drive
     */
    @Test
    public void testGoogleDriveIntegrationFlow() {
        // Открываем меню
        onView(withId(R.id.menu_button))
                .perform(click());
        
        // Выбираем "Google Drive"
        onView(withText("Google Drive"))
                .perform(click());
        
        // Авторизуемся (предполагается, что авторизация уже выполнена)
        
        // Открываем файл из Google Drive
        onView(withId(R.id.open_from_drive_button))
                .perform(click());
        
        // Выбираем файл из списка
        onView(withId(R.id.drive_file_list))
                .perform(click());
        
        // Проверяем, что файл открылся
        onView(withId(R.id.document_viewer))
                .check(matches(isDisplayed()));
        
        // Сохраняем файл в Google Drive
        onView(withId(R.id.menu_button))
                .perform(click());
        
        onView(withText("Google Drive"))
                .perform(click());
        
        onView(withId(R.id.save_to_drive_button))
                .perform(click());
        
        // Вводим имя файла
        onView(withId(R.id.drive_file_name_input))
                .perform(typeText("Тестовый файл"), closeSoftKeyboard());
        
        // Сохраняем файл
        onView(withText("Сохранить"))
                .perform(click());
        
        // Проверяем, что файл сохранен
        onView(withText("Файл успешно сохранен в Google Drive"))
                .check(matches(isDisplayed()));
    }
}
