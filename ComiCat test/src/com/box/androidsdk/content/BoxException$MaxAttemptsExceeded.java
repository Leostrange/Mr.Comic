// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.requests.BoxHttpResponse;

// Referenced classes of package com.box.androidsdk.content:
//            BoxException

public static class mTimesTried extends BoxException
{

    private final int mTimesTried;

    public int getTimesTried()
    {
        return mTimesTried;
    }

    public A(String s, int i)
    {
        this(s, i, null);
    }

    public <init>(String s, int i, BoxHttpResponse boxhttpresponse)
    {
        super((new StringBuilder()).append(s).append(i).toString(), boxhttpresponse);
        mTimesTried = i;
    }
}
