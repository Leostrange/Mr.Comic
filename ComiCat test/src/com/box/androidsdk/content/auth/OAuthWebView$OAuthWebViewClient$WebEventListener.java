// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;


// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthWebView

public static interface 
{

    public abstract boolean onAuthFailure( );

    public abstract void onReceivedAuthCode(String s);

    public abstract void onReceivedAuthCode(String s, String s1);
}
