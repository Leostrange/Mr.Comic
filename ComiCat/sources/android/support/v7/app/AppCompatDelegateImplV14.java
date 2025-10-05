package android.support.v7.app;

import android.content.Context;
import android.support.v7.app.AppCompatDelegateImplBase;
import android.view.ActionMode;
import android.view.Window;
import defpackage.dj;

class AppCompatDelegateImplV14 extends AppCompatDelegateImplV11 {
    /* access modifiers changed from: private */
    public boolean mHandleNativeActionModes = true;

    class AppCompatWindowCallbackV14 extends AppCompatDelegateImplBase.AppCompatWindowCallbackBase {
        AppCompatWindowCallbackV14(Window.Callback callback) {
            super(callback);
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return AppCompatDelegateImplV14.this.mHandleNativeActionModes ? startAsSupportActionMode(callback) : super.onWindowStartingActionMode(callback);
        }

        /* access modifiers changed from: package-private */
        public final ActionMode startAsSupportActionMode(ActionMode.Callback callback) {
            dj.a aVar = new dj.a(AppCompatDelegateImplV14.this.mContext, callback);
            ew startSupportActionMode = AppCompatDelegateImplV14.this.startSupportActionMode(aVar);
            if (startSupportActionMode != null) {
                return aVar.a(startSupportActionMode);
            }
            return null;
        }
    }

    AppCompatDelegateImplV14(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
    }

    public boolean isHandleNativeActionModesEnabled() {
        return this.mHandleNativeActionModes;
    }

    public void setHandleNativeActionModesEnabled(boolean z) {
        this.mHandleNativeActionModes = z;
    }

    /* access modifiers changed from: package-private */
    public Window.Callback wrapWindowCallback(Window.Callback callback) {
        return new AppCompatWindowCallbackV14(callback);
    }
}
