package com.example.mrcomic.themes.ui.activities;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager2.widget.ViewPager2;

import com.example.mrcomic.R;
import com.example.mrcomic.themes.ui.adapters.ThemeStorePagerAdapter;
import com.example.mrcomic.themes.ui.viewmodels.ThemeStoreViewModel;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/**
 * Основная активность стора тем
 * Предоставляет интерфейс для просмотра, поиска и управления темами
 */
public class ThemeStoreActivity extends AppCompatActivity {
    
    private ThemeStoreViewModel viewModel;
    private ViewPager2 viewPager;
    private TabLayout tabLayout;
    private ThemeStorePagerAdapter pagerAdapter;
    private SearchView searchView;
    private FloatingActionButton fabCreateTheme;
    
    // Названия вкладок
    private final String[] TAB_TITLES = {
        "Рекомендуемые",
        "Популярные", 
        "Новые",
        "Категории",
        "Мои темы",
        "Избранное"
    };
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_theme_store);
        
        initViews();
        initViewModel();
        setupViewPager();
        setupObservers();
        setupListeners();
    }
    
    private void initViews() {
        // Настройка ActionBar
        setSupportActionBar(findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle("Стор тем");
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        
        // Инициализация компонентов
        viewPager = findViewById(R.id.view_pager);
        tabLayout = findViewById(R.id.tab_layout);
        fabCreateTheme = findViewById(R.id.fab_create_theme);
    }
    
    private void initViewModel() {
        viewModel = new ViewModelProvider(this).get(ThemeStoreViewModel.class);
    }
    
    private void setupViewPager() {
        pagerAdapter = new ThemeStorePagerAdapter(this);
        viewPager.setAdapter(pagerAdapter);
        viewPager.setOffscreenPageLimit(3); // Предзагрузка соседних страниц
        
        // Связываем TabLayout с ViewPager2
        new TabLayoutMediator(tabLayout, viewPager, (tab, position) -> {
            tab.setText(TAB_TITLES[position]);
            
            // Добавляем иконки для вкладок
            switch (position) {
                case 0: // Рекомендуемые
                    tab.setIcon(R.drawable.ic_star);
                    break;
                case 1: // Популярные
                    tab.setIcon(R.drawable.ic_trending_up);
                    break;
                case 2: // Новые
                    tab.setIcon(R.drawable.ic_new_releases);
                    break;
                case 3: // Категории
                    tab.setIcon(R.drawable.ic_category);
                    break;
                case 4: // Мои темы
                    tab.setIcon(R.drawable.ic_person);
                    break;
                case 5: // Избранное
                    tab.setIcon(R.drawable.ic_favorite);
                    break;
            }
        }).attach();
    }
    
    private void setupObservers() {
        // Наблюдаем за статусом загрузки
        viewModel.getLoadingLiveData().observe(this, isLoading -> {
            // Показываем/скрываем индикатор загрузки
            if (isLoading != null && isLoading) {
                showLoadingIndicator();
            } else {
                hideLoadingIndicator();
            }
        });
        
        // Наблюдаем за ошибками
        viewModel.getErrorLiveData().observe(this, error -> {
            if (error != null && !error.isEmpty()) {
                showError(error);
            }
        });
        
        // Наблюдаем за статусом операций
        viewModel.getStatusLiveData().observe(this, status -> {
            if (status != null && !status.isEmpty()) {
                showStatus(status);
            }
        });
        
        // Наблюдаем за результатами поиска
        viewModel.getSearchResultsLiveData().observe(this, themes -> {
            if (themes != null) {
                // Обновляем результаты поиска
                pagerAdapter.updateSearchResults(themes);
            }
        });
    }
    
    private void setupListeners() {
        // Обработчик FAB для создания новой темы
        fabCreateTheme.setOnClickListener(v -> {
            // Открываем редактор тем
            openThemeEditor();
        });
        
        // Обработчик изменения страницы
        viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                
                // Показываем/скрываем FAB в зависимости от вкладки
                if (position == 4) { // Мои темы
                    fabCreateTheme.show();
                } else {
                    fabCreateTheme.hide();
                }
                
                // Загружаем данные для выбранной вкладки
                loadDataForTab(position);
            }
        });
    }
    
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_theme_store, menu);
        
        // Настройка поиска
        MenuItem searchItem = menu.findItem(R.id.action_search);
        searchView = (SearchView) searchItem.getActionView();
        
        searchView.setQueryHint("Поиск тем...");
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override
            public boolean onQueryTextSubmit(String query) {
                performSearch(query);
                return true;
            }
            
            @Override
            public boolean onQueryTextChange(String newText) {
                if (newText.length() > 2) {
                    performSearch(newText);
                } else if (newText.isEmpty()) {
                    clearSearch();
                }
                return true;
            }
        });
        
        return true;
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        
        if (id == android.R.id.home) {
            onBackPressed();
            return true;
        } else if (id == R.id.action_filter) {
            showFilterDialog();
            return true;
        } else if (id == R.id.action_sort) {
            showSortDialog();
            return true;
        } else if (id == R.id.action_refresh) {
            refreshCurrentTab();
            return true;
        } else if (id == R.id.action_settings) {
            openThemeSettings();
            return true;
        }
        
        return super.onOptionsItemSelected(item);
    }
    
    private void loadDataForTab(int position) {
        switch (position) {
            case 0: // Рекомендуемые
                viewModel.loadFeaturedThemes();
                break;
            case 1: // Популярные
                viewModel.loadTrendingThemes();
                break;
            case 2: // Новые
                viewModel.loadNewThemes();
                break;
            case 3: // Категории
                viewModel.loadCategories();
                break;
            case 4: // Мои темы
                viewModel.loadMyThemes();
                break;
            case 5: // Избранное
                viewModel.loadFavoriteThemes();
                break;
        }
    }
    
    private void performSearch(String query) {
        viewModel.searchThemes(query);
        
        // Переключаемся на вкладку поиска (если есть)
        // или показываем результаты в текущей вкладке
    }
    
    private void clearSearch() {
        viewModel.clearSearch();
        
        // Возвращаемся к обычному отображению
        int currentTab = viewPager.getCurrentItem();
        loadDataForTab(currentTab);
    }
    
    private void showFilterDialog() {
        // Показываем диалог фильтрации
        // ThemeFilterDialog.show(this, viewModel.getCurrentFilters(), filters -> {
        //     viewModel.applyFilters(filters);
        // });
        
        Toast.makeText(this, "Фильтры (в разработке)", Toast.LENGTH_SHORT).show();
    }
    
    private void showSortDialog() {
        // Показываем диалог сортировки
        Toast.makeText(this, "Сортировка (в разработке)", Toast.LENGTH_SHORT).show();
    }
    
    private void refreshCurrentTab() {
        int currentTab = viewPager.getCurrentItem();
        loadDataForTab(currentTab);
        
        Toast.makeText(this, "Обновление...", Toast.LENGTH_SHORT).show();
    }
    
    private void openThemeEditor() {
        // Открываем редактор тем
        // Intent intent = new Intent(this, ThemeEditorActivity.class);
        // startActivity(intent);
        
        Toast.makeText(this, "Редактор тем (в разработке)", Toast.LENGTH_SHORT).show();
    }
    
    private void openThemeSettings() {
        // Открываем настройки тем
        Toast.makeText(this, "Настройки тем (в разработке)", Toast.LENGTH_SHORT).show();
    }
    
    private void showLoadingIndicator() {
        // Показываем индикатор загрузки
        // progressBar.setVisibility(View.VISIBLE);
    }
    
    private void hideLoadingIndicator() {
        // Скрываем индикатор загрузки
        // progressBar.setVisibility(View.GONE);
    }
    
    private void showError(String error) {
        Toast.makeText(this, "Ошибка: " + error, Toast.LENGTH_LONG).show();
    }
    
    private void showStatus(String status) {
        Toast.makeText(this, status, Toast.LENGTH_SHORT).show();
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        
        // Очищаем ресурсы ViewModel
        if (viewModel != null) {
            viewModel.cleanup();
        }
    }
}

