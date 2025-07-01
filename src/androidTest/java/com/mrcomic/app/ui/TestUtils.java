package com.mrcomic.app.ui;

import androidx.test.espresso.Espresso;
import androidx.test.espresso.IdlingRegistry;
import androidx.test.espresso.IdlingResource;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.filters.LargeTest;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

/**
 * Вспомогательные утилиты для UI-тестирования
 * Содержит общие методы и инструменты для тестов Espresso
 */
public class TestUtils {

    /**
     * Класс для запуска всех UI-тестов в одном наборе
     */
    @RunWith(Suite.class)
    @Suite.SuiteClasses({
        EspressoTestSuite.class,
        UIComponentTests.class,
        UserFlowTests.class
    })
    public static class AllUiTests {
        // Пустой класс, используется только для запуска всех тестов
    }

    /**
     * Метод для ожидания завершения анимации
     * @param milliseconds время ожидания в миллисекундах
     */
    public static void waitForAnimation(long milliseconds) {
        try {
            Thread.sleep(milliseconds);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * Метод для проверки видимости элемента
     * @param viewId идентификатор элемента
     * @return true, если элемент видим
     */
    public static boolean isViewVisible(int viewId) {
        try {
            Espresso.onView(androidx.test.espresso.matcher.ViewMatchers.withId(viewId))
                    .check(androidx.test.espresso.assertion.ViewAssertions.matches(
                            androidx.test.espresso.matcher.ViewMatchers.isDisplayed()));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Метод для проверки наличия текста на экране
     * @param text текст для поиска
     * @return true, если текст найден
     */
    public static boolean isTextVisible(String text) {
        try {
            Espresso.onView(androidx.test.espresso.matcher.ViewMatchers.withText(text))
                    .check(androidx.test.espresso.assertion.ViewAssertions.matches(
                            androidx.test.espresso.matcher.ViewMatchers.isDisplayed()));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Метод для выполнения действия с обработкой исключений
     * @param action действие для выполнения
     * @return true, если действие выполнено успешно
     */
    public static boolean performSafeAction(Runnable action) {
        try {
            action.run();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Метод для создания скриншота при падении теста
     * @param testName имя теста
     */
    public static void takeScreenshot(String testName) {
        // В реальном приложении здесь был бы код для создания скриншота
        System.out.println("Taking screenshot for failed test: " + testName);
    }

    /**
     * Метод для регистрации пользовательского IdlingResource
     * @param resource ресурс для регистрации
     */
    public static void registerIdlingResource(IdlingResource resource) {
        IdlingRegistry.getInstance().register(resource);
    }

    /**
     * Метод для отмены регистрации пользовательского IdlingResource
     * @param resource ресурс для отмены регистрации
     */
    public static void unregisterIdlingResource(IdlingResource resource) {
        IdlingRegistry.getInstance().unregister(resource);
    }

    /**
     * Метод для проверки состояния элемента
     * @param viewId идентификатор элемента
     * @param matcher проверяемое условие
     * @return true, если условие выполняется
     */
    public static boolean checkViewCondition(int viewId, org.hamcrest.Matcher<android.view.View> matcher) {
        try {
            Espresso.onView(androidx.test.espresso.matcher.ViewMatchers.withId(viewId))
                    .check(androidx.test.espresso.assertion.ViewAssertions.matches(matcher));
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
