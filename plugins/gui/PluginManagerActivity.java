package com.mrcomic.plugins.gui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;

// Импорт для тестового кода JsPluginHost
import com.mrcomic.plugins.host.JsPluginHost; // Добавлено
import java.io.File; // Добавлено
import android.util.Log; // Добавлено

/**
 * Активность для управления плагинами Mr.Comic
 * Предоставляет пользовательский интерфейс для установки, удаления и настройки плагинов
 */
public class PluginManagerActivity extends AppCompatActivity {

    private RecyclerView pluginRecyclerView;
    private PluginAdapter pluginAdapter;
    private List<Plugin> installedPlugins;
    private FloatingActionButton fabAddPlugin;
    private Button btnRefreshPlugins;
    private PluginManager pluginManager; // Используется PluginManager из plugins/gui/

    // Поле для хранения тестового хоста, чтобы можно было вызвать destroy (опционально)
    private JsPluginHost testJsHostInstance;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Предполагаем, что R.layout.activity_plugin_manager существует и корректен
        // Если его нет или ID неправильные, приложение упадет здесь.
        // Для простоты этого упражнения, я не могу проверить R.layout.activity_plugin_manager.
        try {
            setContentView(R.layout.activity_plugin_manager);
        } catch (Exception e) {
            Log.e("PluginManagerActivity", "Error setting content view. Make sure R.layout.activity_plugin_manager is correct.", e);
            // Если layout не найден, можно установить простой View, чтобы приложение не падало, а логи работали
            // LinearLayout linearLayout = new LinearLayout(this);
            // setContentView(linearLayout);
            // Toast.makeText(this, "Layout Error, see logs", Toast.LENGTH_LONG).show();
        }

        initializeViews();
        setupRecyclerView();
        setupEventListeners();
        loadInstalledPlugins();

        // --- Тестовый код для JsPluginHost ---
        try {
            Log.d("JsPluginHostTest", "Attempting to initialize and load test JS plugin...");
            File basePluginsDir = new File(getApplicationContext().getFilesDir(), "plugins");
            if (!basePluginsDir.exists()) {
                if (basePluginsDir.mkdirs()) {
                    Log.d("JsPluginHostTest", "Created base plugins directory: " + basePluginsDir.getAbsolutePath());
                } else {
                    Log.e("JsPluginHostTest", "Failed to create base plugins directory: " + basePluginsDir.getAbsolutePath());
                }
            }

            File testPluginDir = new File(basePluginsDir, "test-js-plugin");
            if (!testPluginDir.exists()) {
                if (testPluginDir.mkdirs()) {
                     Log.d("JsPluginHostTest", "Created directory for test-js-plugin at " + testPluginDir.getAbsolutePath());
                     // Для теста создадим пустой frontend/index.html, если его нет,
                     // так как JsPluginHost ожидает его найти.
                     File frontendDir = new File(testPluginDir, "frontend");
                     if (!frontendDir.exists()) frontendDir.mkdirs();
                     File indexHtml = new File(frontendDir, "index.html");
                     if (!indexHtml.exists()) {
                         try {
                             new java.io.FileWriter(indexHtml).append("<h1>Test Content</h1>").close();
                             Log.d("JsPluginHostTest", "Created dummy index.html for test plugin.");
                         } catch (java.io.IOException ioe) {
                             Log.e("JsPluginHostTest", "Failed to create dummy index.html", ioe);
                         }
                     }
                } else {
                    Log.e("JsPluginHostTest", "Failed to create directory for test-js-plugin: " + testPluginDir.getAbsolutePath());
                }
            }

            if (testPluginDir.exists() && testPluginDir.isDirectory()) {
                testJsHostInstance = new JsPluginHost(getApplicationContext(), testPluginDir, "test-js-plugin");
                testJsHostInstance.load();
                // WebView не добавляется в Layout, просто проверяем загрузку по логам.
                Log.d("JsPluginHostTest", "Test JsPluginHost load() called for test-js-plugin.");
            } else {
                Log.e("JsPluginHostTest", "Test plugin directory not found or is not a directory: " + testPluginDir.getAbsolutePath());
            }
        } catch (Exception e) {
            Log.e("JsPluginHostTest", "Error during JsPluginHost test init in onCreate", e);
        }
        // --- Конец тестового кода ---
    }

    /**
     * Инициализация элементов интерфейса
     */
    private void initializeViews() {
        // Обернем в try-catch на случай если ID не будут найдены в R.layout.activity_plugin_manager
        try {
            pluginRecyclerView = findViewById(R.id.recycler_view_plugins);
            fabAddPlugin = findViewById(R.id.fab_add_plugin);
            btnRefreshPlugins = findViewById(R.id.btn_refresh_plugins);
        } catch (Exception e) {
            Log.e("PluginManagerActivity", "Error initializing views. Check R IDs.", e);
        }

        pluginManager = PluginManager.getInstance(this); // Использует com.mrcomic.plugins.gui.PluginManager
        installedPlugins = new ArrayList<>();
    }

    /**
     * Настройка RecyclerView для отображения списка плагинов
     */
    private void setupRecyclerView() {
        if (pluginRecyclerView == null) {
            Log.e("PluginManagerActivity", "pluginRecyclerView is null, cannot setup.");
            return;
        }
        pluginAdapter = new PluginAdapter(installedPlugins, new PluginAdapter.OnPluginActionListener() {
            @Override
            public void onPluginToggle(Plugin plugin, boolean enabled) {
                togglePlugin(plugin, enabled);
            }

            @Override
            public void onPluginConfigure(Plugin plugin) {
                configurePlugin(plugin);
            }

            @Override
            public void onPluginUninstall(Plugin plugin) {
                uninstallPlugin(plugin);
            }

            @Override
            public void onPluginInfo(Plugin plugin) {
                showPluginInfo(plugin);
            }
        });

        pluginRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        pluginRecyclerView.setAdapter(pluginAdapter);
    }

    /**
     * Настройка обработчиков событий
     */
    private void setupEventListeners() {
        if (fabAddPlugin != null) {
            fabAddPlugin.setOnClickListener(v -> openPluginInstaller());
        } else {
            Log.w("PluginManagerActivity", "fabAddPlugin is null, listener not set.");
        }
        if (btnRefreshPlugins != null) {
            btnRefreshPlugins.setOnClickListener(v -> refreshPluginList());
        } else {
            Log.w("PluginManagerActivity", "btnRefreshPlugins is null, listener not set.");
        }
    }

    /**
     * Загрузка списка установленных плагинов
     */
    private void loadInstalledPlugins() {
        try {
            if (pluginManager == null || pluginAdapter == null) {
                 Log.w("PluginManagerActivity", "pluginManager or pluginAdapter is null in loadInstalledPlugins.");
                return;
            }
            List<Plugin> plugins = pluginManager.getInstalledPlugins(); // Этот PluginManager из .gui
            installedPlugins.clear();
            if (plugins != null) { // pluginManager.getInstalledPlugins() может вернуть null
                 installedPlugins.addAll(plugins);
            }
            pluginAdapter.notifyDataSetChanged();
        } catch (Exception e) {
            Log.e("PluginManagerActivity", "Ошибка загрузки плагинов", e);
            Toast.makeText(this, "Ошибка загрузки плагинов: " + e.getMessage(),
                         Toast.LENGTH_SHORT).show();
        }
    }

    // ... (остальные методы без изменений) ...
    private void togglePlugin(Plugin plugin, boolean enabled) {
        try {
            if (enabled) {
                pluginManager.enablePlugin(plugin.getId());
                Toast.makeText(this, "Плагин " + plugin.getName() + " включен", Toast.LENGTH_SHORT).show();
            } else {
                pluginManager.disablePlugin(plugin.getId());
                Toast.makeText(this, "Плагин " + plugin.getName() + " отключен", Toast.LENGTH_SHORT).show();
            }
            plugin.setEnabled(enabled);
            if (pluginAdapter != null) pluginAdapter.notifyDataSetChanged();
        } catch (Exception e) {
            Toast.makeText(this, "Ошибка изменения состояния плагина: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    private void configurePlugin(Plugin plugin) {
        Intent intent = new Intent(this, PluginConfigActivity.class);
        intent.putExtra("plugin_id", plugin.getId());
        startActivity(intent);
    }

    private void uninstallPlugin(Plugin plugin) {
        try {
            pluginManager.uninstallPlugin(plugin.getId());
            installedPlugins.remove(plugin);
             if (pluginAdapter != null) pluginAdapter.notifyDataSetChanged();
            Toast.makeText(this, "Плагин " + plugin.getName() + " удален", Toast.LENGTH_SHORT).show();
        } catch (Exception e) {
            Toast.makeText(this, "Ошибка удаления плагина: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    private void showPluginInfo(Plugin plugin) {
        Intent intent = new Intent(this, PluginInfoActivity.class);
        intent.putExtra("plugin_id", plugin.getId());
        startActivity(intent);
    }

    private void openPluginInstaller() {
        Intent intent = new Intent(this, PluginInstallerActivity.class);
        startActivityForResult(intent, REQUEST_INSTALL_PLUGIN);
    }

    private void refreshPluginList() {
        loadInstalledPlugins();
        Toast.makeText(this, "Список плагинов обновлен", Toast.LENGTH_SHORT).show();
    }

    private static final int REQUEST_INSTALL_PLUGIN = 1001;

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_INSTALL_PLUGIN && resultCode == RESULT_OK) {
            refreshPluginList();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        loadInstalledPlugins();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (testJsHostInstance != null) {
            Log.d("JsPluginHostTest", "Destroying testJsHostInstance in onDestroy.");
            testJsHostInstance.destroy();
            testJsHostInstance = null;
        }
    }
}
