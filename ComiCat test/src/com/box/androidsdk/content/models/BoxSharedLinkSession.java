// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.content.Context;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxSession

public class BoxSharedLinkSession extends BoxSession
{

    String mPassword;
    String mSharedLink;

    public BoxSharedLinkSession(Context context)
    {
        super(context);
    }

    public BoxSharedLinkSession(Context context, String s)
    {
        super(context, s);
    }

    public BoxSharedLinkSession(Context context, String s, String s1, String s2, String s3)
    {
        super(context, s, s1, s2, s3);
    }

    public BoxSharedLinkSession(BoxSession boxsession)
    {
        super(boxsession);
        if (boxsession instanceof BoxSharedLinkSession)
        {
            boxsession = (BoxSharedLinkSession)boxsession;
            setSharedLink(boxsession.getSharedLink());
            setPassword(boxsession.getPassword());
        }
    }

    public String getPassword()
    {
        return mPassword;
    }

    public String getSharedLink()
    {
        return mSharedLink;
    }

    public BoxSharedLinkSession setPassword(String s)
    {
        mPassword = s;
        return this;
    }

    public BoxSharedLinkSession setSharedLink(String s)
    {
        mSharedLink = s;
        return this;
    }
}
