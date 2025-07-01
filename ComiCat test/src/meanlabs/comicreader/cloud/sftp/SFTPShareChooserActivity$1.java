// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.sftp;

import ahf;
import android.view.View;

// Referenced classes of package meanlabs.comicreader.cloud.sftp:
//            SFTPShareChooserActivity

final class a
    implements android.view.eChooserActivity._cls1
{

    final SFTPShareChooserActivity a;

    public final void onClick(View view)
    {
        view = ahf.a(a, 0x7f0c006c);
        String s = ahf.a(a, 0x7f0c006e);
        String s1 = ahf.a(a, 0x7f0c0070);
        String s2 = ahf.a(a, 0x7f0c0072);
        SFTPShareChooserActivity.a(a, view, s, s1, s2);
    }

    (SFTPShareChooserActivity sftpsharechooseractivity)
    {
        a = sftpsharechooseractivity;
        super();
    }
}
