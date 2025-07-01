// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import afw;

// Referenced classes of package meanlabs.comicreader.cloud:
//            CloudSync

final class a
    implements ct
{

    final a a;

    public final void a(boolean flag)
    {
        if (flag)
        {
            CloudSync.a(a.a, a.a);
        }
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class meanlabs/comicreader/cloud/CloudSync$3

/* anonymous class */
    final class CloudSync._cls3
        implements Runnable
    {

        final int a;
        final CloudSync b;

        public final void run()
        {
            afw.a(b, b.getString(0x7f06007c), b.getString(0x7f06023d), 0x7f060239, 0x1040000, new CloudSync._cls3._cls1(this));
        }

            
            {
                b = cloudsync;
                a = i;
                super();
            }
    }

}
