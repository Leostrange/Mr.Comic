// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import android.os.Handler;

// Referenced classes of package meanlabs.comicreader:
//            Viewer

final class b
    implements Runnable
{

    final int a;
    final Handler b;
    final Viewer c;

    public final void run()
    {
        boolean flag;
        if (a == 1)
        {
            flag = Viewer.c(c);
        } else
        {
            flag = Viewer.d(c);
        }
        if (flag && Viewer.e(c))
        {
            b.postDelayed(this, 50L);
            return;
        } else
        {
            b.removeMessages(0, this);
            return;
        }
    }

    (Viewer viewer, int i, Handler handler)
    {
        c = viewer;
        a = i;
        b = handler;
        super();
    }
}
