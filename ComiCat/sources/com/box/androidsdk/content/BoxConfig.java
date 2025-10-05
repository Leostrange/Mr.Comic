package com.box.androidsdk.content;

import android.content.Context;

public class BoxConfig {
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

    public static BoxCache getCache() {
        return mCache;
    }

    public static void setCache(BoxCache boxCache) {
        mCache = boxCache;
    }
}
