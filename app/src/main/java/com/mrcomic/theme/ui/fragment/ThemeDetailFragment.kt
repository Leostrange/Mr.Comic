package com.example.mrcomic.theme.ui.fragment

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import com.example.mrcomic.theme.data.model.Theme
import com.example.mrcomic.theme.databinding.FragmentThemeDetailBinding
import com.example.mrcomic.theme.ui.viewmodel.ThemeDetailViewModel
import com.google.android.material.snackbar.Snackbar
import dagger.hilt.android.AndroidEntryPoint

/**
 * Фрагмент для детального просмотра темы
 */
@AndroidEntryPoint
class ThemeDetailFragment : Fragment() {

    private var _binding: FragmentThemeDetailBinding? = null
    private val binding get() = _binding!!

    private val viewModel: ThemeDetailViewModel by viewModels()
    
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentThemeDetailBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        
        // Получение ID темы из аргументов
        val themeId = arguments?.getString("themeId") ?: return
        
        setupObservers()
        setupListeners()
        
        // Загрузка информации о теме
        viewModel.loadTheme(themeId)
    }

    private fun setupObservers() {
        viewModel.theme.observe(viewLifecycleOwner) { theme ->
            updateUI(theme)
        }

        viewModel.isLoading.observe(viewLifecycleOwner) { isLoading ->
            binding.progressBar.visibility = if (isLoading) View.VISIBLE else View.GONE
        }

        viewModel.error.observe(viewLifecycleOwner) { error ->
            error?.let {
                Snackbar.make(binding.root, it, Snackbar.LENGTH_LONG).show()
            }
        }
    }

    private fun setupListeners() {
        binding.buttonDownload.setOnClickListener {
            viewModel.theme.value?.let { theme ->
                val deviceInfo = mapOf(
                    "model" to android.os.Build.MODEL,
                    "os" to "Android ${android.os.Build.VERSION.RELEASE}",
                    "appVersion" to requireContext().packageManager.getPackageInfo(requireContext().packageName, 0).versionName
                )
                viewModel.downloadTheme(theme.id, deviceInfo)
            }
        }

        binding.buttonApply.setOnClickListener {
            viewModel.theme.value?.let { theme ->
                viewModel.applyTheme(theme)
                Snackbar.make(binding.root, "Тема успешно применена", Snackbar.LENGTH_LONG).show()
            }
        }
        
        binding.buttonBack.setOnClickListener {
            // Возврат к предыдущему экрану
            // findNavController().navigateUp()
        }
    }

    private fun updateUI(theme: Theme) {
        binding.textViewThemeName.text = theme.name
        binding.textViewAuthor.text = "Автор: ${theme.author?.username ?: "Неизвестен"}"
        binding.textViewDescription.text = theme.description
        binding.textViewRating.text = "Рейтинг: ${theme.rating.average} (${theme.rating.count} оценок)"
        binding.textViewDownloads.text = "Загрузок: ${theme.downloads}"
        
        // Загрузка превью темы
        // Glide.with(this)
        //     .load(theme.previewImageUrl)
        //     .into(binding.imageViewPreview)
        
        // Отображение тегов
        binding.chipGroupTags.removeAllViews()
        theme.tags.forEach { tag ->
            val chip = com.google.android.material.chip.Chip(context)
            chip.text = tag
            binding.chipGroupTags.addView(chip)
        }
        
        // Отображение цветов темы
        binding.viewColorPrimary.setBackgroundColor(android.graphics.Color.parseColor(theme.themeData.colors.primary))
        binding.viewColorSecondary.setBackgroundColor(android.graphics.Color.parseColor(theme.themeData.colors.secondary))
        binding.viewColorAccent.setBackgroundColor(android.graphics.Color.parseColor(theme.themeData.colors.accent))
        binding.viewColorBackground.setBackgroundColor(android.graphics.Color.parseColor(theme.themeData.colors.background))
        binding.viewColorText.setBackgroundColor(android.graphics.Color.parseColor(theme.themeData.colors.text))
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
