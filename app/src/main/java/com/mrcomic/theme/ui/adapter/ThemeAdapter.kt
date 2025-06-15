package com.example.mrcomic.theme.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.example.mrcomic.theme.data.model.Theme
import com.example.mrcomic.theme.databinding.ItemThemeBinding

/**
 * Адаптер для отображения списка тем
 */
class ThemeAdapter(
    private val onThemeClick: (Theme) -> Unit
) : ListAdapter<Theme, ThemeAdapter.ThemeViewHolder>(ThemeDiffCallback()) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ThemeViewHolder {
        val binding = ItemThemeBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ThemeViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ThemeViewHolder, position: Int) {
        val theme = getItem(position)
        holder.bind(theme)
    }

    inner class ThemeViewHolder(
        private val binding: ItemThemeBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        init {
            binding.root.setOnClickListener {
                val position = bindingAdapterPosition
                if (position != RecyclerView.NO_POSITION) {
                    onThemeClick(getItem(position))
                }
            }
        }

        fun bind(theme: Theme) {
            binding.textViewThemeName.text = theme.name
            binding.textViewAuthor.text = theme.author?.username ?: "Неизвестен"
            binding.textViewRating.text = "${theme.rating.average}"
            binding.textViewDownloads.text = "${theme.downloads} загрузок"
            
            // Загрузка превью темы
            // Glide.with(binding.root)
            //     .load(theme.previewImageUrl)
            //     .into(binding.imageViewPreview)
            
            // Отображение цветов темы
            binding.viewColorPrimary.setBackgroundColor(android.graphics.Color.parseColor(theme.themeData.colors.primary))
            binding.viewColorSecondary.setBackgroundColor(android.graphics.Color.parseColor(theme.themeData.colors.secondary))
            binding.viewColorAccent.setBackgroundColor(android.graphics.Color.parseColor(theme.themeData.colors.accent))
        }
    }

    class ThemeDiffCallback : DiffUtil.ItemCallback<Theme>() {
        override fun areItemsTheSame(oldItem: Theme, newItem: Theme): Boolean {
            return oldItem.id == newItem.id
        }

        override fun areContentsTheSame(oldItem: Theme, newItem: Theme): Boolean {
            return oldItem == newItem
        }
    }
}
