// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.bootstrap;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package org.apache.http.impl.bootstrap:
//            Worker

class WorkerPoolExecutor extends ThreadPoolExecutor
{

    private final Map workerSet = new ConcurrentHashMap();

    public WorkerPoolExecutor(int i, int j, long l, TimeUnit timeunit, BlockingQueue blockingqueue, ThreadFactory threadfactory)
    {
        super(i, j, l, timeunit, blockingqueue, threadfactory);
    }

    protected void afterExecute(Runnable runnable, Throwable throwable)
    {
        if (runnable instanceof Worker)
        {
            workerSet.remove(runnable);
        }
    }

    protected void beforeExecute(Thread thread, Runnable runnable)
    {
        if (runnable instanceof Worker)
        {
            workerSet.put((Worker)runnable, Boolean.TRUE);
        }
    }

    public Set getWorkers()
    {
        return new HashSet(workerSet.keySet());
    }
}
