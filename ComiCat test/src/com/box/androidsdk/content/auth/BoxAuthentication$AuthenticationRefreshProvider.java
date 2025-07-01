// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxAuthentication

public static interface 
{

    public abstract boolean launchAuthUi(String s, BoxSession boxsession);

    public abstract  refreshAuthenticationInfo( );
}
