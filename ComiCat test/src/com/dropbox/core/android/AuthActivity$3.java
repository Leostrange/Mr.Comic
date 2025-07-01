// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dropbox.core.android;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.util.Log;
import hw;

// Referenced classes of package com.dropbox.core.android:
//            AuthActivity

final class b
    implements Runnable
{

    final Intent a;
    final String b;
    final AuthActivity c;

    public final void run()
    {
        AuthActivity.b();
        if (hw.a(c, a) == null) goto _L2; else goto _L1
_L1:
        c.startActivity(a);
_L4:
        AuthActivity.b(c, b);
        AuthActivity.a();
        return;
_L2:
        try
        {
            AuthActivity.a(c, b);
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Log.e(AuthActivity.b(), "Could not launch intent. User may have restricted profile", activitynotfoundexception);
            c.finish();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    n(AuthActivity authactivity, Intent intent, String s)
    {
        c = authactivity;
        a = intent;
        b = s;
        super();
    }
}
