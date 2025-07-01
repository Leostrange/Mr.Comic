// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.bootstrap;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

class ThreadFactoryImpl
    implements ThreadFactory
{

    private final AtomicLong count;
    private final ThreadGroup group;
    private final String namePrefix;

    ThreadFactoryImpl(String s)
    {
        this(s, null);
    }

    ThreadFactoryImpl(String s, ThreadGroup threadgroup)
    {
        namePrefix = s;
        group = threadgroup;
        count = new AtomicLong();
    }

    public Thread newThread(Runnable runnable)
    {
        return new Thread(group, runnable, (new StringBuilder()).append(namePrefix).append("-").append(count.incrementAndGet()).toString());
    }
}
