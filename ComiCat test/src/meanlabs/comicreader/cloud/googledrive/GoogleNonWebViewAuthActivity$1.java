// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.googledrive;

import adx;
import android.content.Intent;

// Referenced classes of package meanlabs.comicreader.cloud.googledrive:
//            GoogleNonWebViewAuthActivity

final class a
    implements Runnable
{

    final String a;
    final GoogleNonWebViewAuthActivity b;

    public final void run()
    {
        int i = -1;
        Intent intent = b.getIntent();
        if (intent != null)
        {
            i = intent.getIntExtra("serviecid", -1);
            (new StringBuilder("Found old intent with service id: ")).append(String.valueOf(i));
        }
        adx.a(b, a, i);
    }

    (GoogleNonWebViewAuthActivity googlenonwebviewauthactivity, String s)
    {
        b = googlenonwebviewauthactivity;
        a = s;
        super();
    }
}
