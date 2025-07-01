package com.mrcomic.plugins.gui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 * Активность для установки новых плагинов
 */
public class PluginInstallerActivity extends AppCompatActivity {
    
    private Button btnSelectPlugin;
    private Button btnInstall;
    private TextView tvSelectedFile;
    private ProgressBar progressInstall;
    
    private Uri selectedPluginUri;
    private PluginManager pluginManager;
    
    private static final int REQUEST_SELECT_PLUGIN = 1001;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_plugin_installer);
        
        initializeViews();
        setupEventListeners();
        
        pluginManager = PluginManager.getInstance(this);
    }
    
    /**
     * Инициализация элементов интерфейса
     */
    private void initializeViews() {
        btnSelectPlugin = findViewById(R.id.btn_select_plugin);
        btnInstall = findViewById(R.id.btn_install_plugin);
        tvSelectedFile = findViewById(R.id.tv_selected_file);
        progressInstall = findViewById(R.id.progress_install);
        
        // Изначально кнопка установки недоступна
        btnInstall.setEnabled(false);
    }
    
    /**
     * Настройка обработчиков событий
     */
    private void setupEventListeners() {
        btnSelectPlugin.setOnClickListener(v -> selectPluginFile());
        btnInstall.setOnClickListener(v -> installSelectedPlugin());
    }
    
    /**
     * Открытие диалога выбора файла плагина
     */
    private void selectPluginFile() {
        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
        intent.setType("*/*");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        
        try {
            startActivityForResult(
                Intent.createChooser(intent, "Выберите файл плагина"),
                REQUEST_SELECT_PLUGIN
            );
        } catch (android.content.ActivityNotFoundException ex) {
            Toast.makeText(this, "Требуется файловый менеджер", Toast.LENGTH_SHORT).show();
        }
    }
    
    /**
     * Обработка результата выбора файла
     */
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        
        if (requestCode == REQUEST_SELECT_PLUGIN && resultCode == RESULT_OK) {
            if (data != null) {
                selectedPluginUri = data.getData();
                String fileName = getFileNameFromUri(selectedPluginUri);
                
                // Проверяем формат файла
                if (fileName.endsWith(".jar") || fileName.endsWith(".zip")) {
                    tvSelectedFile.setText(fileName);
                    btnInstall.setEnabled(true);
                } else {
                    Toast.makeText(this, "Неподдерживаемый формат файла. Используйте .jar или .zip", 
                                 Toast.LENGTH_SHORT).show();
                    tvSelectedFile.setText("Выберите файл плагина (.jar или .zip)");
                    btnInstall.setEnabled(false);
                    selectedPluginUri = null;
                }
            }
        }
    }
    
    /**
     * Получение имени файла из URI
     */
    private String getFileNameFromUri(Uri uri) {
        String result = null;
        if (uri.getScheme().equals("content")) {
            try (android.database.Cursor cursor = getContentResolver().query(uri, null, null, null, null)) {
                if (cursor != null && cursor.moveToFirst()) {
                    int nameIndex = cursor.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME);
                    if (nameIndex != -1) {
                        result = cursor.getString(nameIndex);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        if (result == null) {
            result = uri.getPath();
            int cut = result.lastIndexOf('/');
            if (cut != -1) {
                result = result.substring(cut + 1);
            }
        }
        
        return result;
    }
    
    /**
     * Установка выбранного плагина
     */
    private void installSelectedPlugin() {
        if (selectedPluginUri == null) {
            Toast.makeText(this, "Сначала выберите файл плагина", Toast.LENGTH_SHORT).show();
            return;
        }
        
        // Показываем прогресс установки
        progressInstall.setVisibility(View.VISIBLE);
        btnInstall.setEnabled(false);
        btnSelectPlugin.setEnabled(false);
        
        // Запускаем установку в отдельном потоке
        new Thread(() -> {
            boolean success = false;
            
            try {
                // Копируем файл во временную директорию
                File tempFile = createTempPluginFile(selectedPluginUri);
                
                // Устанавливаем плагин
                success = pluginManager.installPlugin(tempFile);
                
                // Удаляем временный файл
                tempFile.delete();
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            // Обновляем UI в основном потоке
            final boolean finalSuccess = success;
            runOnUiThread(() -> {
                progressInstall.setVisibility(View.GONE);
                btnSelectPlugin.setEnabled(true);
                
                if (finalSuccess) {
                    Toast.makeText(PluginInstallerActivity.this, 
                                 "Плагин успешно установлен", Toast.LENGTH_SHORT).show();
                    
                    // Возвращаем результат в PluginManagerActivity
                    setResult(RESULT_OK);
                    finish();
                } else {
                    Toast.makeText(PluginInstallerActivity.this, 
                                 "Ошибка установки плагина", Toast.LENGTH_SHORT).show();
                    btnInstall.setEnabled(true);
                }
            });
        }).start();
    }
    
    /**
     * Создание временного файла плагина
     */
    private File createTempPluginFile(Uri uri) throws Exception {
        String fileName = getFileNameFromUri(uri);
        File tempFile = new File(getCacheDir(), fileName);
        
        try (InputStream inputStream = getContentResolver().openInputStream(uri);
             FileOutputStream outputStream = new FileOutputStream(tempFile)) {
            
            byte[] buffer = new byte[4096];
            int bytesRead;
            
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
            
            outputStream.flush();
        }
        
        return tempFile;
    }
}
