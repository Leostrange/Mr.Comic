// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import android.util.Log;
import com.box.androidsdk.content.BoxConfig;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.box.androidsdk.content.utils:
//            Logger

public class BoxLogger
    implements Logger
{

    public BoxLogger()
    {
    }

    public void d(String s, String s1)
    {
        getIsLoggingEnabled();
    }

    public void e(String s, String s1)
    {
        if (getIsLoggingEnabled())
        {
            Log.e(s, s1);
        }
    }

    public void e(String s, String s1, Throwable throwable)
    {
        if (getIsLoggingEnabled())
        {
            Log.e(s, s1, throwable);
        }
    }

    public void e(String s, Throwable throwable)
    {
        if (getIsLoggingEnabled() && throwable != null)
        {
            StringWriter stringwriter = new StringWriter();
            throwable.printStackTrace(new PrintWriter(stringwriter));
            Log.e(s, stringwriter.toString());
        }
    }

    public boolean getIsLoggingEnabled()
    {
        return BoxConfig.IS_LOG_ENABLED && BoxConfig.IS_DEBUG;
    }

    public void i(String s, String s1)
    {
        if (getIsLoggingEnabled())
        {
            Log.i(s, s1);
        }
    }

    public void i(String s, String s1, Map map)
    {
        if (getIsLoggingEnabled() && map != null)
        {
            java.util.Map.Entry entry;
            for (map = map.entrySet().iterator(); map.hasNext(); Log.i(s, String.format(Locale.ENGLISH, "%s:  %s:%s", new Object[] {
    s1, entry.getKey(), entry.getValue()
})))
            {
                entry = (java.util.Map.Entry)map.next();
            }

        }
    }

    public void nonFatalE(String s, String s1, Throwable throwable)
    {
        if (getIsLoggingEnabled())
        {
            Log.e((new StringBuilder("NON_FATAL")).append(s).toString(), s1, throwable);
        }
    }
}
