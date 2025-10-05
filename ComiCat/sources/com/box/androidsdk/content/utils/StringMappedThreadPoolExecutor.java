package com.box.androidsdk.content.utils;

import java.lang.ref.WeakReference;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class StringMappedThreadPoolExecutor extends ThreadPoolExecutor {
    private final ConcurrentHashMap<String, WeakReference<Runnable>> mRunningTasks = new ConcurrentHashMap<>();

    public StringMappedThreadPoolExecutor(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory);
    }

    /* access modifiers changed from: protected */
    public final void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        this.mRunningTasks.remove(runnable.toString());
    }

    /* access modifiers changed from: protected */
    public final void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        this.mRunningTasks.put(runnable.toString(), new WeakReference(runnable));
    }

    public final Runnable getTaskFor(String str) {
        WeakReference weakReference = this.mRunningTasks.get(str);
        if (weakReference == null) {
            return null;
        }
        return (Runnable) weakReference.get();
    }
}
