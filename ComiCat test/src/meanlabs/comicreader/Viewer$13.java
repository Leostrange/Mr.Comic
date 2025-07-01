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

    final Viewer a;

    public final void run()
    {
        Viewer.h(a).scrollTo(0, 0);
        Viewer.h(a).a(33, true);
        Viewer.h(a).a(33, false);
    }

    ollView(Viewer viewer)
    {
        a = viewer;
        super();
    }
}
