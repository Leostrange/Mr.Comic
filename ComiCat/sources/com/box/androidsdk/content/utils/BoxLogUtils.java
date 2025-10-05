package com.box.androidsdk.content.utils;

import java.util.Map;

public class BoxLogUtils {
    private static Logger sLogger = new BoxLogger();

    public static void d(String str, String str2) {
        sLogger.d(str, str2);
    }

    public static void e(String str, String str2) {
        sLogger.e(str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        sLogger.e(str, str2, th);
    }

    public static void e(String str, Throwable th) {
        sLogger.e(str, th);
    }

    public static boolean getIsLoggingEnabled() {
        return sLogger.getIsLoggingEnabled();
    }

    public static Logger getLogger(Logger logger) {
        return sLogger;
    }

    public static void i(String str, String str2) {
        sLogger.i(str, str2);
    }

    public static void i(String str, String str2, Map<String, String> map) {
        sLogger.i(str, str2, map);
    }

    public static void nonFatalE(String str, String str2, Throwable th) {
        sLogger.nonFatalE(str, str2, th);
    }

    public static void setLogger(Logger logger) {
        sLogger = logger;
    }
}
