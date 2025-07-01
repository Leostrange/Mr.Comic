// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.util.Map;

public interface Logger
{

    public abstract void d(String s, String s1);

    public abstract void e(String s, String s1);

    public abstract void e(String s, String s1, Throwable throwable);

    public abstract void e(String s, Throwable throwable);

    public abstract boolean getIsLoggingEnabled();

    public abstract void i(String s, String s1);

    public abstract void i(String s, String s1, Map map);

    public abstract void nonFatalE(String s, String s1, Throwable throwable);
}
