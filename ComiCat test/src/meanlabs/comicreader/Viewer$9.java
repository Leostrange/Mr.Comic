// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import ahf;
import android.app.WallpaperManager;

// Referenced classes of package meanlabs.comicreader:
//            Viewer, ComicReaderApp

final class a
    implements Runnable
{

    final Viewer a;

    public final void run()
    {
        try
        {
            WallpaperManager.getInstance(a.getApplicationContext()).setBitmap(Viewer.g(a));
            ahf.a(ComicReaderApp.a(), 0x7f060263);
            return;
        }
        catch (Exception exception)
        {
            ahf.a(ComicReaderApp.a(), 0x7f0600e1);
        }
    }

    erApp(Viewer viewer)
    {
        a = viewer;
        super();
    }
}
