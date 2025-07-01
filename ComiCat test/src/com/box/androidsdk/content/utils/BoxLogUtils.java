// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.util.Map;

// Referenced classes of package com.box.androidsdk.content.utils:
//            BoxLogger, Logger

public class BoxLogUtils
{

    private static Logger sLogger = new BoxLogger();

    public BoxLogUtils()
    {
    }

    public static void d(String s, String s1)
    {
        sLogger.d(s, s1);
    }

    public static void e(String s, String s1)
    {
        sLogger.e(s, s1);
    }

    public static void e(String s, String s1, Throwable throwable)
    {
        sLogger.e(s, s1, throwable);
    }

    public static void e(String s, Throwable throwable)
    {
        sLogger.e(s, throwable);
    }

    public static boolean getIsLoggingEnabled()
    {
        return sLogger.getIsLoggingEnabled();
    }

    public static Logger getLogger(Logger logger)
    {
        return sLogger;
    }

    public static void i(String s, String s1)
    {
        sLogger.i(s, s1);
    }

    public static void i(String s, String s1, Map map)
    {
        sLogger.i(s, s1, map);
    }

    public static void nonFatalE(String s, String s1, Throwable throwable)
    {
        sLogger.nonFatalE(s, s1, throwable);
    }

    public static void setLogger(Logger logger)
    {
        sLogger = logger;
    }

}
