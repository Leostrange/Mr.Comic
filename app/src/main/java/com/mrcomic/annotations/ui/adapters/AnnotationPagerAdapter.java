package com.example.mrcomic.annotations.ui.adapters;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import java.util.ArrayList;
import java.util.List;

/**
 * Адаптер для ViewPager2 в AnnotationManagerActivity
 */
public class AnnotationPagerAdapter extends FragmentStateAdapter {
    
    private final List<Fragment> fragments = new ArrayList<>();
    private final List<String> titles = new ArrayList<>();
    private final List<Integer> icons = new ArrayList<>();
    
    public AnnotationPagerAdapter(@NonNull FragmentActivity fragmentActivity) {
        super(fragmentActivity);
    }
    
    public void addFragment(Fragment fragment, String title, int iconResId) {
        fragments.add(fragment);
        titles.add(title);
        icons.add(iconResId);
    }
    
    @NonNull
    @Override
    public Fragment createFragment(int position) {
        return fragments.get(position);
    }
    
    @Override
    public int getItemCount() {
        return fragments.size();
    }
    
    public String getPageTitle(int position) {
        return titles.get(position);
    }
    
    public int getPageIcon(int position) {
        return icons.get(position);
    }
}

