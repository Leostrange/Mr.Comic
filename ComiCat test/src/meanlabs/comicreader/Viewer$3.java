// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import meanlabs.comicreader.ui.TwoDScrollView;

// Referenced classes of package meanlabs.comicreader:
//            Viewer

final class a
    implements Runnable
{

    final int a;
    final Viewer b;

    public final void run()
    {
        Viewer.h(b).scrollBy(a - Viewer.h(b).getWidth(), 0);
    }

    rollView(Viewer viewer, int i)
    {
        b = viewer;
        a = i;
        super();
    }
}
