package com.box.androidsdk.content.utils;

import java.util.Map;

public interface Logger {
    void d(String str, String str2);

    void e(String str, String str2);

    void e(String str, String str2, Throwable th);

    void e(String str, Throwable th);

    boolean getIsLoggingEnabled();

    void i(String str, String str2);

    void i(String str, String str2, Map<String, String> map);

    void nonFatalE(String str, String str2, Throwable th);
}
