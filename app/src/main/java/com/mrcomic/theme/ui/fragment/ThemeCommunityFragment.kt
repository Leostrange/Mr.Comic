package com.example.mrcomic.theme.ui.fragment

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.mrcomic.theme.databinding.FragmentThemeCommunityBinding
import com.example.mrcomic.theme.ui.adapter.ThemeAdapter
import com.example.mrcomic.theme.ui.viewmodel.ThemeCommunityViewModel
import com.google.android.material.snackbar.Snackbar
import dagger.hilt.android.AndroidEntryPoint

/**
 * Фрагмент для отображения списка тем сообщества
 */
@AndroidEntryPoint
class ThemeCommunityFragment : Fragment() {

    private var _binding: FragmentThemeCommunityBinding? = null
    private val binding get() = _binding!!

    private val viewModel: ThemeCommunityViewModel by viewModels()
    private lateinit var themeAdapter: ThemeAdapter

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentThemeCommunityBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        
        setupRecyclerView()
        setupObservers()
        setupListeners()
    }

    private fun setupRecyclerView() {
        themeAdapter = ThemeAdapter { theme ->
            // Навигация к детальному просмотру темы
            // findNavController().navigate(
            //     ThemeCommunityFragmentDirections.actionThemeCommunityFragmentToThemeDetailFragment(theme.id)
            // )
        }
        
        binding.recyclerViewThemes.apply {
            layoutManager = LinearLayoutManager(requireContext())
            adapter = themeAdapter
        }
    }

    private fun setupObservers() {
        viewModel.themes.observe(viewLifecycleOwner) { themes ->
            themeAdapter.submitList(themes)
            binding.emptyView.visibility = if (themes.isEmpty()) View.VISIBLE else View.GONE
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
        binding.swipeRefreshLayout.setOnRefreshListener {
            viewModel.loadThemes(true)
            binding.swipeRefreshLayout.isRefreshing = false
        }

        binding.chipTrending.setOnClickListener {
            viewModel.loadTrendingThemes()
        }

        binding.chipRecommended.setOnClickListener {
            viewModel.loadRecommendedThemes()
        }

        binding.chipLatest.setOnClickListener {
            viewModel.updateFilters(sort = "createdAt", order = "desc")
        }

        binding.buttonFilter.setOnClickListener {
            // Открытие диалога фильтрации
            // showFilterDialog()
        }

        binding.searchView.setOnQueryTextListener(object : androidx.appcompat.widget.SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                query?.let {
                    viewModel.updateFilters(search = it)
                }
                return true
            }

            override fun onQueryTextChange(newText: String?): Boolean {
                // Реализация поиска по мере ввода, если нужно
                return false
            }
        })
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
