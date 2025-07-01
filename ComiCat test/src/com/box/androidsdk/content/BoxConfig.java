// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import android.content.Context;

// Referenced classes of package com.box.androidsdk.content:
//            BoxCache

public class BoxConfig
{

    public static Context APPLICATION_CONTEXT = null;
    public static String CLIENT_ID = null;
    public static String CLIENT_SECRET = null;
    public static String DEVICE_ID = null;
    public static String DEVICE_NAME = null;
    public static boolean ENABLE_BOX_APP_AUTHENTICATION = false;
    public static boolean IS_DEBUG = false;
    public static boolean IS_FLAG_SECURE = false;
    public static boolean IS_LOG_ENABLED = false;
    public static String REDIRECT_URL = "https://app.box.com/static/sync_redirect.html";
    public static String SDK_VERSION = "4.0.8";
    private static BoxCache mCache = null;

    public BoxConfig()
    {
    }

    public static BoxCache getCache()
    {
        return mCache;
    }

    public static void setCache(BoxCache boxcache)
    {
        mCache = boxcache;
    }

}
