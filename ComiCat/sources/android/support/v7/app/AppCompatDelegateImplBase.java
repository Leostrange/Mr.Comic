package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.app.ActionBarDrawerToggle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;
import defpackage.cv;
import defpackage.ew;

abstract class AppCompatDelegateImplBase extends AppCompatDelegate {
    private ActionBar mActionBar;
    final AppCompatCallback mAppCompatCallback;
    final Window.Callback mAppCompatWindowCallback;
    final Context mContext;
    boolean mHasActionBar;
    private boolean mIsDestroyed;
    boolean mIsFloating;
    private MenuInflater mMenuInflater;
    final Window.Callback mOriginalWindowCallback = this.mWindow.getCallback();
    boolean mOverlayActionBar;
    boolean mOverlayActionMode;
    private CharSequence mTitle;
    final Window mWindow;
    boolean mWindowNoTitle;

    class ActionBarDrawableToggleImpl implements ActionBarDrawerToggle.Delegate {
        private ActionBarDrawableToggleImpl() {
        }

        public Context getActionBarThemedContext() {
            return AppCompatDelegateImplBase.this.getActionBarThemedContext();
        }

        public Drawable getThemeUpIndicator() {
            es a = es.a(getActionBarThemedContext(), (AttributeSet) null, new int[]{cv.a.homeAsUpIndicator});
            Drawable a2 = a.a(0);
            a.a.recycle();
            return a2;
        }

        public boolean isNavigationVisible() {
            ActionBar supportActionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
            return (supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        public void setActionBarDescription(int i) {
            ActionBar supportActionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeActionContentDescription(i);
            }
        }

        public void setActionBarUpIndicator(Drawable drawable, int i) {
            ActionBar supportActionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeAsUpIndicator(drawable);
                supportActionBar.setHomeActionContentDescription(i);
            }
        }
    }

    class AppCompatWindowCallbackBase extends dm {
        AppCompatWindowCallbackBase(Window.Callback callback) {
            super(callback);
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (AppCompatDelegateImplBase.this.dispatchKeyEvent(keyEvent)) {
                return true;
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            if (AppCompatDelegateImplBase.this.onKeyShortcut(keyEvent.getKeyCode(), keyEvent)) {
                return true;
            }
            return super.dispatchKeyShortcutEvent(keyEvent);
        }

        public void onContentChanged() {
        }

        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof ds)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        public boolean onMenuOpened(int i, Menu menu) {
            if (AppCompatDelegateImplBase.this.onMenuOpened(i, menu)) {
                return true;
            }
            return super.onMenuOpened(i, menu);
        }

        public void onPanelClosed(int i, Menu menu) {
            if (!AppCompatDelegateImplBase.this.onPanelClosed(i, menu)) {
                super.onPanelClosed(i, menu);
            }
        }

        public boolean onPreparePanel(int i, View view, Menu menu) {
            ds dsVar = menu instanceof ds ? (ds) menu : null;
            if (i == 0 && dsVar == null) {
                return false;
            }
            if (dsVar != null) {
                dsVar.k = true;
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (dsVar == null) {
                return onPreparePanel;
            }
            dsVar.k = false;
            return onPreparePanel;
        }
    }

    AppCompatDelegateImplBase(Context context, Window window, AppCompatCallback appCompatCallback) {
        this.mContext = context;
        this.mWindow = window;
        this.mAppCompatCallback = appCompatCallback;
        if (this.mOriginalWindowCallback instanceof AppCompatWindowCallbackBase) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.mAppCompatWindowCallback = wrapWindowCallback(this.mOriginalWindowCallback);
        this.mWindow.setCallback(this.mAppCompatWindowCallback);
    }

    /* access modifiers changed from: package-private */
    public abstract ActionBar createSupportActionBar();

    /* access modifiers changed from: package-private */
    public abstract boolean dispatchKeyEvent(KeyEvent keyEvent);

    /* access modifiers changed from: package-private */
    public final Context getActionBarThemedContext() {
        Context context = null;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            context = supportActionBar.getThemedContext();
        }
        return context == null ? this.mContext : context;
    }

    public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return new ActionBarDrawableToggleImpl();
    }

    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            this.mMenuInflater = new dk(getActionBarThemedContext());
        }
        return this.mMenuInflater;
    }

    public ActionBar getSupportActionBar() {
        if (this.mHasActionBar) {
            if (this.mActionBar == null) {
                this.mActionBar = createSupportActionBar();
            }
        } else if (this.mActionBar instanceof de) {
            this.mActionBar = null;
        }
        return this.mActionBar;
    }

    /* access modifiers changed from: package-private */
    public final CharSequence getTitle() {
        return this.mOriginalWindowCallback instanceof Activity ? ((Activity) this.mOriginalWindowCallback).getTitle() : this.mTitle;
    }

    /* access modifiers changed from: package-private */
    public final Window.Callback getWindowCallback() {
        return this.mWindow.getCallback();
    }

    /* access modifiers changed from: package-private */
    public final boolean isDestroyed() {
        return this.mIsDestroyed;
    }

    public boolean isHandleNativeActionModesEnabled() {
        return false;
    }

    public void onCreate(Bundle bundle) {
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(cv.k.Theme);
        if (!obtainStyledAttributes.hasValue(cv.k.Theme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(cv.k.Theme_windowActionBar, false)) {
            this.mHasActionBar = true;
        }
        if (obtainStyledAttributes.getBoolean(cv.k.Theme_windowActionBarOverlay, false)) {
            this.mOverlayActionBar = true;
        }
        if (obtainStyledAttributes.getBoolean(cv.k.Theme_windowActionModeOverlay, false)) {
            this.mOverlayActionMode = true;
        }
        this.mIsFloating = obtainStyledAttributes.getBoolean(cv.k.Theme_android_windowIsFloating, false);
        this.mWindowNoTitle = obtainStyledAttributes.getBoolean(cv.k.Theme_windowNoTitle, false);
        obtainStyledAttributes.recycle();
    }

    public final void onDestroy() {
        this.mIsDestroyed = true;
    }

    /* access modifiers changed from: package-private */
    public abstract boolean onKeyShortcut(int i, KeyEvent keyEvent);

    /* access modifiers changed from: package-private */
    public abstract boolean onMenuOpened(int i, Menu menu);

    /* access modifiers changed from: package-private */
    public abstract boolean onPanelClosed(int i, Menu menu);

    /* access modifiers changed from: package-private */
    public abstract void onTitleChanged(CharSequence charSequence);

    /* access modifiers changed from: package-private */
    public final ActionBar peekSupportActionBar() {
        return this.mActionBar;
    }

    public void setHandleNativeActionModesEnabled(boolean z) {
    }

    /* access modifiers changed from: package-private */
    public final void setSupportActionBar(ActionBar actionBar) {
        this.mActionBar = actionBar;
    }

    public final void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        onTitleChanged(charSequence);
    }

    /* access modifiers changed from: package-private */
    public abstract ew startSupportActionModeFromWindow(ew.a aVar);

    /* access modifiers changed from: package-private */
    public Window.Callback wrapWindowCallback(Window.Callback callback) {
        return new AppCompatWindowCallbackBase(callback);
    }
}
