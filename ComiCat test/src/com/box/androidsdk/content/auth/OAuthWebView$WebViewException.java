// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;


// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthWebView

public static class mFailingUrl extends Exception
{

    private final String mDescription;
    private final int mErrorCode;
    private final String mFailingUrl;

    public String getDescription()
    {
        return mDescription;
    }

    public int getErrorCode()
    {
        return mErrorCode;
    }

    public String getFailingUrl()
    {
        return mFailingUrl;
    }

    public (int i, String s, String s1)
    {
        mErrorCode = i;
        mDescription = s;
        mFailingUrl = s1;
    }
}
