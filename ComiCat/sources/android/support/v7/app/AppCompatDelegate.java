package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import defpackage.ew;

public abstract class AppCompatDelegate {
    static final String TAG = "AppCompatDelegate";

    AppCompatDelegate() {
    }

    public static AppCompatDelegate create(Activity activity, AppCompatCallback appCompatCallback) {
        return create(activity, activity.getWindow(), appCompatCallback);
    }

    public static AppCompatDelegate create(Dialog dialog, AppCompatCallback appCompatCallback) {
        return create(dialog.getContext(), dialog.getWindow(), appCompatCallback);
    }

    private static AppCompatDelegate create(Context context, Window window, AppCompatCallback appCompatCallback) {
        int i = Build.VERSION.SDK_INT;
        return i >= 14 ? new AppCompatDelegateImplV14(context, window, appCompatCallback) : i >= 11 ? new AppCompatDelegateImplV11(context, window, appCompatCallback) : new AppCompatDelegateImplV7(context, window, appCompatCallback);
    }

    public abstract void addContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract View createView(View view, String str, Context context, AttributeSet attributeSet);

    public abstract ActionBarDrawerToggle.Delegate getDrawerToggleDelegate();

    public abstract MenuInflater getMenuInflater();

    public abstract ActionBar getSupportActionBar();

    public abstract void installViewFactory();

    public abstract void invalidateOptionsMenu();

    public abstract boolean isHandleNativeActionModesEnabled();

    public abstract void onConfigurationChanged(Configuration configuration);

    public abstract void onCreate(Bundle bundle);

    public abstract void onDestroy();

    public abstract void onPostCreate(Bundle bundle);

    public abstract void onPostResume();

    public abstract void onStop();

    public abstract boolean requestWindowFeature(int i);

    public abstract void setContentView(int i);

    public abstract void setContentView(View view);

    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void setHandleNativeActionModesEnabled(boolean z);

    public abstract void setSupportActionBar(Toolbar toolbar);

    public abstract void setTitle(CharSequence charSequence);

    public abstract ew startSupportActionMode(ew.a aVar);
}
