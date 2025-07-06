package com.mrcomic.plugins.host;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.widget.Toast;

public class AndroidPluginBridge {
    private static final String TAG_PREFIX = "JsPlugin-";
    private Context context;
    private String pluginId;

    public AndroidPluginBridge(Context context, String pluginId) {
        this.context = context.getApplicationContext(); // Важно использовать application context для Toast, если он показывается не из Activity
        this.pluginId = pluginId;
    }

    /**
     * Метод для логирования сообщений из JavaScript плагина в Android Logcat.
     * @param pluginIdFromJs ID плагина, переданный из JS (для сверки или доп. информации)
     * @param level Уровень логирования (INFO, DEBUG, WARN, ERROR)
     * @param message Сообщение для логирования
     */
    @JavascriptInterface
    public void logMessage(String pluginIdFromJs, String level, String message) {
        String logTag = TAG_PREFIX + this.pluginId; // Используем pluginId, переданный при создании Bridge
        if (!this.pluginId.equals(pluginIdFromJs)) {
            Log.w(logTag, "pluginId mismatch in logMessage. Expected: " + this.pluginId + ", Got: " + pluginIdFromJs);
            // Можно добавить дополнительную логику или просто логировать с ID из Bridge
        }

        switch (level.toUpperCase()) {
            case "DEBUG":
                Log.d(logTag, message);
                break;
            case "WARN":
                Log.w(logTag, message);
                break;
            case "ERROR":
                Log.e(logTag, message);
                break;
            case "INFO":
            default:
                Log.i(logTag, message);
                break;
        }
    }

    /**
     * Метод для показа Android Toast сообщения из JavaScript плагина.
     * @param pluginIdFromJs ID плагина (для сверки)
     * @param message Сообщение для Toast
     * @param duration Длительность показа (0 для Toast.LENGTH_SHORT, 1 для Toast.LENGTH_LONG)
     */
    @JavascriptInterface
    public void showToast(String pluginIdFromJs, String message, int duration) {
        final String toastMessage = "[" + this.pluginId + "] " + message;
        final int toastDuration = (duration == Toast.LENGTH_LONG) ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT;

        // Toast должен показываться в UI потоке
        new Handler(Looper.getMainLooper()).post(() -> {
            Toast.makeText(context, toastMessage, toastDuration).show();
        });
        Log.d(TAG_PREFIX + this.pluginId, "showToast called: " + message);
    }

    // Сюда в будущем будут добавляться другие методы,
    // реализующие PluginAPI из core/PluginContext.js:
    // - работа с файловой системой (fs)
    // - работа с настройками (settings)
    // - UI (диалоги, панели - более сложные, чем Toast)
    // - Экспорт
    // - Работа с изображениями и текстом (могут требовать асинхронных коллбэков)
}
