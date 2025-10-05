package android.support.v7.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

class AppCompatDelegateImplV11 extends AppCompatDelegateImplV7 {
    AppCompatDelegateImplV11(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
    }

    /* access modifiers changed from: package-private */
    public View callActivityOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View callActivityOnCreateView = super.callActivityOnCreateView(view, str, context, attributeSet);
        if (callActivityOnCreateView != null) {
            return callActivityOnCreateView;
        }
        if (this.mOriginalWindowCallback instanceof LayoutInflater.Factory2) {
            return ((LayoutInflater.Factory2) this.mOriginalWindowCallback).onCreateView(view, str, context, attributeSet);
        }
        return null;
    }
}
