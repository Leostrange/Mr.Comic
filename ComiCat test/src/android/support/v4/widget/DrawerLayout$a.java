// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import al;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import ap;
import bh;
import bz;
import java.util.List;

// Referenced classes of package android.support.v4.widget:
//            DrawerLayout

final class a extends al
{

    final DrawerLayout a;
    private final Rect b = new Rect();

    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
        if (accessibilityevent.getEventType() == 32)
        {
            accessibilityevent = accessibilityevent.getText();
            view = DrawerLayout.a(a);
            if (view != null)
            {
                int i = a.c(view);
                view = a;
                i = ap.a(i, bh.h(view));
                if (i == 3)
                {
                    view = ((DrawerLayout) (view)).f;
                } else
                if (i == 5)
                {
                    view = ((DrawerLayout) (view)).g;
                } else
                {
                    view = null;
                }
                if (view != null)
                {
                    accessibilityevent.add(view);
                }
            }
            return true;
        } else
        {
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityevent);
        }
    }

    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(view, accessibilityevent);
        accessibilityevent.setClassName(android/support/v4/widget/DrawerLayout.getName());
    }

    public final void onInitializeAccessibilityNodeInfo(View view, bz bz1)
    {
        if (DrawerLayout.e())
        {
            super.onInitializeAccessibilityNodeInfo(view, bz1);
        } else
        {
            bz bz2 = bz.a(bz1);
            super.onInitializeAccessibilityNodeInfo(view, bz2);
            bz1.a(view);
            Object obj = bh.i(view);
            if (obj instanceof View)
            {
                bz1.c((View)obj);
            }
            obj = b;
            bz2.a(((Rect) (obj)));
            bz1.b(((Rect) (obj)));
            bz2.c(((Rect) (obj)));
            bz1.d(((Rect) (obj)));
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
            bz2.m();
            view = (ViewGroup)view;
            int j = view.getChildCount();
            int i = 0;
            while (i < j) 
            {
                View view1 = view.getChildAt(i);
                if (DrawerLayout.f(view1))
                {
                    bz1.b(view1);
                }
                i++;
            }
        }
        bz1.b(android/support/v4/widget/DrawerLayout.getName());
        bz1.a(false);
        bz1.b(false);
    }

    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        if (DrawerLayout.e() || DrawerLayout.f(view))
        {
            return super.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
        } else
        {
            return false;
        }
    }

    vent(DrawerLayout drawerlayout)
    {
        a = drawerlayout;
        super();
    }
}
