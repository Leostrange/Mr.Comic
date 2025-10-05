package com.box.androidsdk.content.utils;

import android.util.Log;
import com.box.androidsdk.content.BoxConfig;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Locale;
import java.util.Map;

public class BoxLogger implements Logger {
    public void d(String str, String str2) {
        getIsLoggingEnabled();
    }

    public void e(String str, String str2) {
        if (getIsLoggingEnabled()) {
            Log.e(str, str2);
        }
    }

    public void e(String str, String str2, Throwable th) {
        if (getIsLoggingEnabled()) {
            Log.e(str, str2, th);
        }
    }

    public void e(String str, Throwable th) {
        if (getIsLoggingEnabled() && th != null) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            Log.e(str, stringWriter.toString());
        }
    }

    public boolean getIsLoggingEnabled() {
        return BoxConfig.IS_LOG_ENABLED && BoxConfig.IS_DEBUG;
    }

    public void i(String str, String str2) {
        if (getIsLoggingEnabled()) {
            Log.i(str, str2);
        }
    }

    public void i(String str, String str2, Map<String, String> map) {
        if (getIsLoggingEnabled() && map != null) {
            for (Map.Entry next : map.entrySet()) {
                Log.i(str, String.format(Locale.ENGLISH, "%s:  %s:%s", new Object[]{str2, next.getKey(), next.getValue()}));
            }
        }
    }

    public void nonFatalE(String str, String str2, Throwable th) {
        if (getIsLoggingEnabled()) {
            Log.e("NON_FATAL" + str, str2, th);
        }
    }
}
