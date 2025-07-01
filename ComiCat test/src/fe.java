// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public final class fe extends al
{

    final RecyclerView a;
    public final al b = new al() {

        final fe a;

        public final void onInitializeAccessibilityNodeInfo(View view, bz bz1)
        {
            super.onInitializeAccessibilityNodeInfo(view, bz1);
            if (!a.a() && a.a.getLayoutManager() != null)
            {
                a.a.getLayoutManager().a(view, bz1);
            }
        }

        public final boolean performAccessibilityAction(View view, int i, Bundle bundle)
        {
            boolean flag1 = false;
            boolean flag;
            if (super.performAccessibilityAction(view, i, bundle))
            {
                flag = true;
            } else
            {
                flag = flag1;
                if (!a.a())
                {
                    flag = flag1;
                    if (a.a.getLayoutManager() != null)
                    {
                        view = a.a.getLayoutManager();
                        bundle = ((android.support.v7.widget.RecyclerView.h) (view)).r.a;
                        view = ((android.support.v7.widget.RecyclerView.h) (view)).r.n;
                        return false;
                    }
                }
            }
            return flag;
        }

            
            {
                a = fe.this;
                super();
            }
    };

    public fe(RecyclerView recyclerview)
    {
        a = recyclerview;
    }

    final boolean a()
    {
        RecyclerView recyclerview = a;
        return !recyclerview.f || recyclerview.g || recyclerview.b.d();
    }

    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(view, accessibilityevent);
        accessibilityevent.setClassName(android/support/v7/widget/RecyclerView.getName());
        if ((view instanceof RecyclerView) && !a())
        {
            view = (RecyclerView)view;
            if (view.getLayoutManager() != null)
            {
                view.getLayoutManager().a(accessibilityevent);
            }
        }
    }

    public final void onInitializeAccessibilityNodeInfo(View view, bz bz1)
    {
        super.onInitializeAccessibilityNodeInfo(view, bz1);
        bz1.b(android/support/v7/widget/RecyclerView.getName());
        if (!a() && a.getLayoutManager() != null)
        {
            view = a.getLayoutManager();
            android.support.v7.widget.RecyclerView.l l = ((android.support.v7.widget.RecyclerView.h) (view)).r.a;
            android.support.v7.widget.RecyclerView.p p = ((android.support.v7.widget.RecyclerView.h) (view)).r.n;
            if (bh.b(((android.support.v7.widget.RecyclerView.h) (view)).r, -1) || bh.a(((android.support.v7.widget.RecyclerView.h) (view)).r, -1))
            {
                bz1.a(8192);
                bz1.i(true);
            }
            if (bh.b(((android.support.v7.widget.RecyclerView.h) (view)).r, 1) || bh.a(((android.support.v7.widget.RecyclerView.h) (view)).r, 1))
            {
                bz1.a(4096);
                bz1.i(true);
            }
            int i = view.a(l, p);
            int j = view.b(l, p);
            view = new bz.i(bz.n().a(i, j));
            bz.a.a(bz1.b, ((bz.i)view).a);
        }
    }

    public final boolean performAccessibilityAction(View view, int i, Bundle bundle)
    {
        boolean flag1 = false;
        if (!super.performAccessibilityAction(view, i, bundle)) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (a()) goto _L4; else goto _L3
_L3:
        flag = flag1;
        if (a.getLayoutManager() == null) goto _L4; else goto _L5
_L5:
        view = a.getLayoutManager();
        bundle = ((android.support.v7.widget.RecyclerView.h) (view)).r.a;
        bundle = ((android.support.v7.widget.RecyclerView.h) (view)).r.n;
        flag = flag1;
        if (((android.support.v7.widget.RecyclerView.h) (view)).r == null) goto _L4; else goto _L6
_L6:
        i;
        JVM INSTR lookupswitch 2: default 108
    //                   4096: 205
    //                   8192: 138;
           goto _L7 _L8 _L9
_L7:
        int j;
        i = 0;
        j = 0;
_L13:
        if (j != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (i == 0) goto _L4; else goto _L10
_L10:
        ((android.support.v7.widget.RecyclerView.h) (view)).r.scrollBy(i, j);
        return true;
_L9:
        int k;
        int l;
        int i1;
        if (bh.b(((android.support.v7.widget.RecyclerView.h) (view)).r, -1))
        {
            i = -(view.m() - view.o() - view.q());
        } else
        {
            i = 0;
        }
        j = i;
        if (!bh.a(((android.support.v7.widget.RecyclerView.h) (view)).r, -1)) goto _L12; else goto _L11
_L11:
        k = -(view.l() - view.n() - view.p());
        j = i;
        i = k;
          goto _L13
_L8:
        if (bh.b(((android.support.v7.widget.RecyclerView.h) (view)).r, 1))
        {
            i = view.m() - view.o() - view.q();
        } else
        {
            i = 0;
        }
        j = i;
        if (!bh.a(((android.support.v7.widget.RecyclerView.h) (view)).r, 1)) goto _L12; else goto _L14
_L14:
        k = view.l();
        l = view.n();
        i1 = view.p();
        j = i;
        i = k - l - i1;
          goto _L13
_L12:
        i = 0;
          goto _L13
    }
}
