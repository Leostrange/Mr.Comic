package com.mrcomic.app.ui;

import androidx.test.espresso.IdlingResource;
import androidx.test.espresso.IdlingRegistry;
import androidx.test.espresso.contrib.RecyclerViewActions;
import androidx.test.espresso.matcher.ViewMatchers;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.ext.junit.runners.AndroidJUnit4;
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
 * Конфигурация для тестов Espresso
 * Содержит вспомогательные классы и методы для UI-тестирования
 */
public class EspressoTestConfig {

    /**
     * Класс для отслеживания асинхронных операций
     */
    public static class MrComicIdlingResource implements IdlingResource {
        private ResourceCallback mCallback;
        private boolean mIsIdle = true;

        @Override
        public String getName() {
            return this.getClass().getName();
        }

        @Override
        public boolean isIdleNow() {
            return mIsIdle;
        }

        @Override
        public void registerIdleTransitionCallback(ResourceCallback callback) {
            mCallback = callback;
        }

        /**
         * Устанавливает состояние ресурса как занятое
         */
        public void setIdle(boolean isIdle) {
            mIsIdle = isIdle;
            if (isIdle && mCallback != null) {
                mCallback.onTransitionToIdle();
            }
        }
    }

    /**
     * Вспомогательный класс для ожидания загрузки
     */
    public static class LoadingIdlingResource implements IdlingResource {
        private ResourceCallback mCallback;
        private boolean mIsIdle = true;

        @Override
        public String getName() {
            return "Loading Idling Resource";
        }

        @Override
        public boolean isIdleNow() {
            return mIsIdle;
        }

        @Override
        public void registerIdleTransitionCallback(ResourceCallback callback) {
            mCallback = callback;
        }

        /**
         * Устанавливает состояние загрузки
         */
        public void setLoading(boolean isLoading) {
            mIsIdle = !isLoading;
            if (mIsIdle && mCallback != null) {
                mCallback.onTransitionToIdle();
            }
        }
    }

    /**
     * Вспомогательный класс для тестирования анимаций
     */
    public static class AnimationIdlingResource implements IdlingResource {
        private ResourceCallback mCallback;
        private boolean mIsIdle = true;
        private long mStartTime;
        private long mDuration;

        public AnimationIdlingResource(long duration) {
            mDuration = duration;
        }

        @Override
        public String getName() {
            return "Animation Idling Resource";
        }

        @Override
        public boolean isIdleNow() {
            if (!mIsIdle) {
                long elapsedTime = System.currentTimeMillis() - mStartTime;
                if (elapsedTime >= mDuration) {
                    mIsIdle = true;
                    if (mCallback != null) {
                        mCallback.onTransitionToIdle();
                    }
                }
            }
            return mIsIdle;
        }

        @Override
        public void registerIdleTransitionCallback(ResourceCallback callback) {
            mCallback = callback;
        }

        /**
         * Запускает ожидание анимации
         */
        public void startAnimation() {
            mIsIdle = false;
            mStartTime = System.currentTimeMillis();
        }
    }

    /**
     * Вспомогательные методы для тестирования
     */
    public static class TestUtils {
        /**
         * Ожидание указанное время
         * @param milliseconds время ожидания в миллисекундах
         */
        public static void waitFor(long milliseconds) {
            try {
                Thread.sleep(milliseconds);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        /**
         * Проверка наличия элемента с текстом
         * @param text текст для поиска
         * @return true, если элемент найден
         */
        public static boolean isTextDisplayed(String text) {
            try {
                onView(withText(text)).check(matches(isDisplayed()));
                return true;
            } catch (Exception e) {
                return false;
            }
        }

        /**
         * Проверка наличия элемента по ID
         * @param id идентификатор элемента
         * @return true, если элемент найден
         */
        public static boolean isElementDisplayed(int id) {
            try {
                onView(withId(id)).check(matches(isDisplayed()));
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }
}
