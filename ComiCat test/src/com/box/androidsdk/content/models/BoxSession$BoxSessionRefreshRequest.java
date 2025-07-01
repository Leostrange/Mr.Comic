// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxLogUtils;
import java.util.concurrent.FutureTask;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxSession, BoxObject

static class mSession extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234d03L;
    private BoxSession mSession;

    public volatile BoxObject onSend()
    {
        return onSend();
    }

    public BoxSession onSend()
    {
        try
        {
            BoxAuthentication.getInstance().refresh(mSession).get();
        }
        catch (Exception exception1)
        {
            BoxLogUtils.e("BoxSession", "Unable to repair user", exception1);
            Exception exception;
            if (exception1.getCause() instanceof BoxException)
            {
                exception = (Exception)exception1.getCause();
            } else
            {
                exception = exception1;
            }
            if (exception instanceof BoxException)
            {
                if (BoxSession.access$000(mSession))
                {
                    mSession.onAuthFailure(null, exception);
                } else
                {
                    if ((exception instanceof com.box.androidsdk.content.tionInfo) && ((com.box.androidsdk.content.tionInfo)exception).atal())
                    {
                        BoxSession.access$100(mSession.getApplicationContext(), xSession.getApplicationContext);
                        mSession.startAuthenticationUI();
                        mSession.onAuthFailure(mSession.getAuthInfo(), exception);
                        throw (BoxException)exception;
                    }
                    if (((BoxException)exception1).getErrorType() == com.box.androidsdk.content.ICE_REQUIRED)
                    {
                        BoxSession.access$100(mSession.getApplicationContext(), xSession.getApplicationContext);
                        mSession.startAuthenticationUI();
                        mSession.onAuthFailure(mSession.getAuthInfo(), exception);
                        BoxLogUtils.e("BoxSession", "TOS refresh exception ", exception);
                        throw (BoxException)exception;
                    } else
                    {
                        mSession.onAuthFailure(null, exception);
                        throw (BoxException)exception;
                    }
                }
            } else
            {
                throw new BoxException("BoxSessionRefreshRequest failed", exception);
            }
        }
        com.box.androidsdk.content.auth.nfo.cloneInfo(mSession.mAuthInfo, BoxAuthentication.getInstance().getAuthInfo(mSession.getUserId(), mSession.getApplicationContext()));
        return mSession;
    }

    public o(BoxSession boxsession)
    {
        super(null, " ", null);
        mSession = boxsession;
    }
}
