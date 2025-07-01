// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.WindowInsets;

final class bk
{

    // Unreferenced inner class bk$1

/* anonymous class */
    static final class _cls1
        implements android.view.View.OnApplyWindowInsetsListener
    {

        final bc a;

        public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowinsets)
        {
            windowinsets = new bx(windowinsets);
            return ((bx)a.onApplyWindowInsets(view, windowinsets)).a;
        }

            
            {
                a = bc1;
                super();
            }
    }

}
