// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.box_content;

import act;
import android.widget.Toast;

// Referenced classes of package meanlabs.comicreader.cloud.box_content:
//            Authentication

final class a
    implements Runnable
{

    final Authentication a;

    public final void run()
    {
        Toast.makeText(a.getApplicationContext(), a.getString(0x7f06024a, new Object[] {
            a.getString(0x7f060274)
        }), 1).show();
        act.b().a(-1, false);
    }

    (Authentication authentication)
    {
        a = authentication;
        super();
    }
}
