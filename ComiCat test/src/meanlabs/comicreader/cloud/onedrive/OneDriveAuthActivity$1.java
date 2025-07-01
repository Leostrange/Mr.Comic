// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.onedrive;

import org.json.JSONObject;
import ta;
import te;
import tf;
import tg;

// Referenced classes of package meanlabs.comicreader.cloud.onedrive:
//            OneDriveAuthActivity

final class a
    implements tg
{

    final ta a;
    final OneDriveAuthActivity b;

    public final void a(te te1)
    {
        te1 = te1.a.getString("first_name");
        if (te1 == null)
        {
            te1 = "";
        }
_L2:
        OneDriveAuthActivity.a(b, a, te1);
        return;
        Exception exception;
        exception;
        te1 = "";
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void a(tf tf1, te te1)
    {
        tf1.printStackTrace();
        OneDriveAuthActivity.a(b, a, "");
    }

    (OneDriveAuthActivity onedriveauthactivity, ta ta)
    {
        b = onedriveauthactivity;
        a = ta;
        super();
    }
}
