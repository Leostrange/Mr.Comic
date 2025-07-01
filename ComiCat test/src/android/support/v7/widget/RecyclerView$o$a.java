// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.util.Log;
import android.view.animation.Interpolator;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static final class 
{

    int a;
    private int b;
    private int c;
    private int d;
    private Interpolator e;
    private boolean f;
    private int g;

    static void a( , RecyclerView recyclerview)
    {
        if (.a >= 0)
        {
            int i = .a;
            .a = -1;
            RecyclerView.c(recyclerview, i);
            .f = false;
            return;
        }
        if (.f)
        {
            if (.e != null && .d <= 0)
            {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            if (.d <= 0)
            {
                throw new IllegalStateException("Scroll duration must be a positive number");
            }
            if (.e == null)
            {
                if (.d == 0x80000000)
                {
                    RecyclerView.q(recyclerview).d(.b, .c);
                } else
                {
                    RecyclerView.q(recyclerview).c(.b, .c, .d);
                }
            } else
            {
                RecyclerView.q(recyclerview).d(.b, .c, .d, .e);
            }
            .g = .g + 1;
            if (.g > 10)
            {
                Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
            }
            .f = false;
            return;
        } else
        {
            .g = 0;
            return;
        }
    }
}
