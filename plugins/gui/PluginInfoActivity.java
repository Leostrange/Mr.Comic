package com.mrcomic.plugins.gui;

import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

/**
 * Активность для отображения информации о плагине
 */
public class PluginInfoActivity extends AppCompatActivity {
    
    private ImageView ivPluginIcon;
    private TextView tvPluginName;
    private TextView tvPluginVersion;
    private TextView tvPluginAuthor;
    private TextView tvPluginDescription;
    private TextView tvPluginPackage;
    private TextView tvPluginMinVersion;
    private TextView tvPluginTargetVersion;
    private TextView tvPluginStatus;
    
    private String pluginId;
    private Plugin plugin;
    private PluginManager pluginManager;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_plugin_info);
        
        // Получаем ID плагина из Intent
        pluginId = getIntent().getStringExtra("plugin_id");
        if (pluginId == null) {
            finish();
            return;
        }
        
        initializeViews();
        setupToolbar();
        
        pluginManager = PluginManager.getInstance(this);
        loadPluginInfo();
    }
    
    /**
     * Инициализация элементов интерфейса
     */
    private void initializeViews() {
        ivPluginIcon = findViewById(R.id.iv_plugin_icon);
        tvPluginName = findViewById(R.id.tv_plugin_name);
        tvPluginVersion = findViewById(R.id.tv_plugin_version);
        tvPluginAuthor = findViewById(R.id.tv_plugin_author);
        tvPluginDescription = findViewById(R.id.tv_plugin_description);
        tvPluginPackage = findViewById(R.id.tv_plugin_package);
        tvPluginMinVersion = findViewById(R.id.tv_plugin_min_version);
        tvPluginTargetVersion = findViewById(R.id.tv_plugin_target_version);
        tvPluginStatus = findViewById(R.id.tv_plugin_status);
    }
    
    /**
     * Настройка панели инструментов
     */
    private void setupToolbar() {
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle("Информация о плагине");
    }
    
    /**
     * Загрузка информации о плагине
     */
    private void loadPluginInfo() {
        // Получаем информацию о плагине
        for (Plugin p : pluginManager.getInstalledPlugins()) {
            if (p.getId().equals(pluginId)) {
                plugin = p;
                break;
            }
        }
        
        if (plugin == null) {
            finish();
            return;
        }
        
        // Отображаем информацию о плагине
        displayPluginInfo();
    }
    
    /**
     * Отображение информации о плагине
     */
    private void displayPluginInfo() {
        // Устанавливаем иконку плагина
        if (plugin.getIconPath() != null && !plugin.getIconPath().isEmpty()) {
            // Здесь будет код для загрузки иконки из файла
            // В данном примере используем стандартную иконку
            ivPluginIcon.setImageResource(android.R.drawable.ic_menu_info_details);
        } else {
            ivPluginIcon.setImageResource(android.R.drawable.ic_menu_info_details);
        }
        
        // Устанавливаем текстовую информацию
        tvPluginName.setText(plugin.getName());
        tvPluginVersion.setText("Версия: " + plugin.getVersion());
        tvPluginAuthor.setText("Автор: " + plugin.getAuthor());
        tvPluginDescription.setText(plugin.getDescription());
        
        // Дополнительная информация
        if (plugin.getPackageName() != null && !plugin.getPackageName().isEmpty()) {
            tvPluginPackage.setText("Пакет: " + plugin.getPackageName());
        } else {
            tvPluginPackage.setText("Пакет: не указан");
        }
        
        tvPluginMinVersion.setText("Минимальная версия приложения: " + plugin.getMinAppVersion());
        tvPluginTargetVersion.setText("Целевая версия приложения: " + plugin.getTargetAppVersion());
        
        // Статус плагина
        if (plugin.isEnabled()) {
            tvPluginStatus.setText("Статус: Включен");
            tvPluginStatus.setTextColor(getResources().getColor(android.R.color.holo_green_dark));
        } else {
            tvPluginStatus.setText("Статус: Отключен");
            tvPluginStatus.setTextColor(getResources().getColor(android.R.color.holo_red_dark));
        }
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
