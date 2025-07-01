// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.lang.ref.WeakReference;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class StringMappedThreadPoolExecutor extends ThreadPoolExecutor
{

    private final ConcurrentHashMap mRunningTasks = new ConcurrentHashMap();

    public StringMappedThreadPoolExecutor(int i, int j, long l, TimeUnit timeunit, BlockingQueue blockingqueue, ThreadFactory threadfactory)
    {
        super(i, j, l, timeunit, blockingqueue, threadfactory);
    }

    protected final void afterExecute(Runnable runnable, Throwable throwable)
    {
        super.afterExecute(runnable, throwable);
        mRunningTasks.remove(runnable.toString());
    }

    protected final void beforeExecute(Thread thread, Runnable runnable)
    {
        super.beforeExecute(thread, runnable);
        mRunningTasks.put(runnable.toString(), new WeakReference(runnable));
    }

    public final Runnable getTaskFor(String s)
    {
        s = (WeakReference)mRunningTasks.get(s);
        if (s == null)
        {
            return null;
        } else
        {
            return (Runnable)s.get();
        }
    }
}
