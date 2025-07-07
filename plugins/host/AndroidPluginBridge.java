package com.mrcomic.plugins.host;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject; // Для формирования JSON ответов

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import android.util.Base64; // Для base64

public class AndroidPluginBridge {
    private static final String TAG_PREFIX = "JsPlugin-";
    private Context context;
    private String pluginId;
    private WebView webView; // Ссылка на WebView для вызова evaluateJavascript
    private Handler mainHandler;

    public AndroidPluginBridge(Context context, String pluginId, WebView webView) {
        this.context = context.getApplicationContext();
        this.pluginId = pluginId;
        this.webView = webView;
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    private SharedPreferences getPluginPreferences() {
        return context.getSharedPreferences("plugin_settings_" + pluginId, Context.MODE_PRIVATE);
    }

    private void runJsCallback(String callbackId, boolean success, String jsonResult) {
        // Убедимся, что jsonResult это валидная строка для JS, особенно если это строка JSON
        // Оборачиваем строку результата в кавычки, если это не null и не boolean/number literal
        String jsResultArg;
        if (jsonResult == null) {
            jsResultArg = "null";
        } else if (jsonResult.trim().startsWith("{") || jsonResult.trim().startsWith("[")) {
            jsResultArg = jsonResult; // Уже JSON объект/массив
        } else if (jsonResult.equalsIgnoreCase("true") || jsonResult.equalsIgnoreCase("false")) {
            jsResultArg = jsonResult.toLowerCase(); // boolean literal
        } else {
            try {
                // Пробуем как число
                Double.parseDouble(jsonResult);
                jsResultArg = jsonResult; // number literal
            } catch (NumberFormatException e) {
                // Если не число, то это строка, которую нужно обернуть
                jsResultArg = "\"" + jsonResult.replace("\"", "\\\"") + "\"";
            }
        }

        final String script = "if(window.mrComicResolvePluginCallback) { window.mrComicResolvePluginCallback('" + callbackId + "', " + success + ", " + jsResultArg + "); } else { console.error('mrComicResolvePluginCallback not found for " + callbackId + "'); }";
        Log.d(TAG_PREFIX + pluginId, "Evaluating JS: " + script);
        mainHandler.post(() -> webView.evaluateJavascript(script, null));
    }

    private String createErrorJson(String code, String message) {
        try {
            return new JSONObject().put("code", code).put("message", message).toString();
        } catch (JSONException e) {
            return "{\"code\":\"json_creation_error\",\"message\":\"Failed to create error JSON\"}";
        }
    }

    private String createSuccessJson(Object value) {
         try {
            JSONObject response = new JSONObject();
            response.put("value", value); // Оборачиваем значение в объект с ключом "value"
            return response.toString();
        } catch (JSONException e) {
            return "{\"value\":null, \"error\":\"Failed to create success JSON\"}";
        }
    }

    @JavascriptInterface
    public void logMessage(String pluginIdFromJs, String level, String message) {
        // ... (реализация без изменений)
        String logTag = TAG_PREFIX + this.pluginId;
        if (!this.pluginId.equals(pluginIdFromJs)) {
            Log.w(logTag, "pluginId mismatch in logMessage. Expected: " + this.pluginId + ", Got: " + pluginIdFromJs);
        }
        switch (level.toUpperCase()) {
            case "DEBUG": Log.d(logTag, message); break;
            case "WARN": Log.w(logTag, message); break;
            case "ERROR": Log.e(logTag, message); break;
            default: Log.i(logTag, message); break;
        }
    }

    @JavascriptInterface
    public void showToast(String pluginIdFromJs, String message, int duration) {
        // ... (реализация без изменений)
        final String toastMessage = "[" + this.pluginId + "] " + message;
        final int toastDuration = (duration == Toast.LENGTH_LONG) ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT;
        mainHandler.post(() -> Toast.makeText(context, toastMessage, toastDuration).show());
        Log.d(TAG_PREFIX + this.pluginId, "showToast called: " + message);
    }

    // --- Settings API ---
    @JavascriptInterface
    public void settingsGet(String pluginIdFromJs, String key, String defaultValueJson, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "settingsGet called for key: " + key + " with callbackId: " + callbackId);
        if (!this.pluginId.equals(pluginIdFromJs)) {
            runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch."));
            return;
        }
        // TODO: Проверка разрешений 'read_settings' для pluginId
        try {
            SharedPreferences prefs = getPluginPreferences();
            String valueJson = prefs.getString(key, defaultValueJson); // defaultValueJson уже строка JSON
            runJsCallback(callbackId, true, valueJson); // Передаем JSON строку как есть
        } catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in settingsGet for key " + key, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }

    @JavascriptInterface
    public void settingsSet(String pluginIdFromJs, String key, String valueJson, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "settingsSet called for key: " + key + " with valueJson: " + valueJson + " callbackId: " + callbackId);
         if (!this.pluginId.equals(pluginIdFromJs)) {
            runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch."));
            return;
        }
        // TODO: Проверка разрешений 'write_settings' для pluginId
        try {
            SharedPreferences prefs = getPluginPreferences();
            prefs.edit().putString(key, valueJson).apply();
            runJsCallback(callbackId, true, createSuccessJson(true)); // Ответ: { "value": true }
        } catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in settingsSet for key " + key, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }

    @JavascriptInterface
    public void settingsRemove(String pluginIdFromJs, String key, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "settingsRemove called for key: " + key + " callbackId: " + callbackId);
        if (!this.pluginId.equals(pluginIdFromJs)) {
            runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch."));
            return;
        }
        // TODO: Проверка разрешений 'write_settings' для pluginId
        try {
            SharedPreferences prefs = getPluginPreferences();
            prefs.edit().remove(key).apply();
            runJsCallback(callbackId, true, createSuccessJson(true));
        } catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in settingsRemove for key " + key, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }

    // --- File System (fs) API ---
    // Базовая реализация. Требует тщательной проработки безопасности и разрешений.
    // Пути должны быть ограничены директорией плагина.

    private File getSafePluginFile(String relativePath) throws SecurityException {
        // TODO: Реализовать проверку, что path не выходит за пределы директории плагина!
        // Например, new File(pluginDir, relativePath).getCanonicalPath().startsWith(pluginDir.getCanonicalPath())
        File pluginDataDir = new File(context.getFilesDir(), "plugin_data/" + pluginId);
        if (!pluginDataDir.exists()) {
            pluginDataDir.mkdirs();
        }
        File targetFile = new File(pluginDataDir, relativePath);
        // Проверка, что путь не пытается выйти из песочницы плагина
        if (!targetFile.getAbsoluteFile().toPath().normalize().startsWith(pluginDataDir.getAbsoluteFile().toPath().normalize())) {
            throw new SecurityException("Attempt to access file outside plugin directory: " + relativePath);
        }
        return targetFile;
    }

    @JavascriptInterface
    public void fsReadFile(String pluginIdFromJs, String path, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "fsReadFile called for path: " + path + " cbId: " + callbackId);
        if (!this.pluginId.equals(pluginIdFromJs)) { /* ... ошибка ... */ runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch.")); return; }
        // TODO: Проверка 'read_file'
        try {
            File file = getSafePluginFile(path);
            if (file.exists() && file.isFile()) {
                FileInputStream fis = new FileInputStream(file);
                BufferedReader reader = new BufferedReader(new InputStreamReader(fis, StandardCharsets.UTF_8));
                StringBuilder sb = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    sb.append(line).append("\n");
                }
                reader.close();
                fis.close();
                // Определяем, как читать файл: как текст или как base64
                String fileExtension = "";
                int lastDot = path.lastIndexOf('.');
                if (lastDot > 0 && lastDot < path.length() - 1) {
                    fileExtension = path.substring(lastDot + 1).toLowerCase();
                }

                JSONObject fileData = new JSONObject();
                boolean readAsText = fileExtension.equals("txt") || fileExtension.equals("json") ||
                                     fileExtension.equals("md") || fileExtension.equals("html") ||
                                     fileExtension.equals("js") || fileExtension.equals("css");

                if (readAsText) {
                    FileInputStream fis = new FileInputStream(file);
                    BufferedReader reader = new BufferedReader(new InputStreamReader(fis, StandardCharsets.UTF_8));
                    StringBuilder sb = new StringBuilder();
                    String line;
                    while ((line = reader.readLine()) != null) {
                        sb.append(line).append("\n");
                    }
                    reader.close();
                    fis.close();
                    fileData.put("data", sb.toString());
                    fileData.put("encoding", "utf8");
                } else {
                    // Читаем как бинарный файл и кодируем в Base64
                    FileInputStream fis = new FileInputStream(file);
                    byte[] fileBytes = new byte[(int) file.length()];
                    fis.read(fileBytes);
                    fis.close();
                    String base64Data = Base64.encodeToString(fileBytes, Base64.NO_WRAP);
                    fileData.put("data", base64Data);
                    fileData.put("encoding", "base64");
                }
                runJsCallback(callbackId, true, createSuccessJson(fileData)); // Оборачиваем fileData в { "value": fileData }
            } else {
                runJsCallback(callbackId, false, createErrorJson("file_not_found", "File not found or is a directory: " + path));
            }
        } catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in fsReadFile for path " + path, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }

    @JavascriptInterface
    public void fsWriteFile(String pluginIdFromJs, String path, String dataString, String encoding, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "fsWriteFile called for path: " + path + " cbId: " + callbackId);
         if (!this.pluginId.equals(pluginIdFromJs)) { /* ... ошибка ... */ runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch.")); return; }
        // TODO: Проверка 'write_file'
        try {
            File file = getSafePluginFile(path);
            File parentDir = file.getParentFile();
            if (parentDir != null && !parentDir.exists()) {
                parentDir.mkdirs();
            }
            FileOutputStream fos = new FileOutputStream(file);
            if ("base64".equalsIgnoreCase(encoding)) {
                byte[] decodedBytes = Base64.decode(dataString, Base64.DEFAULT);
                fos.write(decodedBytes);
            } else { // utf8 по умолчанию
                OutputStreamWriter writer = new OutputStreamWriter(fos, StandardCharsets.UTF_8);
                writer.write(dataString);
                writer.flush();
                writer.close();
            }
            fos.close();
            runJsCallback(callbackId, true, createSuccessJson(true));
        } catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in fsWriteFile for path " + path, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }

    @JavascriptInterface
    public void fsExists(String pluginIdFromJs, String path, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "fsExists called for path: " + path + " cbId: " + callbackId);
        if (!this.pluginId.equals(pluginIdFromJs)) { /* ... ошибка ... */ runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch.")); return; }
        // TODO: Проверка 'read_file' (или специальное разрешение на проверку существования)
        try {
            File file = getSafePluginFile(path); // getSafePluginFile может выбросить SecurityException
            boolean exists = file.exists();
            runJsCallback(callbackId, true, createSuccessJson(exists));
        } catch (SecurityException se) { // Ловим SecurityException от getSafePluginFile
             Log.w(TAG_PREFIX + pluginId, "SecurityException in fsExists for path " + path, se);
             runJsCallback(callbackId, true, createSuccessJson(false)); // Если путь небезопасен, считаем что не существует
        }
        catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in fsExists for path " + path, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }

    // --- Image API ---
    @JavascriptInterface
    public void imageGetImage(String pluginIdFromJs, String imageId, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "imageGetImage called for imageId: " + imageId + " cbId: " + callbackId);
        if (!this.pluginId.equals(pluginIdFromJs)) {
            runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch."));
            return;
        }
        // TODO: Проверка разрешения 'read_image' для pluginId
        // TODO: Реализовать реальную логику получения данных изображения по imageId (например, из БД или файловой системы)

        // Заглушка: возвращаем моковые данные
        try {
            JSONObject imageData = new JSONObject();
            imageData.put("id", imageId);
            imageData.put("path", "/storage/emulated/0/Pictures/mock_" + imageId + ".png"); // Пример пути
            imageData.put("width", 800);
            imageData.put("height", 600);
            imageData.put("mimeType", "image/png");
            // Можно добавить другие поля, например, base64 превью, если нужно
            // imageData.put("previewBase64", "...");

            // Оборачиваем данные изображения в объект с ключом "value", как ожидает JS Promise resolve
            JSONObject result = new JSONObject();
            result.put("value", imageData);
            runJsCallback(callbackId, true, result.toString());
        } catch (JSONException e) {
            Log.e(TAG_PREFIX + pluginId, "Error creating JSON for imageGetImage", e);
            runJsCallback(callbackId, false, createErrorJson("json_creation_error", "Failed to create JSON response for image data."));
        } catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in imageGetImage for imageId " + imageId, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }
    // TODO: imageSaveImage, imageRegisterFilter, imageApplyFilter

    // --- Text API ---
    private SharedPreferences getPluginTextPreferences() {
        return context.getSharedPreferences("plugin_texts_" + pluginId, Context.MODE_PRIVATE);
    }

    @JavascriptInterface
    public void textGetText(String pluginIdFromJs, String textId, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "textGetText called for textId: " + textId + " cbId: " + callbackId);
        if (!this.pluginId.equals(pluginIdFromJs)) {
            runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch."));
            return;
        }
        // TODO: Проверка разрешения 'read_text' для pluginId

        try {
            SharedPreferences prefs = getPluginTextPreferences();
            String textContent = prefs.getString(textId, null); // Возвращаем null, если нет значения
            // JS ожидает { value: "текст" или null }
            runJsCallback(callbackId, true, createSuccessJson(textContent));
        } catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in textGetText for textId " + textId, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }

    @JavascriptInterface
    public void textSetText(String pluginIdFromJs, String textId, String textContent, String callbackId) {
        Log.d(TAG_PREFIX + pluginId, "textSetText called for textId: " + textId + " cbId: " + callbackId);
        if (!this.pluginId.equals(pluginIdFromJs)) {
            runJsCallback(callbackId, false, createErrorJson("permission_denied", "Plugin ID mismatch."));
            return;
        }
        // TODO: Проверка разрешения 'write_text' или 'modify_text' для pluginId

        try {
            SharedPreferences prefs = getPluginTextPreferences();
            prefs.edit().putString(textId, textContent).apply();
            runJsCallback(callbackId, true, createSuccessJson(true)); // Ответ: { "value": true }
        } catch (Exception e) {
            Log.e(TAG_PREFIX + pluginId, "Error in textSetText for textId " + textId, e);
            runJsCallback(callbackId, false, createErrorJson("native_error", e.getMessage()));
        }
    }
    // TODO: textRegisterTextHandler, textSpellCheck
}
