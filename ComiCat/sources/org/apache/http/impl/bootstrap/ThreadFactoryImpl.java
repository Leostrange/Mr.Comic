package org.apache.http.impl.bootstrap;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

class ThreadFactoryImpl implements ThreadFactory {
    private final AtomicLong count;
    private final ThreadGroup group;
    private final String namePrefix;

    ThreadFactoryImpl(String str) {
        this(str, (ThreadGroup) null);
    }

    ThreadFactoryImpl(String str, ThreadGroup threadGroup) {
        this.namePrefix = str;
        this.group = threadGroup;
        this.count = new AtomicLong();
    }

    public Thread newThread(Runnable runnable) {
        return new Thread(this.group, runnable, this.namePrefix + "-" + this.count.incrementAndGet());
    }
}
