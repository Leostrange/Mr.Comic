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
    private PluginManager pluginManager;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_plugin_manager);
        
        initializeViews();
        setupRecyclerView();
        setupEventListeners();
        loadInstalledPlugins();
    }
    
    /**
     * Инициализация элементов интерфейса
     */
    private void initializeViews() {
        pluginRecyclerView = findViewById(R.id.recycler_view_plugins);
        fabAddPlugin = findViewById(R.id.fab_add_plugin);
        btnRefreshPlugins = findViewById(R.id.btn_refresh_plugins);
        
        pluginManager = PluginManager.getInstance(this);
        installedPlugins = new ArrayList<>();
    }
    
    /**
     * Настройка RecyclerView для отображения списка плагинов
     */
    private void setupRecyclerView() {
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
        fabAddPlugin.setOnClickListener(v -> openPluginInstaller());
        btnRefreshPlugins.setOnClickListener(v -> refreshPluginList());
    }
    
    /**
     * Загрузка списка установленных плагинов
     */
    private void loadInstalledPlugins() {
        try {
            List<Plugin> plugins = pluginManager.getInstalledPlugins();
            installedPlugins.clear();
            installedPlugins.addAll(plugins);
            pluginAdapter.notifyDataSetChanged();
        } catch (Exception e) {
            Toast.makeText(this, "Ошибка загрузки плагинов: " + e.getMessage(), 
                         Toast.LENGTH_SHORT).show();
        }
    }
    
    /**
     * Включение/отключение плагина
     */
    private void togglePlugin(Plugin plugin, boolean enabled) {
        try {
            if (enabled) {
                pluginManager.enablePlugin(plugin.getId());
                Toast.makeText(this, "Плагин " + plugin.getName() + " включен", 
                             Toast.LENGTH_SHORT).show();
            } else {
                pluginManager.disablePlugin(plugin.getId());
                Toast.makeText(this, "Плагин " + plugin.getName() + " отключен", 
                             Toast.LENGTH_SHORT).show();
            }
            plugin.setEnabled(enabled);
            pluginAdapter.notifyDataSetChanged();
        } catch (Exception e) {
            Toast.makeText(this, "Ошибка изменения состояния плагина: " + e.getMessage(), 
                         Toast.LENGTH_SHORT).show();
        }
    }
    
    /**
     * Настройка плагина
     */
    private void configurePlugin(Plugin plugin) {
        Intent intent = new Intent(this, PluginConfigActivity.class);
        intent.putExtra("plugin_id", plugin.getId());
        startActivity(intent);
    }
    
    /**
     * Удаление плагина
     */
    private void uninstallPlugin(Plugin plugin) {
        try {
            pluginManager.uninstallPlugin(plugin.getId());
            installedPlugins.remove(plugin);
            pluginAdapter.notifyDataSetChanged();
            Toast.makeText(this, "Плагин " + plugin.getName() + " удален", 
                         Toast.LENGTH_SHORT).show();
        } catch (Exception e) {
            Toast.makeText(this, "Ошибка удаления плагина: " + e.getMessage(), 
                         Toast.LENGTH_SHORT).show();
        }
    }
    
    /**
     * Отображение информации о плагине
     */
    private void showPluginInfo(Plugin plugin) {
        Intent intent = new Intent(this, PluginInfoActivity.class);
        intent.putExtra("plugin_id", plugin.getId());
        startActivity(intent);
    }
    
    /**
     * Открытие установщика плагинов
     */
    private void openPluginInstaller() {
        Intent intent = new Intent(this, PluginInstallerActivity.class);
        startActivityForResult(intent, REQUEST_INSTALL_PLUGIN);
    }
    
    /**
     * Обновление списка плагинов
     */
    private void refreshPluginList() {
        loadInstalledPlugins();
        Toast.makeText(this, "Список плагинов обновлен", Toast.LENGTH_SHORT).show();
    }
    
    private static final int REQUEST_INSTALL_PLUGIN = 1001;
    
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        
        if (requestCode == REQUEST_INSTALL_PLUGIN && resultCode == RESULT_OK) {
            // Плагин был установлен, обновляем список
            refreshPluginList();
        }
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        // Обновляем список при возврате к активности
        loadInstalledPlugins();
    }
}
