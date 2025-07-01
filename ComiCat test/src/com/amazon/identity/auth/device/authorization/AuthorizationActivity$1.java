// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.authorization;

import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import fq;
import fw;
import gz;

// Referenced classes of package com.amazon.identity.auth.device.authorization:
//            AuthorizationActivity

final class a
    implements fw
{

    final fq a;
    final AuthorizationActivity b;

    public final void a(Bundle bundle)
    {
        gz.d(AuthorizationActivity.a(), "Code for Token Exchange success");
        if (a.c != null)
        {
            a.c.a(bundle);
        }
    }

    public final void a(AuthError autherror)
    {
        gz.d(AuthorizationActivity.a(), (new StringBuilder("Code for Token Exchange Error. ")).append(autherror.getMessage()).toString());
        if (a.c != null)
        {
            a.c.a(autherror);
        }
    }

    public final void b(Bundle bundle)
    {
        gz.d(AuthorizationActivity.a(), "Code for Token Exchange Cancel");
        if (a.c != null)
        {
            a.c.b(bundle);
        }
    }

    (AuthorizationActivity authorizationactivity, fq fq1)
    {
        b = authorizationactivity;
        a = fq1;
        super();
    }
}
