// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.devsmart.android.ui;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListAdapter;

// Referenced classes of package com.devsmart.android.ui:
//            HorizontalListView

final class istener extends android.view.eOnGestureListener
{

    final HorizontalListView a;

    private static boolean a(MotionEvent motionevent, View view)
    {
        Rect rect = new Rect();
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        int i = ai[0];
        int j = view.getWidth();
        int k = ai[1];
        rect.set(i, k, j + i, view.getHeight() + k);
        return rect.contains((int)motionevent.getRawX(), (int)motionevent.getRawY());
    }

    public final boolean onDown(MotionEvent motionevent)
    {
        return a.a();
    }

    public final boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return a.a(f);
    }

    public final void onLongPress(MotionEvent motionevent)
    {
        int j = a.getChildCount();
        int i = 0;
        do
        {
label0:
            {
                if (i < j)
                {
                    View view = a.getChildAt(i);
                    if (!a(motionevent, view))
                    {
                        break label0;
                    }
                    if (HorizontalListView.f(a) != null)
                    {
                        HorizontalListView.f(a).onItemLongClick(a, view, HorizontalListView.d(a) + 1 + i, a.b.getItemId(i + (HorizontalListView.d(a) + 1)));
                    }
                }
                return;
            }
            i++;
        } while (true);
    }

    public final boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        synchronized (a)
        {
            motionevent1 = a;
            motionevent1.d = ((HorizontalListView) (motionevent1)).d + (int)f;
        }
        a.requestLayout();
        return true;
        motionevent1;
        motionevent;
        JVM INSTR monitorexit ;
        throw motionevent1;
    }

    public final boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        int i = 0;
        do
        {
label0:
            {
                if (i < a.getChildCount())
                {
                    View view = a.getChildAt(i);
                    if (!a(motionevent, view))
                    {
                        break label0;
                    }
                    if (HorizontalListView.c(a) != null)
                    {
                        HorizontalListView.c(a).onItemClick(a, view, HorizontalListView.d(a) + 1 + i, a.b.getItemId(HorizontalListView.d(a) + 1 + i));
                    }
                    if (HorizontalListView.e(a) != null)
                    {
                        HorizontalListView.e(a).onItemSelected(a, view, HorizontalListView.d(a) + 1 + i, a.b.getItemId(HorizontalListView.d(a) + 1 + i));
                    }
                }
                return true;
            }
            i++;
        } while (true);
    }

    ener(HorizontalListView horizontallistview)
    {
        a = horizontallistview;
        super();
    }
}
