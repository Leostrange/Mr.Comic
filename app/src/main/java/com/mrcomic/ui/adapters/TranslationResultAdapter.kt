package com.mrcomic.ui.adapters

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.mrcomic.core.TranslationResult
import com.mrcomic.databinding.ItemTranslationResultBinding

/**
 * Адаптер для отображения результатов перевода
 */
class TranslationResultAdapter(
    private val onItemClick: (TranslationResult) -> Unit
) : ListAdapter<TranslationResult, TranslationResultAdapter.ViewHolder>(DiffCallback()) {
    
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemTranslationResultBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ViewHolder(binding)
    }
    
    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(getItem(position))
    }
    
    inner class ViewHolder(
        private val binding: ItemTranslationResultBinding
    ) : RecyclerView.ViewHolder(binding.root) {
        
        fun bind(result: TranslationResult) {
            binding.apply {
                textViewOriginal.text = result.originalText
                textViewTranslated.text = result.translatedText
                textViewLanguages.text = "${result.fromLanguage} → ${result.toLanguage}"
                textViewProvider.text = result.provider
                textViewConfidence.text = "Confidence: ${(result.confidence * 100).toInt()}%"
                
                // Индикатор офлайн/онлайн режима
                imageViewOfflineIndicator.visibility = if (result.isOffline) {
                    android.view.View.VISIBLE
                } else {
                    android.view.View.GONE
                }
                
                // Обработка ошибок
                if (result.error != null) {
                    textViewError.text = result.error
                    textViewError.visibility = android.view.View.VISIBLE
                    layoutError.visibility = android.view.View.VISIBLE
                } else {
                    textViewError.visibility = android.view.View.GONE
                    layoutError.visibility = android.view.View.GONE
                }
                
                // Клик по элементу
                root.setOnClickListener {
                    onItemClick(result)
                }
                
                // Кнопка копирования
                buttonCopy.setOnClickListener {
                    copyToClipboard(result.translatedText)
                }
                
                // Кнопка поделиться
                buttonShare.setOnClickListener {
                    shareText(result.translatedText)
                }
            }
        }
        
        private fun copyToClipboard(text: String) {
            val clipboard = binding.root.context.getSystemService(android.content.Context.CLIPBOARD_SERVICE) 
                as android.content.ClipboardManager
            val clip = android.content.ClipData.newPlainText("Translation", text)
            clipboard.setPrimaryClip(clip)
            
            android.widget.Toast.makeText(
                binding.root.context,
                "Copied to clipboard",
                android.widget.Toast.LENGTH_SHORT
            ).show()
        }
        
        private fun shareText(text: String) {
            val intent = android.content.Intent().apply {
                action = android.content.Intent.ACTION_SEND
                putExtra(android.content.Intent.EXTRA_TEXT, text)
                type = "text/plain"
            }
            
            val shareIntent = android.content.Intent.createChooser(intent, "Share translation")
            binding.root.context.startActivity(shareIntent)
        }
    }
    
    private class DiffCallback : DiffUtil.ItemCallback<TranslationResult>() {
        override fun areItemsTheSame(oldItem: TranslationResult, newItem: TranslationResult): Boolean {
            return oldItem.originalText == newItem.originalText && 
                   oldItem.fromLanguage == newItem.fromLanguage &&
                   oldItem.toLanguage == newItem.toLanguage
        }
        
        override fun areContentsTheSame(oldItem: TranslationResult, newItem: TranslationResult): Boolean {
            return oldItem == newItem
        }
    }
}

