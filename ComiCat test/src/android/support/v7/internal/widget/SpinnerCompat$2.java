// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.view.ViewTreeObserver;

// Referenced classes of package android.support.v7.internal.widget:
//            SpinnerCompat

final class a
    implements android.view..OnGlobalLayoutListener
{

    final SpinnerCompat a;

    public final void onGlobalLayout()
    {
        if (!SpinnerCompat.a(a).b())
        {
            SpinnerCompat.a(a).c();
        }
        ViewTreeObserver viewtreeobserver = a.getViewTreeObserver();
        if (viewtreeobserver != null)
        {
            viewtreeobserver.removeGlobalOnLayoutListener(this);
        }
    }

    r(SpinnerCompat spinnercompat)
    {
        a = spinnercompat;
        super();
    }
}
