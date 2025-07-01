// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import al;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import bh;
import bz;

// Referenced classes of package android.support.v4.widget:
//            SlidingPaneLayout

final class a extends al
{

    final SlidingPaneLayout a;
    private final Rect b = new Rect();

    private boolean a(View view)
    {
        return a.b(view);
    }

    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(view, accessibilityevent);
        accessibilityevent.setClassName(android/support/v4/widget/SlidingPaneLayout.getName());
    }

    public final void onInitializeAccessibilityNodeInfo(View view, bz bz1)
    {
        bz bz2 = bz.a(bz1);
        super.onInitializeAccessibilityNodeInfo(view, bz2);
        Rect rect = b;
        bz2.a(rect);
        bz1.b(rect);
        bz2.c(rect);
        bz1.d(rect);
        bz1.c(bz2.d());
        bz1.a(bz2.j());
        bz1.b(bz2.k());
        bz1.c(bz2.l());
        bz1.h(bz2.i());
        bz1.f(bz2.g());
        bz1.a(bz2.b());
        bz1.b(bz2.c());
        bz1.d(bz2.e());
        bz1.e(bz2.f());
        bz1.g(bz2.h());
        bz1.a(bz2.a());
        int i = bz.a.ce(bz2.b);
        bz.a.ce(bz1.b, i);
        bz2.m();
        bz1.b(android/support/v4/widget/SlidingPaneLayout.getName());
        bz1.a(view);
        view = bh.i(view);
        if (view instanceof View)
        {
            bz1.c((View)view);
        }
        int k = a.getChildCount();
        for (int j = 0; j < k; j++)
        {
            view = a.getChildAt(j);
            if (!a(view) && view.getVisibility() == 0)
            {
                bh.c(view, 1);
                bz1.b(view);
            }
        }

    }

    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        if (!a(view))
        {
            return super.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
        } else
        {
            return false;
        }
    }

    (SlidingPaneLayout slidingpanelayout)
    {
        a = slidingpanelayout;
        super();
    }
}
