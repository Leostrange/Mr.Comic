package android.support.v7.internal.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import defpackage.cv;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

public class AppCompatPopupWindow extends PopupWindow {
    private final boolean a;

    public AppCompatPopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        es a2 = es.a(context, attributeSet, cv.k.PopupWindow, i);
        this.a = a2.a(cv.k.PopupWindow_overlapAnchor, false);
        setBackgroundDrawable(a2.a(cv.k.PopupWindow_android_popupBackground));
        a2.a.recycle();
        if (Build.VERSION.SDK_INT < 14) {
            try {
                final Field declaredField = PopupWindow.class.getDeclaredField("mAnchor");
                declaredField.setAccessible(true);
                Field declaredField2 = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
                declaredField2.setAccessible(true);
                final ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = (ViewTreeObserver.OnScrollChangedListener) declaredField2.get(this);
                declaredField2.set(this, new ViewTreeObserver.OnScrollChangedListener() {
                    public final void onScrollChanged() {
                        try {
                            WeakReference weakReference = (WeakReference) declaredField.get(this);
                            if (weakReference != null && weakReference.get() != null) {
                                onScrollChangedListener.onScrollChanged();
                            }
                        } catch (IllegalAccessException e) {
                        }
                    }
                });
            } catch (Exception e) {
            }
        }
    }

    public void showAsDropDown(View view, int i, int i2) {
        if (Build.VERSION.SDK_INT < 21 && this.a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @TargetApi(19)
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT < 21 && this.a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }

    public void update(View view, int i, int i2, int i3, int i4) {
        super.update(view, i, (Build.VERSION.SDK_INT >= 21 || !this.a) ? i2 : i2 - view.getHeight(), i3, i4);
    }
}
