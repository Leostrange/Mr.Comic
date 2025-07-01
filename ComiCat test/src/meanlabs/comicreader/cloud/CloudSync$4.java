// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;


// Referenced classes of package meanlabs.comicreader.cloud:
//            CloudSync

final class a
    implements Runnable
{

    final CloudSync a;

    public final void run()
    {
        a.a.a();
        a.a.notifyDataSetChanged();
    }

    (CloudSync cloudsync)
    {
        a = cloudsync;
        super();
    }
}
