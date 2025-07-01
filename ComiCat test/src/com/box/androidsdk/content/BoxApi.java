// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;

public class BoxApi
{

    protected String mBaseUploadUri;
    protected String mBaseUri;
    protected BoxSession mSession;

    public BoxApi(BoxSession boxsession)
    {
        mBaseUri = "https://api.box.com/2.0";
        mBaseUploadUri = "https://upload.box.com/api/2.0";
        mSession = boxsession;
    }

    protected String getBaseUploadUri()
    {
        if (mSession != null && mSession.getAuthInfo() != null && mSession.getAuthInfo().getBaseDomain() != null)
        {
            return String.format("https://upload.%s/api/2.0", new Object[] {
                mSession.getAuthInfo().getBaseDomain()
            });
        } else
        {
            return mBaseUploadUri;
        }
    }

    public String getBaseUri()
    {
        if (mSession != null && mSession.getAuthInfo() != null && mSession.getAuthInfo().getBaseDomain() != null)
        {
            return String.format("https://api.%s/2.0", new Object[] {
                mSession.getAuthInfo().getBaseDomain()
            });
        } else
        {
            return mBaseUri;
        }
    }
}
