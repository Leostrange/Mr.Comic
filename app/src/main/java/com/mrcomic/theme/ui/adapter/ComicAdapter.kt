package com.example.mrcomic.theme.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.example.mrcomic.theme.data.model.Comic
import com.example.mrcomic.theme.databinding.ItemComicBinding

/**
 * Адаптер для отображения списка комиксов
 */
class ComicAdapter(
    private val onComicClick: (Comic) -> Unit
) : ListAdapter<Comic, ComicAdapter.ComicViewHolder>(ComicDiffCallback()) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ComicViewHolder {
        val binding = ItemComicBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ComicViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ComicViewHolder, position: Int) {
        val comic = getItem(position)
        holder.bind(comic)
    }

    inner class ComicViewHolder(
        private val binding: ItemComicBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        init {
            binding.root.setOnClickListener {
                val position = bindingAdapterPosition
                if (position != RecyclerView.NO_POSITION) {
                    onComicClick(getItem(position))
                }
            }
        }

        fun bind(comic: Comic) {
            binding.textViewTitle.text = comic.title
            binding.textViewAuthor.text = comic.author ?: "Неизвестен"
            // Загрузка обложки (если есть)
            // Glide.with(binding.root)
            //     .load(comic.coverImage)
            //     .into(binding.imageViewCover)
        }
    }

    class ComicDiffCallback : DiffUtil.ItemCallback<Comic>() {
        override fun areItemsTheSame(oldItem: Comic, newItem: Comic): Boolean {
            return oldItem.id == newItem.id
        }

        override fun areContentsTheSame(oldItem: Comic, newItem: Comic): Boolean {
            return oldItem == newItem
        }
    }
} 