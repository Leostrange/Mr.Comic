package com.example.mrcomic.annotations.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.example.mrcomic.annotations.ui.adapters.AnnotationPagerAdapter;
import com.example.mrcomic.annotations.ui.fragments.*;
import com.example.mrcomic.annotations.ui.dialogs.CreateAnnotationDialog;
import com.example.mrcomic.annotations.viewmodel.AnnotationViewModel;
import com.example.mrcomic.R;

/**
 * Основная активность для управления аннотациями
 * Современный интерфейс с Material Design 3
 */
public class AnnotationManagerActivity extends AppCompatActivity {
    
    private static final String EXTRA_COMIC_ID = "comic_id";
    private static final String EXTRA_PAGE_NUMBER = "page_number";
    
    private AnnotationViewModel viewModel;
    private ViewPager2 viewPager;
    private TabLayout tabLayout;
    private BottomNavigationView bottomNavigation;
    private FloatingActionButton fabCreate;
    private SearchView searchView;
    private AppBarLayout appBarLayout;
    private CoordinatorLayout coordinatorLayout;
    
    private String comicId;
    private int pageNumber = -1;
    
    // Фрагменты
    private AnnotationListFragment listFragment;
    private AnnotationGridFragment gridFragment;
    private AnnotationTimelineFragment timelineFragment;
    private AnnotationStatsFragment statsFragment;
    private AnnotationSearchFragment searchFragment;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_annotation_manager);
        
        // Получаем параметры
        comicId = getIntent().getStringExtra(EXTRA_COMIC_ID);
        pageNumber = getIntent().getIntExtra(EXTRA_PAGE_NUMBER, -1);
        
        if (comicId == null) {
            Toast.makeText(this, "Ошибка: не указан ID комикса", Toast.LENGTH_SHORT).show();
            finish();
            return;
        }
        
        initViews();
        initViewModel();
        setupToolbar();
        setupViewPager();
        setupBottomNavigation();
        setupFab();
        observeViewModel();
    }
    
    private void initViews() {
        coordinatorLayout = findViewById(R.id.coordinator_layout);
        appBarLayout = findViewById(R.id.app_bar_layout);
        viewPager = findViewById(R.id.view_pager);
        tabLayout = findViewById(R.id.tab_layout);
        bottomNavigation = findViewById(R.id.bottom_navigation);
        fabCreate = findViewById(R.id.fab_create);
    }
    
    private void initViewModel() {
        viewModel = new ViewModelProvider(this).get(AnnotationViewModel.class);
        viewModel.setComicId(comicId);
        if (pageNumber != -1) {
            viewModel.setPageNumber(pageNumber);
        }
    }
    
    private void setupToolbar() {
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle("Аннотации");
            
            if (pageNumber != -1) {
                getSupportActionBar().setSubtitle("Страница " + pageNumber);
            }
        }
    }
    
    private void setupViewPager() {
        // Создаем фрагменты
        listFragment = AnnotationListFragment.newInstance(comicId, pageNumber);
        gridFragment = AnnotationGridFragment.newInstance(comicId, pageNumber);
        timelineFragment = AnnotationTimelineFragment.newInstance(comicId);
        statsFragment = AnnotationStatsFragment.newInstance(comicId);
        searchFragment = AnnotationSearchFragment.newInstance(comicId);
        
        // Настраиваем адаптер
        AnnotationPagerAdapter adapter = new AnnotationPagerAdapter(this);
        adapter.addFragment(listFragment, "Список", R.drawable.ic_list);
        adapter.addFragment(gridFragment, "Сетка", R.drawable.ic_grid);
        adapter.addFragment(timelineFragment, "Хронология", R.drawable.ic_timeline);
        adapter.addFragment(statsFragment, "Статистика", R.drawable.ic_stats);
        adapter.addFragment(searchFragment, "Поиск", R.drawable.ic_search);
        
        viewPager.setAdapter(adapter);
        viewPager.setOffscreenPageLimit(3);
        
        // Связываем TabLayout с ViewPager2
        new TabLayoutMediator(tabLayout, viewPager, (tab, position) -> {
            tab.setText(adapter.getPageTitle(position));
            tab.setIcon(adapter.getPageIcon(position));
        }).attach();
        
        // Обработчик изменения страниц
        viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                updateFabVisibility(position);
                updateBottomNavigation(position);
            }
        });
    }
    
    private void setupBottomNavigation() {
        bottomNavigation.setOnItemSelectedListener(item -> {
            int itemId = item.getItemId();
            
            if (itemId == R.id.nav_list) {
                viewPager.setCurrentItem(0, true);
                return true;
            } else if (itemId == R.id.nav_grid) {
                viewPager.setCurrentItem(1, true);
                return true;
            } else if (itemId == R.id.nav_timeline) {
                viewPager.setCurrentItem(2, true);
                return true;
            } else if (itemId == R.id.nav_stats) {
                viewPager.setCurrentItem(3, true);
                return true;
            } else if (itemId == R.id.nav_search) {
                viewPager.setCurrentItem(4, true);
                return true;
            }
            
            return false;
        });
    }
    
    private void setupFab() {
        fabCreate.setOnClickListener(v -> showCreateAnnotationDialog());
        
        // Анимация FAB при скролле
        fabCreate.setOnClickListener(v -> {
            // Анимация нажатия
            v.animate()
                .scaleX(0.9f)
                .scaleY(0.9f)
                .setDuration(100)
                .withEndAction(() -> {
                    v.animate()
                        .scaleX(1.0f)
                        .scaleY(1.0f)
                        .setDuration(100)
                        .withEndAction(this::showCreateAnnotationDialog);
                });
        });
    }
    
    private void updateFabVisibility(int position) {
        // Показываем FAB только на определенных вкладках
        if (position == 0 || position == 1) { // Список и сетка
            fabCreate.show();
        } else {
            fabCreate.hide();
        }
    }
    
    private void updateBottomNavigation(int position) {
        // Синхронизируем BottomNavigation с ViewPager
        switch (position) {
            case 0:
                bottomNavigation.setSelectedItemId(R.id.nav_list);
                break;
            case 1:
                bottomNavigation.setSelectedItemId(R.id.nav_grid);
                break;
            case 2:
                bottomNavigation.setSelectedItemId(R.id.nav_timeline);
                break;
            case 3:
                bottomNavigation.setSelectedItemId(R.id.nav_stats);
                break;
            case 4:
                bottomNavigation.setSelectedItemId(R.id.nav_search);
                break;
        }
    }
    
    private void showCreateAnnotationDialog() {
        CreateAnnotationDialog dialog = CreateAnnotationDialog.newInstance(comicId, pageNumber);
        dialog.setOnAnnotationCreatedListener(annotation -> {
            // Обновляем данные во всех фрагментах
            refreshAllFragments();
            
            // Показываем уведомление
            Toast.makeText(this, "Аннотация создана", Toast.LENGTH_SHORT).show();
        });
        dialog.show(getSupportFragmentManager(), "create_annotation");
    }
    
    private void observeViewModel() {
        // Наблюдаем за изменениями данных
        viewModel.getAnnotations().observe(this, annotations -> {
            // Обновляем счетчики в TabLayout
            updateTabBadges();
        });
        
        viewModel.getLoadingState().observe(this, isLoading -> {
            // Показываем/скрываем индикатор загрузки
            updateLoadingState(isLoading);
        });
        
        viewModel.getErrorMessage().observe(this, error -> {
            if (error != null && !error.isEmpty()) {
                Toast.makeText(this, error, Toast.LENGTH_LONG).show();
            }
        });
    }
    
    private void updateTabBadges() {
        // Обновляем бейджи с количеством аннотаций
        viewModel.getAnnotationCount().observe(this, count -> {
            TabLayout.Tab listTab = tabLayout.getTabAt(0);
            if (listTab != null && count > 0) {
                listTab.getOrCreateBadge().setNumber(count);
            }
        });
    }
    
    private void updateLoadingState(boolean isLoading) {
        // Здесь можно добавить глобальный индикатор загрузки
        // Например, ProgressBar в AppBarLayout
    }
    
    private void refreshAllFragments() {
        // Обновляем данные во всех фрагментах
        if (listFragment != null) listFragment.refresh();
        if (gridFragment != null) gridFragment.refresh();
        if (timelineFragment != null) timelineFragment.refresh();
        if (statsFragment != null) statsFragment.refresh();
    }
    
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_annotation_manager, menu);
        
        // Настраиваем SearchView
        MenuItem searchItem = menu.findItem(R.id.action_search);
        searchView = (SearchView) searchItem.getActionView();
        
        searchView.setQueryHint("Поиск аннотаций...");
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
                }
                return true;
            }
        });
        
        return true;
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int itemId = item.getItemId();
        
        if (itemId == android.R.id.home) {
            onBackPressed();
            return true;
        } else if (itemId == R.id.action_filter) {
            showFilterDialog();
            return true;
        } else if (itemId == R.id.action_sort) {
            showSortDialog();
            return true;
        } else if (itemId == R.id.action_export) {
            showExportDialog();
            return true;
        } else if (itemId == R.id.action_settings) {
            openSettings();
            return true;
        }
        
        return super.onOptionsItemSelected(item);
    }
    
    private void performSearch(String query) {
        viewModel.searchAnnotations(query);
        
        // Переключаемся на вкладку поиска
        viewPager.setCurrentItem(4, true);
    }
    
    private void showFilterDialog() {
        // Показываем диалог фильтрации
        // TODO: Реализовать FilterDialog
    }
    
    private void showSortDialog() {
        // Показываем диалог сортировки
        // TODO: Реализовать SortDialog
    }
    
    private void showExportDialog() {
        // Показываем диалог экспорта
        // TODO: Реализовать ExportDialog
    }
    
    private void openSettings() {
        Intent intent = new Intent(this, AnnotationSettingsActivity.class);
        startActivity(intent);
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        refreshAllFragments();
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        // Очищаем ресурсы
        if (viewModel != null) {
            viewModel.cleanup();
        }
    }
    
    // Статические методы для запуска активности
    
    public static Intent createIntent(android.content.Context context, String comicId) {
        Intent intent = new Intent(context, AnnotationManagerActivity.class);
        intent.putExtra(EXTRA_COMIC_ID, comicId);
        return intent;
    }
    
    public static Intent createIntent(android.content.Context context, String comicId, int pageNumber) {
        Intent intent = new Intent(context, AnnotationManagerActivity.class);
        intent.putExtra(EXTRA_COMIC_ID, comicId);
        intent.putExtra(EXTRA_PAGE_NUMBER, pageNumber);
        return intent;
    }
}

