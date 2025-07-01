// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.os.Handler;
import android.os.Looper;
import com.box.androidsdk.content.BoxApiUser;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxSession, BoxUser, BoxObject

static class mSession extends BoxRequest
    implements com.box.androidsdk.content.auth.t
{
    static class BoxAuthCreationTask extends BoxFutureTask
    {

        public void bringUiToFrontIfNecessary()
        {
            if ((mRequest instanceof BoxSession.BoxSessionAuthCreationRequest) && ((BoxSession.BoxSessionAuthCreationRequest)mRequest).mIsWaitingForLoginUi)
            {
                ((BoxSession.BoxSessionAuthCreationRequest)mRequest).mSession.startAuthenticationUI();
            }
        }

        public BoxAuthCreationTask(Class class1, BoxRequest boxrequest)
        {
            super(class1, boxrequest);
        }
    }


    private static final long serialVersionUID = 0x70be1f2741234cd9L;
    private CountDownLatch authLatch;
    private boolean mIsWaitingForLoginUi;
    private final BoxSession mSession;

    private void launchAuthUI()
    {
        authLatch = new CountDownLatch(1);
        mIsWaitingForLoginUi = true;
        (new Handler(Looper.getMainLooper())).post(new Runnable() {

            final BoxSession.BoxSessionAuthCreationRequest this$0;

            public void run()
            {
                if (mSession.getRefreshProvider() == null || !mSession.getRefreshProvider().launchAuthUi(mSession.getUserId(), mSession))
                {
                    mSession.startAuthenticationUI();
                }
            }

            
            {
                this$0 = BoxSession.BoxSessionAuthCreationRequest.this;
                super();
            }
        });
        try
        {
            authLatch.await();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            authLatch.countDown();
        }
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof authLatch) || !((authLatch)obj).mSession.equals(mSession))
        {
            return false;
        } else
        {
            return super.equals(obj);
        }
    }

    public int hashCode()
    {
        return mSession.hashCode() + super.hashCode();
    }

    public void onAuthCreated(com.box.androidsdk.content.auth.t t)
    {
        authLatch.countDown();
    }

    public void onAuthFailure(com.box.androidsdk.content.auth.t t, Exception exception)
    {
        authLatch.countDown();
    }

    public void onLoggedOut(com.box.androidsdk.content.auth.t t, Exception exception)
    {
    }

    public void onRefreshed(com.box.androidsdk.content.auth.t t)
    {
    }

    public volatile BoxObject onSend()
    {
        return onSend();
    }

    public BoxSession onSend()
    {
        BoxSession boxsession = mSession;
        boxsession;
        JVM INSTR monitorenter ;
        Object obj;
        if (mSession.getUser() != null)
        {
            break MISSING_BLOCK_LABEL_228;
        }
        if (mSession.getAuthInfo() == null || SdkUtils.isBlank(mSession.getAuthInfo().ccessToken()))
        {
            break MISSING_BLOCK_LABEL_166;
        }
        obj = mSession.getUser();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        obj = (BoxUser)(new BoxApiUser(mSession)).getCurrentUserInfoRequest().ession();
        mSession.setUserId(((BoxUser) (obj)).getId());
        mSession.getAuthInfo().etUser(((BoxUser) (obj)));
        BoxAuthentication.getInstance().onAuthenticated(mSession.getAuthInfo(), mSession.getApplicationContext());
        obj = mSession;
        boxsession;
        JVM INSTR monitorexit ;
        return ((BoxSession) (obj));
        obj;
        BoxLogUtils.e("BoxSession", "Unable to repair user", ((Throwable) (obj)));
        if (!(obj instanceof com.box.androidsdk.content.equest.mSession) || !((com.box.androidsdk.content.equest.mSession)obj).mSession())
        {
            break MISSING_BLOCK_LABEL_191;
        }
        BoxSession.access$100(mSession.getApplicationContext(), ion.getApplicationContext);
_L1:
        BoxAuthentication.getInstance().addListener(this);
        launchAuthUI();
        obj = mSession;
        boxsession;
        JVM INSTR monitorexit ;
        return ((BoxSession) (obj));
        Object obj1;
        obj1;
        boxsession;
        JVM INSTR monitorexit ;
        throw obj1;
label0:
        {
            if (((BoxException) (obj1)).getErrorType() != com.box.androidsdk.content.EQUIRED)
            {
                break label0;
            }
            BoxSession.access$100(mSession.getApplicationContext(), ion.getApplicationContext);
        }
          goto _L1
        mSession.onAuthFailure(null, ((Exception) (obj1)));
        throw obj1;
        obj1 = BoxAuthentication.getInstance().getAuthInfo(mSession.getUserId(), mSession.getApplicationContext());
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_497;
        }
        com.box.androidsdk.content.auth.loneInfo(mSession.mAuthInfo, ((com.box.androidsdk.content.auth.t.mSession) (obj1)));
        if (!SdkUtils.isBlank(mSession.getAuthInfo().ccessToken()) || !SdkUtils.isBlank(mSession.getAuthInfo().efreshToken())) goto _L3; else goto _L2
_L2:
        BoxAuthentication.getInstance().addListener(this);
        launchAuthUI();
_L4:
        obj1 = mSession;
        boxsession;
        JVM INSTR monitorexit ;
        return ((BoxSession) (obj1));
_L3:
        boolean flag;
        if (((com.box.androidsdk.content.auth.t.mSession) (obj1)).etUser() == null)
        {
            break MISSING_BLOCK_LABEL_338;
        }
        flag = SdkUtils.isBlank(((com.box.androidsdk.content.auth.etUser) (obj1)).etUser().getId());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_443;
        }
        obj1 = (BoxUser)(new BoxApiUser(mSession)).getCurrentUserInfoRequest().ession();
        mSession.setUserId(((BoxUser) (obj1)).getId());
        mSession.getAuthInfo().etUser(((BoxUser) (obj1)));
        mSession.onAuthCreated(mSession.getAuthInfo());
        obj1 = mSession;
        boxsession;
        JVM INSTR monitorexit ;
        return ((BoxSession) (obj1));
        obj1;
        BoxLogUtils.e("BoxSession", "Unable to repair user", ((Throwable) (obj1)));
        if (!(obj1 instanceof com.box.androidsdk.content.equest.mSession) || !((com.box.androidsdk.content.equest.mSession)obj1).mSession())
        {
            break MISSING_BLOCK_LABEL_460;
        }
        BoxSession.access$100(mSession.getApplicationContext(), ion.getApplicationContext);
_L5:
        mSession.onAuthCreated(mSession.getAuthInfo());
          goto _L4
label1:
        {
            if (((BoxException) (obj1)).getErrorType() != com.box.androidsdk.content.EQUIRED)
            {
                break label1;
            }
            BoxSession.access$100(mSession.getApplicationContext(), ion.getApplicationContext);
        }
          goto _L5
        mSession.onAuthFailure(null, ((Exception) (obj1)));
        throw obj1;
          goto _L4
        mSession.mAuthInfo.etUser(null);
        launchAuthUI();
          goto _L4
    }

    public BoxFutureTask toTask()
    {
        return new BoxAuthCreationTask(com/box/androidsdk/content/models/BoxSession, this);
    }



    public _cls1.this._cls0(BoxSession boxsession, boolean flag)
    {
        super(null, " ", null);
        mSession = boxsession;
    }
}
