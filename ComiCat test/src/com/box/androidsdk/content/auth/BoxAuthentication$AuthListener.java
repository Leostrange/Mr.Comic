// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;


// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxAuthentication

public static interface tionInfo
{

    public abstract void onAuthCreated(tionInfo tioninfo);

    public abstract void onAuthFailure(tionInfo tioninfo, Exception exception);

    public abstract void onLoggedOut(tionInfo tioninfo, Exception exception);

    public abstract void onRefreshed(tionInfo tioninfo);
}
