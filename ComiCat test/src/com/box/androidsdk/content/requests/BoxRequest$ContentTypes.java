// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;


// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest

public static final class mName extends Enum
{

    private static final JSON_PATCH $VALUES[];
    public static final JSON_PATCH JSON;
    public static final JSON_PATCH JSON_PATCH;
    public static final JSON_PATCH URL_ENCODED;
    private String mName;

    public static mName valueOf(String s)
    {
        return (mName)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequest$ContentTypes, s);
    }

    public static mName[] values()
    {
        return (mName[])$VALUES.clone();
    }

    public final String toString()
    {
        return mName;
    }

    static 
    {
        JSON = new <init>("JSON", 0, "application/json");
        URL_ENCODED = new <init>("URL_ENCODED", 1, "application/x-www-form-urlencoded");
        JSON_PATCH = new <init>("JSON_PATCH", 2, "application/json-patch+json");
        $VALUES = (new .VALUES[] {
            JSON, URL_ENCODED, JSON_PATCH
        });
    }

    private A(String s, int i, String s1)
    {
        super(s, i);
        mName = s1;
    }
}
