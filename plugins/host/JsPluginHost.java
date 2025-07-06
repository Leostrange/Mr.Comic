package com.mrcomic.plugins.host;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient; // Базовый клиент

import java.io.File;

public class JsPluginHost {
    private static final String TAG = "JsPluginHost";
    private Context context;
    private File pluginDir;
    private WebView webView;
    private String pluginId; // Может понадобиться для идентификации

    public JsPluginHost(Context context, File pluginDir, String pluginId) {
        this.context = context.getApplicationContext(); // Используем application context
        this.pluginDir = pluginDir;
        this.pluginId = pluginId;
        Log.d(TAG, "JsPluginHost created for plugin: " + pluginId + " at " + pluginDir.getAbsolutePath());
    }

    // Метод для инициализации и загрузки плагина
    // Выполняется в UI потоке, так как WebView должен создаваться и управляться из UI потока
    public void load() {
        new Handler(Looper.getMainLooper()).post(() -> {
            try {
                Log.d(TAG, "Loading plugin " + pluginId + " in UI thread.");
                webView = new WebView(context);

                // Базовые настройки WebView
                WebSettings webSettings = webView.getSettings();
                webSettings.setJavaScriptEnabled(true);
                webSettings.setDomStorageEnabled(true); // На случай если JS плагины используют localStorage
                webSettings.setAllowFileAccess(true); // В общем случае не рекомендуется, но для локальных файлов плагина может быть нужно
                webSettings.setAllowFileAccessFromFileURLs(true);
                webSettings.setAllowUniversalAccessFromFileURLs(true); // Может понадобиться для загрузки ресурсов плагина

                // Устанавливаем базовый WebViewClient, чтобы ссылки открывались в этом же WebView
                webView.setWebViewClient(new WebViewClient());

                // Определяем путь к главному HTML файлу плагина
                // Пока что захардкодим путь относительно директории плагина
                File frontendDir = new File(pluginDir, "frontend");
                File indexHtml = new File(frontendDir, "index.html");

                if (indexHtml.exists() && indexHtml.canRead()) {
                    String loadUrl = "file://" + indexHtml.getAbsolutePath();
                    Log.d(TAG, "Loading URL in WebView for plugin " + pluginId + ": " + loadUrl);
                    webView.loadUrl(loadUrl);
                } else {
                    Log.e(TAG, "index.html not found or not readable for plugin " + pluginId + " at " + indexHtml.getAbsolutePath());
                    // Можно загрузить страницу с ошибкой или сообщить об этом
                    webView.loadData("<html><body><h1>Plugin UI not found</h1><p>Could not load " + indexHtml.getName() + " for plugin " + pluginId + "</p></body></html>", "text/html", "UTF-8");
                }

                // На следующих этапах здесь будет добавлена регистрация JavascriptInterface
                // webView.addJavascriptInterface(new AndroidPluginBridge(context, pluginId), "MrComicNativeHost");

                // WebView пока не добавляется ни в какой Layout, он просто создается.
                // Это для проверки базовой загрузки.
                Log.d(TAG, "WebView created and loading initiated for plugin: " + pluginId);

            } catch (Exception e) {
                Log.e(TAG, "Error loading JS plugin " + pluginId, e);
            }
        });
    }

    // Метод для очистки ресурсов
    public void destroy() {
        new Handler(Looper.getMainLooper()).post(() -> {
            if (webView != null) {
                Log.d(TAG, "Destroying WebView for plugin: " + pluginId);
                webView.loadUrl("about:blank"); // Очищаем перед уничтожением
                webView.stopLoading();
                webView.setWebViewClient(null);
                webView.destroy();
                webView = null;
            }
        });
    }

    // Геттер для WebView, если он понадобится извне (например, для добавления в Layout)
    public WebView getWebView() {
        return webView;
    }
}
