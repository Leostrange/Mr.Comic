package com.example.mrcomic.plugins.core;

import android.util.Log;

/**
 * Простой логгер для системы плагинов.
 */
public class PluginLogger {

    private static final String TAG = "MrComicPlugin";

    public static void d(String message) {
        Log.d(TAG, message);
    }

    public static void i(String message) {
        Log.i(TAG, message);
    }

    public static void w(String message) {
        Log.w(TAG, message);
    }

    public static void e(String message, Throwable throwable) {
        Log.e(TAG, message, throwable);
    }
}


