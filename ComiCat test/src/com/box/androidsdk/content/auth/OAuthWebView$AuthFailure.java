// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;


// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthWebView

public static class mWebException
{

    public static final int TYPE_AUTHENTICATION_UNAUTHORIZED = 3;
    public static final int TYPE_GENERIC = -1;
    public static final int TYPE_URL_MISMATCH = 1;
    public static final int TYPE_USER_INTERACTION = 0;
    public static final int TYPE_WEB_ERROR = 2;
    public tion mWebException;
    public String message;
    public int type;

    public tion(int i, String s)
    {
        type = i;
        message = s;
    }

    public tion(tion tion)
    {
        this(2, null);
        mWebException = tion;
    }
}
