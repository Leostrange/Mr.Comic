package defpackage;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;

/* renamed from: dm  reason: default package */
/* compiled from: WindowCallbackWrapper */
public class dm implements Window.Callback {
    final Window.Callback mWrapped;

    public dm(Window.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.mWrapped = callback;
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchGenericMotionEvent(motionEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.mWrapped.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.mWrapped.dispatchKeyShortcutEvent(keyEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.mWrapped.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchTouchEvent(motionEvent);
    }

    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.mWrapped.dispatchTrackballEvent(motionEvent);
    }

    public void onActionModeFinished(ActionMode actionMode) {
        this.mWrapped.onActionModeFinished(actionMode);
    }

    public void onActionModeStarted(ActionMode actionMode) {
        this.mWrapped.onActionModeStarted(actionMode);
    }

    public void onAttachedToWindow() {
        this.mWrapped.onAttachedToWindow();
    }

    public void onContentChanged() {
        this.mWrapped.onContentChanged();
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        return this.mWrapped.onCreatePanelMenu(i, menu);
    }

    public View onCreatePanelView(int i) {
        return this.mWrapped.onCreatePanelView(i);
    }

    public void onDetachedFromWindow() {
        this.mWrapped.onDetachedFromWindow();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.mWrapped.onMenuItemSelected(i, menuItem);
    }

    public boolean onMenuOpened(int i, Menu menu) {
        return this.mWrapped.onMenuOpened(i, menu);
    }

    public void onPanelClosed(int i, Menu menu) {
        this.mWrapped.onPanelClosed(i, menu);
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        return this.mWrapped.onPreparePanel(i, view, menu);
    }

    public boolean onSearchRequested() {
        return this.mWrapped.onSearchRequested();
    }

    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.mWrapped.onWindowAttributesChanged(layoutParams);
    }

    public void onWindowFocusChanged(boolean z) {
        this.mWrapped.onWindowFocusChanged(z);
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.mWrapped.onWindowStartingActionMode(callback);
    }
}
