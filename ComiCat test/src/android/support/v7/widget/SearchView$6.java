// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import ci;
import fg;

// Referenced classes of package android.support.v7.widget:
//            SearchView

final class a
    implements Runnable
{

    final SearchView a;

    public final void run()
    {
        if (SearchView.b(a) != null && (SearchView.b(a) instanceof fg))
        {
            SearchView.b(a).a(null);
        }
    }

    (SearchView searchview)
    {
        a = searchview;
        super();
    }
}
