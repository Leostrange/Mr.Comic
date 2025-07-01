// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import acx;

// Referenced classes of package meanlabs.comicreader.cloud:
//            ActiveDownloads, DownloaderService

final class a
    implements Runnable
{

    final ActiveDownloads a;

    public final void run()
    {
        a.a.a(a.c.b());
        ActiveDownloads.b(a);
    }

    (ActiveDownloads activedownloads)
    {
        a = activedownloads;
        super();
    }
}
