package com.mrcomic.plugins.gui;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/**
 * Адаптер для отображения списка плагинов в RecyclerView
 */
public class PluginAdapter extends RecyclerView.Adapter<PluginAdapter.PluginViewHolder> {
    
    private List<Plugin> plugins;
    private OnPluginActionListener listener;
    
    /**
     * Интерфейс для обработки действий с плагинами
     */
    public interface OnPluginActionListener {
        void onPluginToggle(Plugin plugin, boolean enabled);
        void onPluginConfigure(Plugin plugin);
        void onPluginUninstall(Plugin plugin);
        void onPluginInfo(Plugin plugin);
    }
    
    public PluginAdapter(List<Plugin> plugins, OnPluginActionListener listener) {
        this.plugins = plugins;
        this.listener = listener;
    }
    
    @NonNull
    @Override
    public PluginViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.item_plugin, parent, false);
        return new PluginViewHolder(view);
    }
    
    @Override
    public void onBindViewHolder(@NonNull PluginViewHolder holder, int position) {
        Plugin plugin = plugins.get(position);
        holder.bind(plugin);
    }
    
    @Override
    public int getItemCount() {
        return plugins.size();
    }
    
    /**
     * ViewHolder для элемента плагина
     */
    class PluginViewHolder extends RecyclerView.ViewHolder {
        
        private CardView cardView;
        private TextView tvPluginName;
        private TextView tvPluginVersion;
        private TextView tvPluginAuthor;
        private TextView tvPluginDescription;
        private Switch switchPluginEnabled;
        private ImageButton btnPluginConfigure;
        private ImageButton btnPluginUninstall;
        private ImageButton btnPluginInfo;
        
        public PluginViewHolder(@NonNull View itemView) {
            super(itemView);
            
            cardView = itemView.findViewById(R.id.card_view_plugin);
            tvPluginName = itemView.findViewById(R.id.tv_plugin_name);
            tvPluginVersion = itemView.findViewById(R.id.tv_plugin_version);
            tvPluginAuthor = itemView.findViewById(R.id.tv_plugin_author);
            tvPluginDescription = itemView.findViewById(R.id.tv_plugin_description);
            switchPluginEnabled = itemView.findViewById(R.id.switch_plugin_enabled);
            btnPluginConfigure = itemView.findViewById(R.id.btn_plugin_configure);
            btnPluginUninstall = itemView.findViewById(R.id.btn_plugin_uninstall);
            btnPluginInfo = itemView.findViewById(R.id.btn_plugin_info);
        }
        
        /**
         * Привязка данных плагина к элементам интерфейса
         */
        public void bind(final Plugin plugin) {
            tvPluginName.setText(plugin.getName());
            tvPluginVersion.setText("v" + plugin.getVersion());
            tvPluginAuthor.setText(plugin.getAuthor());
            tvPluginDescription.setText(plugin.getDescription());
            
            // Устанавливаем состояние переключателя без вызова слушателя
            switchPluginEnabled.setOnCheckedChangeListener(null);
            switchPluginEnabled.setChecked(plugin.isEnabled());
            
            // Настраиваем слушатель для переключателя
            switchPluginEnabled.setOnCheckedChangeListener((buttonView, isChecked) -> {
                if (listener != null) {
                    listener.onPluginToggle(plugin, isChecked);
                }
            });
            
            // Настраиваем слушатели для кнопок
            btnPluginConfigure.setOnClickListener(v -> {
                if (listener != null) {
                    listener.onPluginConfigure(plugin);
                }
            });
            
            btnPluginUninstall.setOnClickListener(v -> {
                if (listener != null) {
                    listener.onPluginUninstall(plugin);
                }
            });
            
            btnPluginInfo.setOnClickListener(v -> {
                if (listener != null) {
                    listener.onPluginInfo(plugin);
                }
            });
            
            // Отключаем кнопку настройки, если плагин не поддерживает настройку
            btnPluginConfigure.setEnabled(plugin.isConfigurable());
            
            // Изменяем внешний вид карточки в зависимости от состояния плагина
            if (plugin.isEnabled()) {
                cardView.setCardBackgroundColor(itemView.getContext().getResources()
                        .getColor(R.color.plugin_enabled_background));
            } else {
                cardView.setCardBackgroundColor(itemView.getContext().getResources()
                        .getColor(R.color.plugin_disabled_background));
            }
        }
    }
}
