package com.mrcomic.app.ui;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.espresso.Espresso;
import androidx.test.espresso.action.ViewActions;
import androidx.test.espresso.assertion.ViewAssertions;
import androidx.test.espresso.matcher.ViewMatchers;
import androidx.test.espresso.contrib.RecyclerViewActions;
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
 * UI-тесты для основных компонентов интерфейса Mr.Comic
 * Тестирует функциональность ключевых элементов пользовательского интерфейса
 */
@RunWith(AndroidJUnit4.class)
@LargeTest
public class UIComponentTests {

    @Rule
    public ActivityScenarioRule<MainActivity> activityRule =
            new ActivityScenarioRule<>(MainActivity.class);

    /**
     * Тест главного меню приложения
     */
    @Test
    public void testMainMenuDisplay() {
        // Проверяем, что главное меню отображается
        onView(withId(R.id.main_menu))
                .check(matches(isDisplayed()));
        
        // Проверяем наличие основных пунктов меню
        onView(withText("Открыть файл"))
                .check(matches(isDisplayed()));
        
        onView(withText("Настройки"))
                .check(matches(isDisplayed()));
        
        onView(withText("О программе"))
                .check(matches(isDisplayed()));
    }

    /**
     * Тест панели инструментов
     */
    @Test
    public void testToolbarFunctionality() {
        // Проверяем отображение панели инструментов
        onView(withId(R.id.toolbar))
                .check(matches(isDisplayed()));
        
        // Тестируем кнопку масштабирования
        onView(withId(R.id.zoom_in_button))
                .check(matches(isDisplayed()))
                .perform(click());
        
        onView(withId(R.id.zoom_out_button))
                .check(matches(isDisplayed()))
                .perform(click());
        
        // Тестируем кнопку поворота
        onView(withId(R.id.rotate_button))
                .check(matches(isDisplayed()))
                .perform(click());
    }

    /**
     * Тест области просмотра документа
     */
    @Test
    public void testDocumentViewerArea() {
        // Проверяем отображение области просмотра
        onView(withId(R.id.document_viewer))
                .check(matches(isDisplayed()));
        
        // Тестируем жесты масштабирования (симуляция)
        onView(withId(R.id.document_viewer))
                .perform(ViewActions.pinchOpen());
        
        onView(withId(R.id.document_viewer))
                .perform(ViewActions.pinchClose());
        
        // Тестируем прокрутку
        onView(withId(R.id.document_viewer))
                .perform(swipeUp())
                .perform(swipeDown())
                .perform(swipeLeft())
                .perform(swipeRight());
    }

    /**
     * Тест панели навигации по страницам
     */
    @Test
    public void testPageNavigationPanel() {
        // Проверяем отображение панели навигации
        onView(withId(R.id.page_navigation_panel))
                .check(matches(isDisplayed()));
        
        // Тестируем кнопки навигации
        onView(withId(R.id.previous_page_button))
                .check(matches(isDisplayed()));
        
        onView(withId(R.id.next_page_button))
                .check(matches(isDisplayed()));
        
        onView(withId(R.id.page_number_input))
                .check(matches(isDisplayed()));
        
        // Тестируем ввод номера страницы
        onView(withId(R.id.page_number_input))
                .perform(clearText(), typeText("5"), closeSoftKeyboard());
    }

    /**
     * Тест боковой панели с закладками
     */
    @Test
    public void testBookmarksSidebar() {
        // Открываем боковую панель
        onView(withId(R.id.bookmarks_toggle_button))
                .perform(click());
        
        // Проверяем отображение панели закладок
        onView(withId(R.id.bookmarks_sidebar))
                .check(matches(isDisplayed()));
        
        // Проверяем список закладок
        onView(withId(R.id.bookmarks_list))
                .check(matches(isDisplayed()));
        
        // Тестируем добавление закладки
        onView(withId(R.id.add_bookmark_button))
                .perform(click());
        
        // Закрываем боковую панель
        onView(withId(R.id.bookmarks_toggle_button))
                .perform(click());
    }

    /**
     * Тест диалога настроек
     */
    @Test
    public void testSettingsDialog() {
        // Открываем меню
        onView(withId(R.id.menu_button))
                .perform(click());
        
        // Выбираем настройки
        onView(withText("Настройки"))
                .perform(click());
        
        // Проверяем отображение диалога настроек
        onView(withId(R.id.settings_dialog))
                .check(matches(isDisplayed()));
        
        // Тестируем переключатель ночного режима
        onView(withId(R.id.night_mode_switch))
                .check(matches(isDisplayed()))
                .perform(click());
        
        // Тестируем слайдер яркости
        onView(withId(R.id.brightness_slider))
                .check(matches(isDisplayed()));
        
        // Закрываем диалог
        onView(withText("OK"))
                .perform(click());
    }

    /**
     * Тест контекстного меню
     */
    @Test
    public void testContextMenu() {
        // Долгое нажатие на область документа для вызова контекстного меню
        onView(withId(R.id.document_viewer))
                .perform(longClick());
        
        // Проверяем отображение контекстного меню
        onView(withId(R.id.context_menu))
                .check(matches(isDisplayed()));
        
        // Проверяем пункты меню
        onView(withText("Добавить закладку"))
                .check(matches(isDisplayed()));
        
        onView(withText("Добавить аннотацию"))
                .check(matches(isDisplayed()));
        
        onView(withText("Копировать текст"))
                .check(matches(isDisplayed()));
        
        // Закрываем меню нажатием вне его области
        onView(withId(R.id.document_viewer))
                .perform(click());
    }

    /**
     * Тест индикатора загрузки
     */
    @Test
    public void testLoadingIndicator() {
        // Симулируем загрузку файла
        onView(withId(R.id.open_file_button))
                .perform(click());
        
        // Проверяем отображение индикатора загрузки
        onView(withId(R.id.loading_indicator))
                .check(matches(isDisplayed()));
        
        // Проверяем текст загрузки
        onView(withId(R.id.loading_text))
                .check(matches(withText(containsString("Загрузка"))));
    }

    /**
     * Тест адаптивности интерфейса для планшетов
     */
    @Test
    public void testTabletLayoutAdaptation() {
        // Проверяем, что на планшетах отображается двухпанельный интерфейс
        onView(withId(R.id.main_content_panel))
                .check(matches(isDisplayed()));
        
        onView(withId(R.id.side_panel))
                .check(matches(isDisplayed()));
        
        // Проверяем адаптивное меню
        onView(withId(R.id.tablet_menu_bar))
                .check(matches(isDisplayed()));
    }

    /**
     * Тест поддержки E-Ink режима
     */
    @Test
    public void testEInkModeSupport() {
        // Включаем E-Ink режим
        onView(withId(R.id.menu_button))
                .perform(click());
        
        onView(withText("Настройки"))
                .perform(click());
        
        onView(withId(R.id.eink_mode_switch))
                .perform(click());
        
        onView(withText("OK"))
                .perform(click());
        
        // Проверяем, что интерфейс адаптировался под E-Ink
        onView(withId(R.id.main_layout))
                .check(matches(hasDescendant(withClassName(containsString("EInkOptimized")))));
    }
}
