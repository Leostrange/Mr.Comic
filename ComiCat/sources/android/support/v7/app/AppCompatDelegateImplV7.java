package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.NavUtils;
import android.support.v4.app.NotificationCompat;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ContentFrameLayout;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import defpackage.cv;
import defpackage.ds;
import defpackage.dy;
import defpackage.el;
import defpackage.ew;

class AppCompatDelegateImplV7 extends AppCompatDelegateImplBase implements au, ds.a {
    private ActionMenuPresenterCallback mActionMenuPresenterCallback;
    ew mActionMode;
    PopupWindow mActionModePopup;
    ActionBarContextView mActionModeView;
    private da mAppCompatViewInflater;
    private boolean mClosingActionMenu;
    private ei mDecorContentParent;
    private boolean mEnableDefaultActionBarUp;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    /* access modifiers changed from: private */
    public int mInvalidatePanelMenuFeatures;
    /* access modifiers changed from: private */
    public boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable = new Runnable() {
        public void run() {
            if ((AppCompatDelegateImplV7.this.mInvalidatePanelMenuFeatures & 1) != 0) {
                AppCompatDelegateImplV7.this.doInvalidatePanelMenu(0);
            }
            if ((AppCompatDelegateImplV7.this.mInvalidatePanelMenuFeatures & NotificationCompat.FLAG_LOCAL_ONLY) != 0) {
                AppCompatDelegateImplV7.this.doInvalidatePanelMenu(8);
            }
            boolean unused = AppCompatDelegateImplV7.this.mInvalidatePanelMenuPosted = false;
            int unused2 = AppCompatDelegateImplV7.this.mInvalidatePanelMenuFeatures = 0;
        }
    };
    private PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private PanelFeatureState[] mPanels;
    private PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private View mStatusGuard;
    private ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private Rect mTempRect1;
    private Rect mTempRect2;
    private TextView mTitleView;
    private ViewGroup mWindowDecor;

    final class ActionMenuPresenterCallback implements dy.a {
        private ActionMenuPresenterCallback() {
        }

        public final void onCloseMenu(ds dsVar, boolean z) {
            AppCompatDelegateImplV7.this.checkCloseActionMenu(dsVar);
        }

        public final boolean onOpenSubMenu(ds dsVar) {
            Window.Callback windowCallback = AppCompatDelegateImplV7.this.getWindowCallback();
            if (windowCallback == null) {
                return true;
            }
            windowCallback.onMenuOpened(8, dsVar);
            return true;
        }
    }

    class ActionModeCallbackWrapperV7 implements ew.a {
        private ew.a mWrapped;

        public ActionModeCallbackWrapperV7(ew.a aVar) {
            this.mWrapped = aVar;
        }

        public boolean onActionItemClicked(ew ewVar, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(ewVar, menuItem);
        }

        public boolean onCreateActionMode(ew ewVar, Menu menu) {
            return this.mWrapped.onCreateActionMode(ewVar, menu);
        }

        public void onDestroyActionMode(ew ewVar) {
            this.mWrapped.onDestroyActionMode(ewVar);
            if (AppCompatDelegateImplV7.this.mActionModePopup != null) {
                AppCompatDelegateImplV7.this.mWindow.getDecorView().removeCallbacks(AppCompatDelegateImplV7.this.mShowActionModePopup);
                AppCompatDelegateImplV7.this.mActionModePopup.dismiss();
            } else if (AppCompatDelegateImplV7.this.mActionModeView != null) {
                AppCompatDelegateImplV7.this.mActionModeView.setVisibility(8);
                if (AppCompatDelegateImplV7.this.mActionModeView.getParent() != null) {
                    bh.w((View) AppCompatDelegateImplV7.this.mActionModeView.getParent());
                }
            }
            if (AppCompatDelegateImplV7.this.mActionModeView != null) {
                AppCompatDelegateImplV7.this.mActionModeView.removeAllViews();
            }
            if (AppCompatDelegateImplV7.this.mAppCompatCallback != null) {
                AppCompatDelegateImplV7.this.mAppCompatCallback.onSupportActionModeFinished(AppCompatDelegateImplV7.this.mActionMode);
            }
            AppCompatDelegateImplV7.this.mActionMode = null;
        }

        public boolean onPrepareActionMode(ew ewVar, Menu menu) {
            return this.mWrapped.onPrepareActionMode(ewVar, menu);
        }
    }

    class ListMenuDecorView extends FrameLayout {
        public ListMenuDecorView(Context context) {
            super(context);
        }

        private boolean isOutOfBounds(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImplV7.this.dispatchKeyEvent(keyEvent);
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !isOutOfBounds((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImplV7.this.closePanel(0);
            return true;
        }

        public void setBackgroundResource(int i) {
            setBackgroundDrawable(er.a(getContext(), i));
        }
    }

    static final class PanelFeatureState {
        int background;
        View createdPanelView;
        ViewGroup decorView;
        int featureId;
        Bundle frozenActionViewState;
        Bundle frozenMenuState;
        int gravity;
        boolean isHandled;
        boolean isOpen;
        boolean isPrepared;
        dr listMenuPresenter;
        Context listPresenterContext;
        ds menu;
        public boolean qwertyMode;
        boolean refreshDecorView = false;
        boolean refreshMenuContent;
        View shownPanelView;
        boolean wasLastOpen;
        int windowAnimations;
        int x;
        int y;

        static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
                public final SavedState createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel);
                }

                public final SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            int featureId;
            boolean isOpen;
            Bundle menuState;

            private SavedState() {
            }

            /* access modifiers changed from: private */
            public static SavedState readFromParcel(Parcel parcel) {
                boolean z = true;
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.isOpen = z;
                if (savedState.isOpen) {
                    savedState.menuState = parcel.readBundle();
                }
                return savedState;
            }

            public int describeContents() {
                return 0;
            }

            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }
        }

        PanelFeatureState(int i) {
            this.featureId = i;
        }

        /* access modifiers changed from: package-private */
        public final void applyFrozenState() {
            if (this.menu != null && this.frozenMenuState != null) {
                this.menu.b(this.frozenMenuState);
                this.frozenMenuState = null;
            }
        }

        public final void clearMenuPresenters() {
            if (this.menu != null) {
                this.menu.b((dy) this.listMenuPresenter);
            }
            this.listMenuPresenter = null;
        }

        /* access modifiers changed from: package-private */
        public final dz getListMenuView(dy.a aVar) {
            if (this.menu == null) {
                return null;
            }
            if (this.listMenuPresenter == null) {
                this.listMenuPresenter = new dr(this.listPresenterContext, cv.h.abc_list_menu_item_layout);
                this.listMenuPresenter.g = aVar;
                this.menu.a((dy) this.listMenuPresenter);
            }
            return this.listMenuPresenter.a(this.decorView);
        }

        public final boolean hasPanelItems() {
            if (this.shownPanelView == null) {
                return false;
            }
            if (this.createdPanelView != null) {
                return true;
            }
            return this.listMenuPresenter.a().getCount() > 0;
        }

        /* access modifiers changed from: package-private */
        public final void onRestoreInstanceState(Parcelable parcelable) {
            SavedState savedState = (SavedState) parcelable;
            this.featureId = savedState.featureId;
            this.wasLastOpen = savedState.isOpen;
            this.frozenMenuState = savedState.menuState;
            this.shownPanelView = null;
            this.decorView = null;
        }

        /* access modifiers changed from: package-private */
        public final Parcelable onSaveInstanceState() {
            SavedState savedState = new SavedState();
            savedState.featureId = this.featureId;
            savedState.isOpen = this.isOpen;
            if (this.menu != null) {
                savedState.menuState = new Bundle();
                this.menu.a(savedState.menuState);
            }
            return savedState;
        }

        /* access modifiers changed from: package-private */
        public final void setMenu(ds dsVar) {
            if (dsVar != this.menu) {
                if (this.menu != null) {
                    this.menu.b((dy) this.listMenuPresenter);
                }
                this.menu = dsVar;
                if (dsVar != null && this.listMenuPresenter != null) {
                    dsVar.a((dy) this.listMenuPresenter);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void setStyle(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(cv.a.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(cv.a.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(cv.j.Theme_AppCompat_CompactMenu, true);
            }
            dh dhVar = new dh(context, 0);
            dhVar.getTheme().setTo(newTheme);
            this.listPresenterContext = dhVar;
            TypedArray obtainStyledAttributes = dhVar.obtainStyledAttributes(cv.k.Theme);
            this.background = obtainStyledAttributes.getResourceId(cv.k.Theme_panelBackground, 0);
            this.windowAnimations = obtainStyledAttributes.getResourceId(cv.k.Theme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }
    }

    final class PanelMenuPresenterCallback implements dy.a {
        private PanelMenuPresenterCallback() {
        }

        public final void onCloseMenu(ds dsVar, boolean z) {
            ds k = dsVar.k();
            boolean z2 = k != dsVar;
            AppCompatDelegateImplV7 appCompatDelegateImplV7 = AppCompatDelegateImplV7.this;
            if (z2) {
                dsVar = k;
            }
            PanelFeatureState access$600 = appCompatDelegateImplV7.findMenuPanel(dsVar);
            if (access$600 == null) {
                return;
            }
            if (z2) {
                AppCompatDelegateImplV7.this.callOnPanelClosed(access$600.featureId, access$600, k);
                AppCompatDelegateImplV7.this.closePanel(access$600, true);
                return;
            }
            AppCompatDelegateImplV7.this.closePanel(access$600, z);
        }

        public final boolean onOpenSubMenu(ds dsVar) {
            Window.Callback windowCallback;
            if (dsVar != null || !AppCompatDelegateImplV7.this.mHasActionBar || (windowCallback = AppCompatDelegateImplV7.this.getWindowCallback()) == null || AppCompatDelegateImplV7.this.isDestroyed()) {
                return true;
            }
            windowCallback.onMenuOpened(8, dsVar);
            return true;
        }
    }

    AppCompatDelegateImplV7(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
    }

    private void applyFixedSizeWindow(ContentFrameLayout contentFrameLayout) {
        contentFrameLayout.setDecorPadding(this.mWindowDecor.getPaddingLeft(), this.mWindowDecor.getPaddingTop(), this.mWindowDecor.getPaddingRight(), this.mWindowDecor.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(cv.k.Theme);
        obtainStyledAttributes.getValue(cv.k.Theme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(cv.k.Theme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(cv.k.Theme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(cv.k.Theme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(cv.k.Theme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(cv.k.Theme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(cv.k.Theme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(cv.k.Theme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(cv.k.Theme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(cv.k.Theme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* access modifiers changed from: private */
    public void callOnPanelClosed(int i, PanelFeatureState panelFeatureState, Menu menu) {
        Window.Callback windowCallback;
        if (menu == null) {
            if (panelFeatureState == null && i >= 0 && i < this.mPanels.length) {
                panelFeatureState = this.mPanels[i];
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.menu;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.isOpen) && (windowCallback = getWindowCallback()) != null) {
            windowCallback.onPanelClosed(i, menu);
        }
    }

    /* access modifiers changed from: private */
    public void checkCloseActionMenu(ds dsVar) {
        if (!this.mClosingActionMenu) {
            this.mClosingActionMenu = true;
            this.mDecorContentParent.f();
            Window.Callback windowCallback = getWindowCallback();
            if (windowCallback != null && !isDestroyed()) {
                windowCallback.onPanelClosed(8, dsVar);
            }
            this.mClosingActionMenu = false;
        }
    }

    /* access modifiers changed from: private */
    public void closePanel(int i) {
        closePanel(getPanelState(i, true), true);
    }

    /* access modifiers changed from: private */
    public void closePanel(PanelFeatureState panelFeatureState, boolean z) {
        if (!z || panelFeatureState.featureId != 0 || this.mDecorContentParent == null || !this.mDecorContentParent.b()) {
            boolean z2 = panelFeatureState.isOpen;
            WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
            if (!(windowManager == null || !z2 || panelFeatureState.decorView == null)) {
                windowManager.removeView(panelFeatureState.decorView);
            }
            panelFeatureState.isPrepared = false;
            panelFeatureState.isHandled = false;
            panelFeatureState.isOpen = false;
            if (z2 && z) {
                callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, (Menu) null);
            }
            panelFeatureState.shownPanelView = null;
            panelFeatureState.refreshDecorView = true;
            if (this.mPreparedPanel == panelFeatureState) {
                this.mPreparedPanel = null;
                return;
            }
            return;
        }
        checkCloseActionMenu(panelFeatureState.menu);
    }

    /* access modifiers changed from: private */
    public void doInvalidatePanelMenu(int i) {
        PanelFeatureState panelState;
        PanelFeatureState panelState2 = getPanelState(i, true);
        if (panelState2.menu != null) {
            Bundle bundle = new Bundle();
            panelState2.menu.c(bundle);
            if (bundle.size() > 0) {
                panelState2.frozenActionViewState = bundle;
            }
            panelState2.menu.d();
            panelState2.menu.clear();
        }
        panelState2.refreshMenuContent = true;
        panelState2.refreshDecorView = true;
        if ((i == 8 || i == 0) && this.mDecorContentParent != null && (panelState = getPanelState(0, false)) != null) {
            panelState.isPrepared = false;
            preparePanel(panelState, (KeyEvent) null);
        }
    }

    private void ensureSubDecor() {
        if (!this.mSubDecorInstalled) {
            LayoutInflater from = LayoutInflater.from(this.mContext);
            if (this.mWindowNoTitle) {
                if (this.mOverlayActionMode) {
                    this.mSubDecor = (ViewGroup) from.inflate(cv.h.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
                } else {
                    this.mSubDecor = (ViewGroup) from.inflate(cv.h.abc_screen_simple, (ViewGroup) null);
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    bh.a((View) this.mSubDecor, (bc) new bc() {
                        public bw onApplyWindowInsets(View view, bw bwVar) {
                            int b = bwVar.b();
                            int access$300 = AppCompatDelegateImplV7.this.updateStatusGuard(b);
                            if (b != access$300) {
                                bwVar = bwVar.a(bwVar.a(), access$300, bwVar.c(), bwVar.d());
                            }
                            return bh.a(view, bwVar);
                        }
                    });
                } else {
                    ((el) this.mSubDecor).setOnFitSystemWindowsListener(new el.a() {
                        public void onFitSystemWindows(Rect rect) {
                            rect.top = AppCompatDelegateImplV7.this.updateStatusGuard(rect.top);
                        }
                    });
                }
            } else if (this.mIsFloating) {
                this.mSubDecor = (ViewGroup) from.inflate(cv.h.abc_dialog_title_material, (ViewGroup) null);
                this.mOverlayActionBar = false;
                this.mHasActionBar = false;
            } else if (this.mHasActionBar) {
                TypedValue typedValue = new TypedValue();
                this.mContext.getTheme().resolveAttribute(cv.a.actionBarTheme, typedValue, true);
                this.mSubDecor = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new dh(this.mContext, typedValue.resourceId) : this.mContext).inflate(cv.h.abc_screen_toolbar, (ViewGroup) null);
                this.mDecorContentParent = (ei) this.mSubDecor.findViewById(cv.f.decor_content_parent);
                this.mDecorContentParent.setWindowCallback(getWindowCallback());
                if (this.mOverlayActionBar) {
                    this.mDecorContentParent.a(9);
                }
                if (this.mFeatureProgress) {
                    this.mDecorContentParent.a(2);
                }
                if (this.mFeatureIndeterminateProgress) {
                    this.mDecorContentParent.a(5);
                }
            }
            if (this.mSubDecor == null) {
                throw new IllegalArgumentException("AppCompat does not support the current theme features");
            }
            if (this.mDecorContentParent == null) {
                this.mTitleView = (TextView) this.mSubDecor.findViewById(cv.f.title);
            }
            eu.b(this.mSubDecor);
            ViewGroup viewGroup = (ViewGroup) this.mWindow.findViewById(16908290);
            ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.mSubDecor.findViewById(cv.f.action_bar_activity_content);
            while (viewGroup.getChildCount() > 0) {
                View childAt = viewGroup.getChildAt(0);
                viewGroup.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            this.mWindow.setContentView(this.mSubDecor);
            viewGroup.setId(-1);
            contentFrameLayout.setId(16908290);
            if (viewGroup instanceof FrameLayout) {
                ((FrameLayout) viewGroup).setForeground((Drawable) null);
            }
            CharSequence title = getTitle();
            if (!TextUtils.isEmpty(title)) {
                onTitleChanged(title);
            }
            applyFixedSizeWindow(contentFrameLayout);
            onSubDecorInstalled(this.mSubDecor);
            this.mSubDecorInstalled = true;
            PanelFeatureState panelState = getPanelState(0, false);
            if (isDestroyed()) {
                return;
            }
            if (panelState == null || panelState.menu == null) {
                invalidatePanelMenu(8);
            }
        }
    }

    /* access modifiers changed from: private */
    public PanelFeatureState findMenuPanel(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.menu == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    private PanelFeatureState getPanelState(int i, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[(i + 1)];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.mPanels = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i);
        panelFeatureStateArr[i] = panelFeatureState2;
        return panelFeatureState2;
    }

    private boolean initializePanelContent(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.createdPanelView != null) {
            panelFeatureState.shownPanelView = panelFeatureState.createdPanelView;
            return true;
        } else if (panelFeatureState.menu == null) {
            return false;
        } else {
            if (this.mPanelMenuPresenterCallback == null) {
                this.mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
            }
            panelFeatureState.shownPanelView = (View) panelFeatureState.getListMenuView(this.mPanelMenuPresenterCallback);
            return panelFeatureState.shownPanelView != null;
        }
    }

    private boolean initializePanelDecor(PanelFeatureState panelFeatureState) {
        panelFeatureState.setStyle(getActionBarThemedContext());
        panelFeatureState.decorView = new ListMenuDecorView(panelFeatureState.listPresenterContext);
        panelFeatureState.gravity = 81;
        return true;
    }

    private boolean initializePanelMenu(PanelFeatureState panelFeatureState) {
        Context context;
        Context context2 = this.mContext;
        if ((panelFeatureState.featureId == 0 || panelFeatureState.featureId == 8) && this.mDecorContentParent != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context2.getTheme();
            theme.resolveAttribute(cv.a.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context2.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(cv.a.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(cv.a.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context2.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            Resources.Theme theme3 = theme2;
            if (theme3 != null) {
                context = new dh(context2, 0);
                context.getTheme().setTo(theme3);
                ds dsVar = new ds(context);
                dsVar.a((ds.a) this);
                panelFeatureState.setMenu(dsVar);
                return true;
            }
        }
        context = context2;
        ds dsVar2 = new ds(context);
        dsVar2.a((ds.a) this);
        panelFeatureState.setMenu(dsVar2);
        return true;
    }

    private void invalidatePanelMenu(int i) {
        this.mInvalidatePanelMenuFeatures |= 1 << i;
        if (!this.mInvalidatePanelMenuPosted && this.mWindowDecor != null) {
            bh.a((View) this.mWindowDecor, this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuPosted = true;
        }
    }

    private boolean onKeyDownPanel(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState panelState = getPanelState(i, true);
            if (!panelState.isOpen) {
                return preparePanel(panelState, keyEvent);
            }
        }
        return false;
    }

    private boolean onKeyUpPanel(int i, KeyEvent keyEvent) {
        boolean z;
        boolean z2 = true;
        if (this.mActionMode != null) {
            return false;
        }
        PanelFeatureState panelState = getPanelState(i, true);
        if (i != 0 || this.mDecorContentParent == null || !this.mDecorContentParent.a() || bl.b(ViewConfiguration.get(this.mContext))) {
            if (panelState.isOpen || panelState.isHandled) {
                boolean z3 = panelState.isOpen;
                closePanel(panelState, true);
                z2 = z3;
            } else {
                if (panelState.isPrepared) {
                    if (panelState.refreshMenuContent) {
                        panelState.isPrepared = false;
                        z = preparePanel(panelState, keyEvent);
                    } else {
                        z = true;
                    }
                    if (z) {
                        openPanel(panelState, keyEvent);
                    }
                }
                z2 = false;
            }
        } else if (!this.mDecorContentParent.b()) {
            if (!isDestroyed() && preparePanel(panelState, keyEvent)) {
                z2 = this.mDecorContentParent.d();
            }
            z2 = false;
        } else {
            z2 = this.mDecorContentParent.e();
        }
        if (z2) {
            AudioManager audioManager = (AudioManager) this.mContext.getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return z2;
    }

    private void openPanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        ViewGroup.LayoutParams layoutParams;
        int i = -1;
        if (!panelFeatureState.isOpen && !isDestroyed()) {
            if (panelFeatureState.featureId == 0) {
                Context context = this.mContext;
                boolean z = (context.getResources().getConfiguration().screenLayout & 15) == 4;
                boolean z2 = context.getApplicationInfo().targetSdkVersion >= 11;
                if (z && z2) {
                    return;
                }
            }
            Window.Callback windowCallback = getWindowCallback();
            if (windowCallback == null || windowCallback.onMenuOpened(panelFeatureState.featureId, panelFeatureState.menu)) {
                WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
                if (windowManager != null && preparePanel(panelFeatureState, keyEvent)) {
                    if (panelFeatureState.decorView == null || panelFeatureState.refreshDecorView) {
                        if (panelFeatureState.decorView == null) {
                            if (!initializePanelDecor(panelFeatureState) || panelFeatureState.decorView == null) {
                                return;
                            }
                        } else if (panelFeatureState.refreshDecorView && panelFeatureState.decorView.getChildCount() > 0) {
                            panelFeatureState.decorView.removeAllViews();
                        }
                        if (initializePanelContent(panelFeatureState) && panelFeatureState.hasPanelItems()) {
                            ViewGroup.LayoutParams layoutParams2 = panelFeatureState.shownPanelView.getLayoutParams();
                            ViewGroup.LayoutParams layoutParams3 = layoutParams2 == null ? new ViewGroup.LayoutParams(-2, -2) : layoutParams2;
                            panelFeatureState.decorView.setBackgroundResource(panelFeatureState.background);
                            ViewParent parent = panelFeatureState.shownPanelView.getParent();
                            if (parent != null && (parent instanceof ViewGroup)) {
                                ((ViewGroup) parent).removeView(panelFeatureState.shownPanelView);
                            }
                            panelFeatureState.decorView.addView(panelFeatureState.shownPanelView, layoutParams3);
                            if (!panelFeatureState.shownPanelView.hasFocus()) {
                                panelFeatureState.shownPanelView.requestFocus();
                            }
                            i = -2;
                        } else {
                            return;
                        }
                    } else if (panelFeatureState.createdPanelView == null || (layoutParams = panelFeatureState.createdPanelView.getLayoutParams()) == null || layoutParams.width != -1) {
                        i = -2;
                    }
                    panelFeatureState.isHandled = false;
                    WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.x, panelFeatureState.y, 1002, 8519680, -3);
                    layoutParams4.gravity = panelFeatureState.gravity;
                    layoutParams4.windowAnimations = panelFeatureState.windowAnimations;
                    windowManager.addView(panelFeatureState.decorView, layoutParams4);
                    panelFeatureState.isOpen = true;
                    return;
                }
                return;
            }
            closePanel(panelFeatureState, true);
        }
    }

    private boolean performPanelShortcut(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent, int i2) {
        boolean z = false;
        if (!keyEvent.isSystem()) {
            if ((panelFeatureState.isPrepared || preparePanel(panelFeatureState, keyEvent)) && panelFeatureState.menu != null) {
                z = panelFeatureState.menu.performShortcut(i, keyEvent, i2);
            }
            if (z && (i2 & 1) == 0 && this.mDecorContentParent == null) {
                closePanel(panelFeatureState, true);
            }
        }
        return z;
    }

    private boolean preparePanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (isDestroyed()) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        if (!(this.mPreparedPanel == null || this.mPreparedPanel == panelFeatureState)) {
            closePanel(this.mPreparedPanel, false);
        }
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback != null) {
            panelFeatureState.createdPanelView = windowCallback.onCreatePanelView(panelFeatureState.featureId);
        }
        boolean z = panelFeatureState.featureId == 0 || panelFeatureState.featureId == 8;
        if (z && this.mDecorContentParent != null) {
            this.mDecorContentParent.setMenuPrepared();
        }
        if (panelFeatureState.createdPanelView == null && (!z || !(peekSupportActionBar() instanceof dd))) {
            if (panelFeatureState.menu == null || panelFeatureState.refreshMenuContent) {
                if (panelFeatureState.menu == null && (!initializePanelMenu(panelFeatureState) || panelFeatureState.menu == null)) {
                    return false;
                }
                if (z && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
                    }
                    this.mDecorContentParent.setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.d();
                if (!windowCallback.onCreatePanelMenu(panelFeatureState.featureId, panelFeatureState.menu)) {
                    panelFeatureState.setMenu((ds) null);
                    if (!z || this.mDecorContentParent == null) {
                        return false;
                    }
                    this.mDecorContentParent.setMenu((Menu) null, this.mActionMenuPresenterCallback);
                    return false;
                }
                panelFeatureState.refreshMenuContent = false;
            }
            panelFeatureState.menu.d();
            if (panelFeatureState.frozenActionViewState != null) {
                panelFeatureState.menu.d(panelFeatureState.frozenActionViewState);
                panelFeatureState.frozenActionViewState = null;
            }
            if (!windowCallback.onPreparePanel(0, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                if (z && this.mDecorContentParent != null) {
                    this.mDecorContentParent.setMenu((Menu) null, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.e();
                return false;
            }
            panelFeatureState.qwertyMode = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.menu.setQwertyMode(panelFeatureState.qwertyMode);
            panelFeatureState.menu.e();
        }
        panelFeatureState.isPrepared = true;
        panelFeatureState.isHandled = false;
        this.mPreparedPanel = panelFeatureState;
        return true;
    }

    private void reopenMenu(ds dsVar, boolean z) {
        if (this.mDecorContentParent == null || !this.mDecorContentParent.a() || (bl.b(ViewConfiguration.get(this.mContext)) && !this.mDecorContentParent.c())) {
            PanelFeatureState panelState = getPanelState(0, true);
            panelState.refreshDecorView = true;
            closePanel(panelState, false);
            openPanel(panelState, (KeyEvent) null);
            return;
        }
        Window.Callback windowCallback = getWindowCallback();
        if (this.mDecorContentParent.b() && z) {
            this.mDecorContentParent.e();
            if (!isDestroyed()) {
                windowCallback.onPanelClosed(8, getPanelState(0, true).menu);
            }
        } else if (windowCallback != null && !isDestroyed()) {
            if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
                this.mWindowDecor.removeCallbacks(this.mInvalidatePanelMenuRunnable);
                this.mInvalidatePanelMenuRunnable.run();
            }
            PanelFeatureState panelState2 = getPanelState(0, true);
            if (panelState2.menu != null && !panelState2.refreshMenuContent && windowCallback.onPreparePanel(0, panelState2.createdPanelView, panelState2.menu)) {
                windowCallback.onMenuOpened(8, panelState2.menu);
                this.mDecorContentParent.d();
            }
        }
    }

    private void throwFeatureRequestIfSubDecorInstalled() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* access modifiers changed from: private */
    public int updateStatusGuard(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        int i2 = 0;
        if (this.mActionModeView == null || !(this.mActionModeView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mActionModeView.getLayoutParams();
            if (this.mActionModeView.isShown()) {
                if (this.mTempRect1 == null) {
                    this.mTempRect1 = new Rect();
                    this.mTempRect2 = new Rect();
                }
                Rect rect = this.mTempRect1;
                Rect rect2 = this.mTempRect2;
                rect.set(0, i, 0, 0);
                eu.a(this.mSubDecor, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.mStatusGuard == null) {
                        this.mStatusGuard = new View(this.mContext);
                        this.mStatusGuard.setBackgroundColor(this.mContext.getResources().getColor(cv.c.abc_input_method_navigation_guard));
                        this.mSubDecor.addView(this.mStatusGuard, -1, new ViewGroup.LayoutParams(-1, i));
                        z3 = true;
                    } else {
                        ViewGroup.LayoutParams layoutParams = this.mStatusGuard.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.mStatusGuard.setLayoutParams(layoutParams);
                        }
                        z3 = true;
                    }
                } else {
                    z3 = false;
                }
                if (this.mStatusGuard == null) {
                    z4 = false;
                }
                if (!this.mOverlayActionMode && z4) {
                    i = 0;
                }
                boolean z5 = z3;
                z2 = z4;
                z4 = z5;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z4 = false;
                z2 = false;
            }
            if (z4) {
                this.mActionModeView.setLayoutParams(marginLayoutParams);
            }
            z = z2;
        }
        if (this.mStatusGuard != null) {
            View view = this.mStatusGuard;
            if (!z) {
                i2 = 8;
            }
            view.setVisibility(i2);
        }
        return i;
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ((ViewGroup) this.mSubDecor.findViewById(16908290)).addView(view, layoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    /* access modifiers changed from: package-private */
    public View callActivityOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView;
        if (!(this.mOriginalWindowCallback instanceof LayoutInflater.Factory) || (onCreateView = ((LayoutInflater.Factory) this.mOriginalWindowCallback).onCreateView(str, context, attributeSet)) == null) {
            return null;
        }
        return onCreateView;
    }

    public ActionBar createSupportActionBar() {
        ensureSubDecor();
        de deVar = null;
        if (this.mOriginalWindowCallback instanceof Activity) {
            deVar = new de((Activity) this.mOriginalWindowCallback, this.mOverlayActionBar);
        } else if (this.mOriginalWindowCallback instanceof Dialog) {
            deVar = new de((Dialog) this.mOriginalWindowCallback);
        }
        if (deVar != null) {
            deVar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
        }
        return deVar;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0057, code lost:
        if (r8.equals("EditText") != false) goto L_0x0043;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View createView(android.view.View r7, java.lang.String r8, android.content.Context r9, android.util.AttributeSet r10) {
        /*
            r6 = this;
            r1 = 1
            r2 = 0
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 21
            if (r0 >= r3) goto L_0x004d
            r0 = r1
        L_0x0009:
            da r3 = r6.mAppCompatViewInflater
            if (r3 != 0) goto L_0x0014
            da r3 = new da
            r3.<init>()
            r6.mAppCompatViewInflater = r3
        L_0x0014:
            if (r0 == 0) goto L_0x004f
            boolean r3 = r6.mSubDecorInstalled
            if (r3 == 0) goto L_0x004f
            if (r7 == 0) goto L_0x004f
            int r3 = r7.getId()
            r4 = 16908290(0x1020002, float:2.3877235E-38)
            if (r3 == r4) goto L_0x004f
            boolean r3 = defpackage.bh.E(r7)
            if (r3 != 0) goto L_0x004f
            r3 = r1
        L_0x002c:
            da r4 = r6.mAppCompatViewInflater
            if (r3 == 0) goto L_0x00fc
            if (r7 == 0) goto L_0x00fc
            android.content.Context r3 = r7.getContext()
        L_0x0036:
            android.content.Context r3 = defpackage.da.a((android.content.Context) r3, (android.util.AttributeSet) r10, (boolean) r0)
            r0 = -1
            int r5 = r8.hashCode()
            switch(r5) {
                case -1946472170: goto L_0x0096;
                case -1455429095: goto L_0x0078;
                case -1346021293: goto L_0x008c;
                case -938935918: goto L_0x00ab;
                case -339785223: goto L_0x005a;
                case 776382189: goto L_0x006e;
                case 1413872058: goto L_0x0082;
                case 1601505219: goto L_0x0064;
                case 1666676343: goto L_0x0051;
                case 2001146706: goto L_0x00a0;
                default: goto L_0x0042;
            }
        L_0x0042:
            r2 = r0
        L_0x0043:
            switch(r2) {
                case 0: goto L_0x00b6;
                case 1: goto L_0x00bc;
                case 2: goto L_0x00c2;
                case 3: goto L_0x00c8;
                case 4: goto L_0x00cf;
                case 5: goto L_0x00d6;
                case 6: goto L_0x00dd;
                case 7: goto L_0x00e4;
                case 8: goto L_0x00eb;
                case 9: goto L_0x00f2;
                default: goto L_0x0046;
            }
        L_0x0046:
            if (r9 == r3) goto L_0x00f9
            android.view.View r0 = r4.a((android.content.Context) r3, (java.lang.String) r8, (android.util.AttributeSet) r10)
        L_0x004c:
            return r0
        L_0x004d:
            r0 = r2
            goto L_0x0009
        L_0x004f:
            r3 = r2
            goto L_0x002c
        L_0x0051:
            java.lang.String r1 = "EditText"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            goto L_0x0043
        L_0x005a:
            java.lang.String r2 = "Spinner"
            boolean r2 = r8.equals(r2)
            if (r2 == 0) goto L_0x0042
            r2 = r1
            goto L_0x0043
        L_0x0064:
            java.lang.String r1 = "CheckBox"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            r2 = 2
            goto L_0x0043
        L_0x006e:
            java.lang.String r1 = "RadioButton"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            r2 = 3
            goto L_0x0043
        L_0x0078:
            java.lang.String r1 = "CheckedTextView"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            r2 = 4
            goto L_0x0043
        L_0x0082:
            java.lang.String r1 = "AutoCompleteTextView"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            r2 = 5
            goto L_0x0043
        L_0x008c:
            java.lang.String r1 = "MultiAutoCompleteTextView"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            r2 = 6
            goto L_0x0043
        L_0x0096:
            java.lang.String r1 = "RatingBar"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            r2 = 7
            goto L_0x0043
        L_0x00a0:
            java.lang.String r1 = "Button"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            r2 = 8
            goto L_0x0043
        L_0x00ab:
            java.lang.String r1 = "TextView"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto L_0x0042
            r2 = 9
            goto L_0x0043
        L_0x00b6:
            android.support.v7.widget.AppCompatEditText r0 = new android.support.v7.widget.AppCompatEditText
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00bc:
            android.support.v7.widget.AppCompatSpinner r0 = new android.support.v7.widget.AppCompatSpinner
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00c2:
            android.support.v7.widget.AppCompatCheckBox r0 = new android.support.v7.widget.AppCompatCheckBox
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00c8:
            android.support.v7.widget.AppCompatRadioButton r0 = new android.support.v7.widget.AppCompatRadioButton
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00cf:
            android.support.v7.widget.AppCompatCheckedTextView r0 = new android.support.v7.widget.AppCompatCheckedTextView
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00d6:
            android.support.v7.widget.AppCompatAutoCompleteTextView r0 = new android.support.v7.widget.AppCompatAutoCompleteTextView
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00dd:
            android.support.v7.widget.AppCompatMultiAutoCompleteTextView r0 = new android.support.v7.widget.AppCompatMultiAutoCompleteTextView
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00e4:
            android.support.v7.widget.AppCompatRatingBar r0 = new android.support.v7.widget.AppCompatRatingBar
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00eb:
            android.support.v7.widget.AppCompatButton r0 = new android.support.v7.widget.AppCompatButton
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00f2:
            android.support.v7.widget.AppCompatTextView r0 = new android.support.v7.widget.AppCompatTextView
            r0.<init>(r3, r10)
            goto L_0x004c
        L_0x00f9:
            r0 = 0
            goto L_0x004c
        L_0x00fc:
            r3 = r9
            goto L_0x0036
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV7.createView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    /* access modifiers changed from: package-private */
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? onKeyDown(keyCode, keyEvent) : onKeyUp(keyCode, keyEvent);
    }

    /* access modifiers changed from: package-private */
    public ViewGroup getSubDecor() {
        return this.mSubDecor;
    }

    public void installViewFactory() {
        LayoutInflater from = LayoutInflater.from(this.mContext);
        if (from.getFactory() == null) {
            ar.a(from, this);
        } else {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    public void invalidateOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null || !supportActionBar.invalidateOptionsMenu()) {
            invalidatePanelMenu(0);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean onBackPressed() {
        if (this.mActionMode != null) {
            this.mActionMode.c();
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        return supportActionBar != null && supportActionBar.collapseActionView();
    }

    public void onConfigurationChanged(Configuration configuration) {
        ActionBar supportActionBar;
        if (this.mHasActionBar && this.mSubDecorInstalled && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mWindowDecor = (ViewGroup) this.mWindow.getDecorView();
        if ((this.mOriginalWindowCallback instanceof Activity) && NavUtils.getParentActivityName((Activity) this.mOriginalWindowCallback) != null) {
            ActionBar peekSupportActionBar = peekSupportActionBar();
            if (peekSupportActionBar == null) {
                this.mEnableDefaultActionBarUp = true;
            } else {
                peekSupportActionBar.setDefaultDisplayHomeAsUpEnabled(true);
            }
        }
    }

    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View callActivityOnCreateView = callActivityOnCreateView(view, str, context, attributeSet);
        return callActivityOnCreateView != null ? callActivityOnCreateView : createView(view, str, context, attributeSet);
    }

    /* access modifiers changed from: package-private */
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 82:
                if (onKeyDownPanel(0, keyEvent)) {
                    return true;
                }
                break;
        }
        if (Build.VERSION.SDK_INT < 11) {
            return onKeyShortcut(i, keyEvent);
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null && supportActionBar.onKeyShortcut(i, keyEvent)) {
            return true;
        }
        if (this.mPreparedPanel == null || !performPanelShortcut(this.mPreparedPanel, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.mPreparedPanel == null) {
                PanelFeatureState panelState = getPanelState(0, true);
                preparePanel(panelState, keyEvent);
                boolean performPanelShortcut = performPanelShortcut(panelState, keyEvent.getKeyCode(), keyEvent, 1);
                panelState.isPrepared = false;
                if (performPanelShortcut) {
                    return true;
                }
            }
            return false;
        } else if (this.mPreparedPanel == null) {
            return true;
        } else {
            this.mPreparedPanel.isHandled = true;
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                PanelFeatureState panelState = getPanelState(0, false);
                if (panelState != null && panelState.isOpen) {
                    closePanel(panelState, true);
                    return true;
                } else if (onBackPressed()) {
                    return true;
                }
                break;
            case 82:
                if (onKeyUpPanel(0, keyEvent)) {
                    return true;
                }
                break;
        }
        return false;
    }

    public boolean onMenuItemSelected(ds dsVar, MenuItem menuItem) {
        PanelFeatureState findMenuPanel;
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback == null || isDestroyed() || (findMenuPanel = findMenuPanel(dsVar.k())) == null) {
            return false;
        }
        return windowCallback.onMenuItemSelected(findMenuPanel.featureId, menuItem);
    }

    public void onMenuModeChange(ds dsVar) {
        reopenMenu(dsVar, true);
    }

    /* access modifiers changed from: package-private */
    public boolean onMenuOpened(int i, Menu menu) {
        if (i != 8) {
            return false;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return true;
        }
        supportActionBar.dispatchMenuVisibilityChanged(true);
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean onPanelClosed(int i, Menu menu) {
        if (i == 8) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar == null) {
                return true;
            }
            supportActionBar.dispatchMenuVisibilityChanged(false);
            return true;
        }
        if (i == 0) {
            PanelFeatureState panelState = getPanelState(i, true);
            if (panelState.isOpen) {
                closePanel(panelState, false);
            }
        }
        return false;
    }

    public void onPostCreate(Bundle bundle) {
        ensureSubDecor();
    }

    public void onPostResume() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    public void onStop() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
    }

    /* access modifiers changed from: package-private */
    public void onSubDecorInstalled(ViewGroup viewGroup) {
    }

    /* access modifiers changed from: package-private */
    public void onTitleChanged(CharSequence charSequence) {
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.setWindowTitle(charSequence);
        } else if (peekSupportActionBar() != null) {
            peekSupportActionBar().setWindowTitle(charSequence);
        } else if (this.mTitleView != null) {
            this.mTitleView.setText(charSequence);
        }
    }

    public boolean requestWindowFeature(int i) {
        switch (i) {
            case 1:
                throwFeatureRequestIfSubDecorInstalled();
                this.mWindowNoTitle = true;
                return true;
            case 2:
                throwFeatureRequestIfSubDecorInstalled();
                this.mFeatureProgress = true;
                return true;
            case 5:
                throwFeatureRequestIfSubDecorInstalled();
                this.mFeatureIndeterminateProgress = true;
                return true;
            case 8:
                throwFeatureRequestIfSubDecorInstalled();
                this.mHasActionBar = true;
                return true;
            case 9:
                throwFeatureRequestIfSubDecorInstalled();
                this.mOverlayActionBar = true;
                return true;
            case 10:
                throwFeatureRequestIfSubDecorInstalled();
                this.mOverlayActionMode = true;
                return true;
            default:
                return this.mWindow.requestFeature(i);
        }
    }

    public void setContentView(int i) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i, viewGroup);
        this.mOriginalWindowCallback.onContentChanged();
    }

    public void setContentView(View view) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mOriginalWindowCallback.onContentChanged();
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    public void setSupportActionBar(Toolbar toolbar) {
        if (this.mOriginalWindowCallback instanceof Activity) {
            if (getSupportActionBar() instanceof de) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            dd ddVar = new dd(toolbar, ((Activity) this.mContext).getTitle(), this.mAppCompatWindowCallback);
            setSupportActionBar(ddVar);
            this.mWindow.setCallback(ddVar.a);
            ddVar.invalidateOptionsMenu();
        }
    }

    public ew startSupportActionMode(ew.a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.mActionMode != null) {
            this.mActionMode.c();
        }
        ActionModeCallbackWrapperV7 actionModeCallbackWrapperV7 = new ActionModeCallbackWrapperV7(aVar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            this.mActionMode = supportActionBar.startActionMode(actionModeCallbackWrapperV7);
            if (!(this.mActionMode == null || this.mAppCompatCallback == null)) {
                this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
            }
        }
        if (this.mActionMode == null) {
            this.mActionMode = startSupportActionModeFromWindow(actionModeCallbackWrapperV7);
        }
        return this.mActionMode;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.ew startSupportActionModeFromWindow(defpackage.ew.a r9) {
        /*
            r8 = this;
            r3 = 0
            r2 = 0
            r1 = 1
            ew r0 = r8.mActionMode
            if (r0 == 0) goto L_0x000c
            ew r0 = r8.mActionMode
            r0.c()
        L_0x000c:
            android.support.v7.app.AppCompatDelegateImplV7$ActionModeCallbackWrapperV7 r4 = new android.support.v7.app.AppCompatDelegateImplV7$ActionModeCallbackWrapperV7
            r4.<init>(r9)
            android.support.v7.app.AppCompatCallback r0 = r8.mAppCompatCallback
            if (r0 == 0) goto L_0x0038
            boolean r0 = r8.isDestroyed()
            if (r0 != 0) goto L_0x0038
            android.support.v7.app.AppCompatCallback r0 = r8.mAppCompatCallback     // Catch:{ AbstractMethodError -> 0x0037 }
            ew r0 = r0.onWindowStartingSupportActionMode(r4)     // Catch:{ AbstractMethodError -> 0x0037 }
        L_0x0021:
            if (r0 == 0) goto L_0x003a
            r8.mActionMode = r0
        L_0x0025:
            ew r0 = r8.mActionMode
            if (r0 == 0) goto L_0x0034
            android.support.v7.app.AppCompatCallback r0 = r8.mAppCompatCallback
            if (r0 == 0) goto L_0x0034
            android.support.v7.app.AppCompatCallback r0 = r8.mAppCompatCallback
            ew r1 = r8.mActionMode
            r0.onSupportActionModeStarted(r1)
        L_0x0034:
            ew r0 = r8.mActionMode
            return r0
        L_0x0037:
            r0 = move-exception
        L_0x0038:
            r0 = r3
            goto L_0x0021
        L_0x003a:
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            if (r0 != 0) goto L_0x00bc
            boolean r0 = r8.mIsFloating
            if (r0 == 0) goto L_0x011f
            android.util.TypedValue r5 = new android.util.TypedValue
            r5.<init>()
            android.content.Context r0 = r8.mContext
            android.content.res.Resources$Theme r0 = r0.getTheme()
            int r6 = defpackage.cv.a.actionBarTheme
            r0.resolveAttribute(r6, r5, r1)
            int r6 = r5.resourceId
            if (r6 == 0) goto L_0x011b
            android.content.Context r6 = r8.mContext
            android.content.res.Resources r6 = r6.getResources()
            android.content.res.Resources$Theme r6 = r6.newTheme()
            r6.setTo(r0)
            int r0 = r5.resourceId
            r6.applyStyle(r0, r1)
            dh r0 = new dh
            android.content.Context r7 = r8.mContext
            r0.<init>(r7, r2)
            android.content.res.Resources$Theme r7 = r0.getTheme()
            r7.setTo(r6)
        L_0x0076:
            android.support.v7.internal.widget.ActionBarContextView r6 = new android.support.v7.internal.widget.ActionBarContextView
            r6.<init>(r0)
            r8.mActionModeView = r6
            android.widget.PopupWindow r6 = new android.widget.PopupWindow
            int r7 = defpackage.cv.a.actionModePopupWindowStyle
            r6.<init>(r0, r3, r7)
            r8.mActionModePopup = r6
            android.widget.PopupWindow r6 = r8.mActionModePopup
            android.support.v7.internal.widget.ActionBarContextView r7 = r8.mActionModeView
            r6.setContentView(r7)
            android.widget.PopupWindow r6 = r8.mActionModePopup
            r7 = -1
            r6.setWidth(r7)
            android.content.res.Resources$Theme r6 = r0.getTheme()
            int r7 = defpackage.cv.a.actionBarSize
            r6.resolveAttribute(r7, r5, r1)
            int r5 = r5.data
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            int r0 = android.util.TypedValue.complexToDimensionPixelSize(r5, r0)
            android.support.v7.internal.widget.ActionBarContextView r5 = r8.mActionModeView
            r5.setContentHeight(r0)
            android.widget.PopupWindow r0 = r8.mActionModePopup
            r5 = -2
            r0.setHeight(r5)
            android.support.v7.app.AppCompatDelegateImplV7$4 r0 = new android.support.v7.app.AppCompatDelegateImplV7$4
            r0.<init>()
            r8.mShowActionModePopup = r0
        L_0x00bc:
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            if (r0 == 0) goto L_0x0025
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            r0.c()
            di r5 = new di
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            android.content.Context r6 = r0.getContext()
            android.support.v7.internal.widget.ActionBarContextView r7 = r8.mActionModeView
            android.widget.PopupWindow r0 = r8.mActionModePopup
            if (r0 != 0) goto L_0x0140
            r0 = r1
        L_0x00d4:
            r5.<init>(r6, r7, r4, r0)
            android.view.Menu r0 = r5.b()
            boolean r0 = r9.onCreateActionMode(r5, r0)
            if (r0 == 0) goto L_0x0142
            r5.d()
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            r0.a((defpackage.ew) r5)
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            r0.setVisibility(r2)
            r8.mActionMode = r5
            android.widget.PopupWindow r0 = r8.mActionModePopup
            if (r0 == 0) goto L_0x00ff
            android.view.Window r0 = r8.mWindow
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r8.mShowActionModePopup
            r0.post(r1)
        L_0x00ff:
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            r1 = 32
            r0.sendAccessibilityEvent(r1)
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            android.view.ViewParent r0 = r0.getParent()
            if (r0 == 0) goto L_0x0025
            android.support.v7.internal.widget.ActionBarContextView r0 = r8.mActionModeView
            android.view.ViewParent r0 = r0.getParent()
            android.view.View r0 = (android.view.View) r0
            defpackage.bh.w(r0)
            goto L_0x0025
        L_0x011b:
            android.content.Context r0 = r8.mContext
            goto L_0x0076
        L_0x011f:
            android.view.ViewGroup r0 = r8.mSubDecor
            int r5 = defpackage.cv.f.action_mode_bar_stub
            android.view.View r0 = r0.findViewById(r5)
            android.support.v7.internal.widget.ViewStubCompat r0 = (android.support.v7.internal.widget.ViewStubCompat) r0
            if (r0 == 0) goto L_0x00bc
            android.content.Context r5 = r8.getActionBarThemedContext()
            android.view.LayoutInflater r5 = android.view.LayoutInflater.from(r5)
            r0.setLayoutInflater(r5)
            android.view.View r0 = r0.a()
            android.support.v7.internal.widget.ActionBarContextView r0 = (android.support.v7.internal.widget.ActionBarContextView) r0
            r8.mActionModeView = r0
            goto L_0x00bc
        L_0x0140:
            r0 = r2
            goto L_0x00d4
        L_0x0142:
            r8.mActionMode = r3
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV7.startSupportActionModeFromWindow(ew$a):ew");
    }
}
