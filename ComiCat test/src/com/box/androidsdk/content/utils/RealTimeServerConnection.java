// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorRealTimeServers;
import com.box.androidsdk.content.models.BoxRealTimeServer;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSimpleMessage;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.requests.BoxResponse;
import java.net.SocketTimeoutException;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.box.androidsdk.content.utils:
//            SdkUtils

public class RealTimeServerConnection
    implements com.box.androidsdk.content.BoxFutureTask.OnCompletedListener
{
    public static interface OnChangeListener
    {

        public abstract void onChange(BoxSimpleMessage boxsimplemessage, RealTimeServerConnection realtimeserverconnection);

        public abstract void onException(Exception exception, RealTimeServerConnection realtimeserverconnection);
    }


    private BoxRealTimeServer mBoxRealTimeServer;
    private final OnChangeListener mChangeListener;
    private final ThreadPoolExecutor mExecutor;
    private BoxRequest mRequest;
    private int mRetries;
    private BoxSession mSession;

    public RealTimeServerConnection(BoxRequest boxrequest, OnChangeListener onchangelistener, BoxSession boxsession)
    {
        mExecutor = SdkUtils.createDefaultThreadPoolExecutor(1, 1, 3600L, TimeUnit.SECONDS);
        mRetries = 0;
        mRequest = boxrequest;
        mSession = boxsession;
        mChangeListener = onchangelistener;
    }

    public BoxSimpleMessage connect()
    {
        Object obj;
        boolean flag;
        mRetries = 0;
        com.box.androidsdk.content.requests.BoxRequestsEvent.LongPollMessageRequest longpollmessagerequest;
        Object obj2;
        try
        {
            mBoxRealTimeServer = (BoxRealTimeServer)((BoxIteratorRealTimeServers)mRequest.send()).get(0);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            mChangeListener.onException(((Exception) (obj)), this);
            return null;
        }
        longpollmessagerequest = new com.box.androidsdk.content.requests.BoxRequestsEvent.LongPollMessageRequest(mBoxRealTimeServer.getUrl(), mSession);
        longpollmessagerequest.setTimeOut(mBoxRealTimeServer.getFieldRetryTimeout().intValue() * 1000);
        flag = true;
_L3:
        obj = longpollmessagerequest.toTask().addOnCompletedListener(this);
        mExecutor.submit(((Runnable) (obj)));
        obj2 = (BoxResponse)((BoxFutureTask) (obj)).get(mBoxRealTimeServer.getFieldRetryTimeout().intValue(), TimeUnit.SECONDS);
        if (!((BoxResponse) (obj2)).isSuccess() || ((BoxSimpleMessage)((BoxResponse) (obj2)).getResult()).getMessage().equals("reconnect")) goto _L2; else goto _L1
_L1:
        obj2 = (BoxSimpleMessage)((BoxResponse) (obj2)).getResult();
        return ((BoxSimpleMessage) (obj2));
        obj;
        obj = null;
_L4:
        Object obj1;
        if (obj != null)
        {
            try
            {
                ((BoxFutureTask) (obj)).cancel(true);
            }
            catch (CancellationException cancellationexception) { }
        }
_L2:
        mRetries = mRetries + 1;
        if (mBoxRealTimeServer.getMaxRetries().longValue() < (long)mRetries)
        {
            flag = false;
        }
        if (!flag)
        {
            mChangeListener.onException(new com.box.androidsdk.content.BoxException.MaxAttemptsExceeded("Max retries exceeded, ", mRetries), this);
            return null;
        }
          goto _L3
        obj1;
        mChangeListener.onException(((Exception) (obj1)), this);
          goto _L2
        obj1;
        mChangeListener.onException(((Exception) (obj1)), this);
          goto _L2
        TimeoutException timeoutexception;
        timeoutexception;
          goto _L4
    }

    public BoxRealTimeServer getRealTimeServer()
    {
        return mBoxRealTimeServer;
    }

    public BoxRequest getRequest()
    {
        return mRequest;
    }

    public int getTimesRetried()
    {
        return mRetries;
    }

    protected void handleResponse(BoxResponse boxresponse)
    {
        if (boxresponse.isSuccess())
        {
            if (!((BoxSimpleMessage)boxresponse.getResult()).getMessage().equals("reconnect"))
            {
                mChangeListener.onChange((BoxSimpleMessage)boxresponse.getResult(), this);
            }
        } else
        if (!(boxresponse.getException() instanceof BoxException) || !(boxresponse.getException().getCause() instanceof SocketTimeoutException))
        {
            mChangeListener.onException(boxresponse.getException(), this);
            return;
        }
    }

    public void onCompleted(BoxResponse boxresponse)
    {
        handleResponse(boxresponse);
    }

    public FutureTask toTask()
    {
        return new FutureTask(new Callable() {

            final RealTimeServerConnection this$0;

            public BoxSimpleMessage call()
            {
                return connect();
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                this$0 = RealTimeServerConnection.this;
                super();
            }
        });
    }
}
