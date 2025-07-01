// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import es;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

public class AppCompatPopupWindow extends PopupWindow
{

    private final boolean a;

    public AppCompatPopupWindow(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        context = es.a(context, attributeset, cv.k.PopupWindow, i);
        a = context.a(cv.k.PopupWindow_overlapAnchor, false);
        setBackgroundDrawable(context.a(cv.k.PopupWindow_android_popupBackground));
        ((es) (context)).a.recycle();
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        context = android/widget/PopupWindow.getDeclaredField("mAnchor");
        context.setAccessible(true);
        attributeset = android/widget/PopupWindow.getDeclaredField("mOnScrollChangedListener");
        attributeset.setAccessible(true);
        attributeset.set(this, new android.view.ViewTreeObserver.OnScrollChangedListener(context, this, (android.view.ViewTreeObserver.OnScrollChangedListener)attributeset.get(this)) {

            final Field a;
            final PopupWindow b;
            final android.view.ViewTreeObserver.OnScrollChangedListener c;

            public final void onScrollChanged()
            {
                WeakReference weakreference = (WeakReference)a.get(b);
                if (weakreference == null)
                {
                    break MISSING_BLOCK_LABEL_38;
                }
                if (weakreference.get() == null)
                {
                    return;
                }
                try
                {
                    c.onScrollChanged();
                    return;
                }
                catch (IllegalAccessException illegalaccessexception) { }
            }

            
            {
                a = field;
                b = popupwindow;
                c = onscrollchangedlistener;
                super();
            }
        });
        return;
        context;
    }

    public void showAsDropDown(View view, int i, int j)
    {
        int k = j;
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            k = j;
            if (a)
            {
                k = j - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, k);
    }

    public void showAsDropDown(View view, int i, int j, int k)
    {
        int l = j;
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            l = j;
            if (a)
            {
                l = j - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, l, k);
    }

    public void update(View view, int i, int j, int k, int l)
    {
        if (android.os.Build.VERSION.SDK_INT < 21 && a)
        {
            j -= view.getHeight();
        }
        super.update(view, i, j, k, l);
    }
}
