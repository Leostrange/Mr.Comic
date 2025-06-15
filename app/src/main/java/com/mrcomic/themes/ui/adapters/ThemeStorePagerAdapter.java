package com.example.mrcomic.themes.ui.adapters;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;

import com.example.mrcomic.themes.model.Theme;
import com.example.mrcomic.themes.ui.fragments.*;

import java.util.List;

/**
 * Адаптер для ViewPager2 в сторе тем
 * Управляет фрагментами различных вкладок
 */
public class ThemeStorePagerAdapter extends FragmentStateAdapter {
    
    private static final int TAB_COUNT = 6;
    
    // Индексы вкладок
    public static final int TAB_FEATURED = 0;
    public static final int TAB_TRENDING = 1;
    public static final int TAB_NEW = 2;
    public static final int TAB_CATEGORIES = 3;
    public static final int TAB_MY_THEMES = 4;
    public static final int TAB_FAVORITES = 5;
    
    private List<Theme> searchResults;
    
    public ThemeStorePagerAdapter(@NonNull FragmentActivity fragmentActivity) {
        super(fragmentActivity);
    }
    
    @NonNull
    @Override
    public Fragment createFragment(int position) {
        switch (position) {
            case TAB_FEATURED:
                return ThemeFeaturedFragment.newInstance();
            case TAB_TRENDING:
                return ThemeTrendingFragment.newInstance();
            case TAB_NEW:
                return ThemeNewFragment.newInstance();
            case TAB_CATEGORIES:
                return ThemeCategoriesFragment.newInstance();
            case TAB_MY_THEMES:
                return ThemeMyThemesFragment.newInstance();
            case TAB_FAVORITES:
                return ThemeFavoritesFragment.newInstance();
            default:
                return ThemeFeaturedFragment.newInstance();
        }
    }
    
    @Override
    public int getItemCount() {
        return TAB_COUNT;
    }
    
    public void updateSearchResults(List<Theme> themes) {
        this.searchResults = themes;
        // Уведомляем фрагменты об обновлении результатов поиска
        notifyDataSetChanged();
    }
    
    public List<Theme> getSearchResults() {
        return searchResults;
    }
}

