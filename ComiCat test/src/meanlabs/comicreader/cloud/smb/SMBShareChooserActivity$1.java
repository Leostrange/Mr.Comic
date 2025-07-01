// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.smb;

import ahf;
import android.view.View;

// Referenced classes of package meanlabs.comicreader.cloud.smb:
//            SMBShareChooserActivity

final class a
    implements android.view.ChooserActivity._cls1
{

    final SMBShareChooserActivity a;

    public final void onClick(View view)
    {
        Object obj = ahf.a(a, 0x7f0c0076);
        view = ((View) (obj));
        if (!((String) (obj)).startsWith("smb://"))
        {
            view = (new StringBuilder("smb://")).append(((String) (obj))).toString();
        }
        obj = view;
        if (!view.endsWith("/"))
        {
            obj = (new StringBuilder()).append(view).append("/").toString();
        }
        view = ahf.a(a, 0x7f0c0077);
        String s = ahf.a(a, 0x7f0c0070);
        String s1 = ahf.a(a, 0x7f0c0072);
        SMBShareChooserActivity.a(a, ((String) (obj)), view, s, s1);
    }

    (SMBShareChooserActivity smbsharechooseractivity)
    {
        a = smbsharechooseractivity;
        super();
    }
}
