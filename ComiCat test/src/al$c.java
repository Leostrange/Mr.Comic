// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

static final class > extends >
{

    public final ca a(Object obj, View view)
    {
        obj = ((android.view.AccessibilityDelegate)obj).getAccessibilityNodeProvider(view);
        if (obj != null)
        {
            return new ca(obj);
        } else
        {
            return null;
        }
    }

    public final Object a(al al1)
    {
        return new <init>(new an.a(al1) {

            final al a;
            final al.c b;

            public final Object a(View view)
            {
                view = a.getAccessibilityNodeProvider(view);
                if (view != null)
                {
                    return ((ca) (view)).a;
                } else
                {
                    return null;
                }
            }

            public final void a(View view, int i)
            {
                a.sendAccessibilityEvent(view, i);
            }

            public final void a(View view, Object obj)
            {
                a.onInitializeAccessibilityNodeInfo(view, new bz(obj));
            }

            public final boolean a(View view, int i, Bundle bundle)
            {
                return a.performAccessibilityAction(view, i, bundle);
            }

            public final boolean a(View view, AccessibilityEvent accessibilityevent)
            {
                return a.dispatchPopulateAccessibilityEvent(view, accessibilityevent);
            }

            public final boolean a(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
            {
                return a.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
            }

            public final void b(View view, AccessibilityEvent accessibilityevent)
            {
                a.onInitializeAccessibilityEvent(view, accessibilityevent);
            }

            public final void c(View view, AccessibilityEvent accessibilityevent)
            {
                a.onPopulateAccessibilityEvent(view, accessibilityevent);
            }

            public final void d(View view, AccessibilityEvent accessibilityevent)
            {
                a.sendAccessibilityEventUnchecked(view, accessibilityevent);
            }

            
            {
                b = al.c.this;
                a = al1;
                super();
            }
        });
    }

    public final boolean a(Object obj, View view, int i, Bundle bundle)
    {
        return ((android.view.AccessibilityDelegate)obj).performAccessibilityAction(view, i, bundle);
    }

    >()
    {
    }
}
