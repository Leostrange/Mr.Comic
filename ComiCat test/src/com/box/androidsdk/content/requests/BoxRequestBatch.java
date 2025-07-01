// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxResponseBatch, BoxResponse

public class BoxRequestBatch extends BoxRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cacL;
    private ExecutorService mExecutor;
    protected ArrayList mRequests;

    public BoxRequestBatch()
    {
        super(com/box/androidsdk/content/requests/BoxResponseBatch, null, null);
        mRequests = new ArrayList();
        mExecutor = null;
    }

    public BoxRequestBatch addRequest(BoxRequest boxrequest)
    {
        mRequests.add(boxrequest);
        return this;
    }

    public volatile BoxObject onSend()
    {
        return onSend();
    }

    public BoxResponseBatch onSend()
    {
        BoxResponseBatch boxresponsebatch = new BoxResponseBatch();
        if (mExecutor == null) goto _L2; else goto _L1
_L1:
        Object obj = new ArrayList();
        BoxFutureTask boxfuturetask1;
        for (Iterator iterator = mRequests.iterator(); iterator.hasNext(); ((ArrayList) (obj)).add(boxfuturetask1))
        {
            boxfuturetask1 = ((BoxRequest)iterator.next()).toTask();
            mExecutor.submit(boxfuturetask1);
        }

        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
        {
            BoxFutureTask boxfuturetask = (BoxFutureTask)((Iterator) (obj)).next();
            try
            {
                boxresponsebatch.addResponse((BoxResponse)boxfuturetask.get());
            }
            catch (InterruptedException interruptedexception)
            {
                throw new BoxException(interruptedexception.getMessage(), interruptedexception);
            }
            catch (ExecutionException executionexception)
            {
                throw new BoxException(executionexception.getMessage(), executionexception);
            }
        }

          goto _L3
_L2:
        Iterator iterator1 = mRequests.iterator();
_L4:
        BoxRequest boxrequest;
        if (!iterator1.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        boxrequest = (BoxRequest)iterator1.next();
        BoxObject boxobject = boxrequest.send();
        Exception exception = null;
_L5:
        boxresponsebatch.addResponse(new BoxResponse(boxobject, exception, boxrequest));
        if (true) goto _L4; else goto _L3
        exception;
        boxobject = null;
          goto _L5
_L3:
        return boxresponsebatch;
    }

    public BoxRequestBatch setExecutor(ExecutorService executorservice)
    {
        mExecutor = executorservice;
        return this;
    }
}
