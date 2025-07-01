// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.requests.BoxRequest;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxSession, BoxObject

static class mSession extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cfeL;
    private BoxSession mSession;

    protected volatile BoxObject onSend()
    {
        return onSend();
    }

    protected BoxSession onSend()
    {
        synchronized (mSession)
        {
            if (mSession.getUser() != null)
            {
                BoxAuthentication.getInstance().logout(mSession);
                mSession.getAuthInfo().wipeOutAuth();
                mSession.setUserId(null);
            }
        }
        return mSession;
        exception;
        boxsession;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public fo(BoxSession boxsession)
    {
        super(null, " ", null);
        mSession = boxsession;
    }
}
