// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import android.content.Context;
import android.content.Intent;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.auth.BlockedIPErrorActivity;
import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import java.net.HttpURLConnection;
import java.util.concurrent.ExecutionException;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxHttpResponse, BoxResponse

public static class mRequest
{

    private static final int DEFAULT_AUTH_REFRESH_RETRY = 4;
    protected static final int DEFAULT_NUM_RETRIES = 1;
    protected static final int DEFAULT_RATE_LIMIT_WAIT = 20;
    public static final String OAUTH_ERROR_HEADER = "error";
    public static final String OAUTH_INVALID_TOKEN = "invalid_token";
    public static final String WWW_AUTHENTICATE = "WWW-Authenticate";
    protected int mNumRateLimitRetries;
    private int mRefreshRetries;
    protected BoxRequest mRequest;

    private boolean authFailed(BoxHttpResponse boxhttpresponse)
    {
        while (boxhttpresponse == null || boxhttpresponse.getResponseCode() != 401) 
        {
            return false;
        }
        return true;
    }

    protected static int getRetryAfterFromResponse(BoxHttpResponse boxhttpresponse, int i)
    {
        boxhttpresponse = boxhttpresponse.getHttpURLConnection().getHeaderField("Retry-After");
        if (SdkUtils.isBlank(boxhttpresponse)) goto _L2; else goto _L1
_L1:
        int j = Integer.parseInt(boxhttpresponse);
        i = j;
_L3:
        if (i <= 0)
        {
            i = 1;
        }
_L2:
        return i * 1000;
        boxhttpresponse;
          goto _L3
    }

    private boolean isInvalidTokenError(String s)
    {
        s = s.split("=");
        return s.length == 2 && s[0] != null && s[1] != null && "error".equalsIgnoreCase(s[0].trim()) && "invalid_token".equalsIgnoreCase(s[1].replace("\"", "").trim());
    }

    private boolean oauthExpired(BoxHttpResponse boxhttpresponse)
    {
_L2:
        return false;
        if (boxhttpresponse == null || 401 != boxhttpresponse.getResponseCode()) goto _L2; else goto _L1
_L1:
        boxhttpresponse = boxhttpresponse.mConnection.getHeaderField("WWW-Authenticate");
        if (!SdkUtils.isEmptyString(boxhttpresponse))
        {
            boxhttpresponse = boxhttpresponse.split(",");
            int j = boxhttpresponse.length;
            int i = 0;
            while (i < j) 
            {
                if (isInvalidTokenError(boxhttpresponse[i]))
                {
                    return true;
                }
                i++;
            }
        }
        if (true) goto _L2; else goto _L3
_L3:
    }

    protected void disconnectForInterrupt(BoxHttpResponse boxhttpresponse)
    {
        try
        {
            boxhttpresponse.getHttpURLConnection().disconnect();
        }
        // Misplaced declaration of an exception variable
        catch (BoxHttpResponse boxhttpresponse)
        {
            BoxLogUtils.e("Interrupt disconnect", boxhttpresponse);
        }
        throw new BoxException("Thread interrupted request cancelled ", new InterruptedException());
    }

    public boolean isResponseSuccess(BoxHttpResponse boxhttpresponse)
    {
        int i = boxhttpresponse.getResponseCode();
        return i >= 200 && i < 300 || i == 429;
    }

    public boolean onException(BoxRequest boxrequest, BoxHttpResponse boxhttpresponse, BoxException boxexception)
    {
        BoxSession boxsession = boxrequest.getSession();
        if (!oauthExpired(boxhttpresponse)) goto _L2; else goto _L1
_L1:
        boxrequest = (BoxResponse)boxsession.refresh().get();
        if (boxrequest.isSuccess())
        {
            return true;
        }
        if (boxrequest.getException() == null) goto _L4; else goto _L3
_L3:
        if (boxrequest.getException() instanceof com.box.androidsdk.content.tion)
        {
            throw (com.box.androidsdk.content.tion)boxrequest.getException();
        }
          goto _L5
        boxrequest;
        BoxLogUtils.e("oauthRefresh", "Interrupted Exception", boxrequest);
_L4:
        return false;
_L5:
        return false;
        boxrequest;
        BoxLogUtils.e("oauthRefresh", "Interrupted Exception", boxrequest);
        continue; /* Loop/switch isn't completed */
_L2:
        if (!authFailed(boxhttpresponse))
        {
            break; /* Loop/switch isn't completed */
        }
        com.box.androidsdk.content.tHandler thandler = boxexception.getErrorType();
        if (boxsession.suppressesAuthErrorUIAfterLogin())
        {
            continue; /* Loop/switch isn't completed */
        }
        Context context = boxsession.getApplicationContext();
        if (thandler == com.box.androidsdk.content.CKED || thandler == com.box.androidsdk.content.ON_BLOCKED)
        {
            boxrequest = new Intent(boxsession.getApplicationContext(), com/box/androidsdk/content/auth/BlockedIPErrorActivity);
            boxrequest.addFlags(0x10000000);
            context.startActivity(boxrequest);
            return false;
        }
        if (thandler == com.box.androidsdk.content.OF_SERVICE_REQUIRED)
        {
            SdkUtils.toastSafely(context, rvice, 1);
        }
        if (mRefreshRetries <= 4)
        {
            break MISSING_BLOCK_LABEL_275;
        }
        boxhttpresponse = (new StringBuilder(" Exceeded max refresh retries for ")).append(boxrequest.getClass().getName()).append(" response code").append(boxexception.getResponseCode()).append(" response ").append(boxhttpresponse).toString();
        boxrequest = boxhttpresponse;
        if (boxexception.getAsBoxError() != null)
        {
            boxrequest = (new StringBuilder()).append(boxhttpresponse).append(boxexception.getAsBoxError().toJson()).toString();
        }
        BoxLogUtils.nonFatalE("authFailed", boxrequest, boxexception);
        return false;
        boxrequest = (BoxResponse)boxsession.refresh().get();
        if (!boxrequest.isSuccess())
        {
            break MISSING_BLOCK_LABEL_306;
        }
        mRefreshRetries = mRefreshRetries + 1;
        return true;
        try
        {
            if (boxrequest.getException() == null)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (boxrequest.getException() instanceof com.box.androidsdk.content.tion)
            {
                throw (com.box.androidsdk.content.tion)boxrequest.getException();
            }
            break MISSING_BLOCK_LABEL_343;
        }
        // Misplaced declaration of an exception variable
        catch (BoxRequest boxrequest)
        {
            BoxLogUtils.e("oauthRefresh", "Interrupted Exception", boxrequest);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (BoxRequest boxrequest)
        {
            BoxLogUtils.e("oauthRefresh", "Interrupted Exception", boxrequest);
        }
        continue; /* Loop/switch isn't completed */
        return false;
        if (true) goto _L4; else goto _L6
_L6:
        if (boxhttpresponse != null && boxhttpresponse.getResponseCode() == 403)
        {
            boxrequest = boxexception.getErrorType();
            if (boxrequest == com.box.androidsdk.content.CKED || boxrequest == com.box.androidsdk.content.ON_BLOCKED)
            {
                boxrequest = boxsession.getApplicationContext();
                boxhttpresponse = new Intent(boxsession.getApplicationContext(), com/box/androidsdk/content/auth/BlockedIPErrorActivity);
                boxhttpresponse.addFlags(0x10000000);
                boxrequest.startActivity(boxhttpresponse);
                return false;
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    public BoxObject onResponse(Class class1, BoxHttpResponse boxhttpresponse)
    {
        if (boxhttpresponse.getResponseCode() == 429)
        {
            class1 = retryRateLimited(boxhttpresponse);
        } else
        {
            if (Thread.currentThread().isInterrupted())
            {
                disconnectForInterrupt(boxhttpresponse);
            }
            String s = boxhttpresponse.getContentType();
            BoxObject boxobject = (BoxObject)class1.newInstance();
            class1 = boxobject;
            if (boxobject instanceof BoxJsonObject)
            {
                class1 = boxobject;
                if (s.contains(e.ing()))
                {
                    class1 = boxhttpresponse.getStringBody();
                    ((BoxJsonObject)boxobject).createFromJson(class1);
                    return boxobject;
                }
            }
        }
        return class1;
    }

    protected BoxObject retryRateLimited(BoxHttpResponse boxhttpresponse)
    {
        if (mNumRateLimitRetries <= 0)
        {
            mNumRateLimitRetries = mNumRateLimitRetries + 1;
            long l = getRetryAfterFromResponse(boxhttpresponse, (int)(10D * Math.random()) + 20);
            try
            {
                Thread.sleep(l);
            }
            // Misplaced declaration of an exception variable
            catch (BoxHttpResponse boxhttpresponse)
            {
                throw new BoxException(boxhttpresponse.getMessage(), boxhttpresponse);
            }
            return mRequest.send();
        } else
        {
            throw new com.box.androidsdk.content.sExceeded("Max attempts exceeded", mNumRateLimitRetries, boxhttpresponse);
        }
    }

    public (BoxRequest boxrequest)
    {
        mNumRateLimitRetries = 0;
        mRefreshRetries = 0;
        mRequest = boxrequest;
    }
}
