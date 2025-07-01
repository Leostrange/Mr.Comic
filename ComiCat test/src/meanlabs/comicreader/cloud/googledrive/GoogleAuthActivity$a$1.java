// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.googledrive;

import ads;
import android.content.Intent;

// Referenced classes of package meanlabs.comicreader.cloud.googledrive:
//            GoogleAuthActivity

final class a
    implements Runnable
{

    final String a;
    final a b;

    public final void run()
    {
        int i = b.b.getIntent().getIntExtra("serviecid", -1);
        ads.a(b.b, a, i);
    }

    ( , String s)
    {
        b = ;
        a = s;
        super();
    }
}
