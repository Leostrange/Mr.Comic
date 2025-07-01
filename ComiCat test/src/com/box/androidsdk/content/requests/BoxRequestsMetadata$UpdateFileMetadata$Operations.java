// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;


// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestsMetadata

public static final class mName extends Enum
{

    private static final TEST $VALUES[];
    public static final TEST ADD;
    public static final TEST REMOVE;
    public static final TEST REPLACE;
    public static final TEST TEST;
    private String mName;

    public static mName valueOf(String s)
    {
        return (mName)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequestsMetadata$UpdateFileMetadata$Operations, s);
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
        ADD = new <init>("ADD", 0, "add");
        REPLACE = new <init>("REPLACE", 1, "replace");
        REMOVE = new <init>("REMOVE", 2, "remove");
        TEST = new <init>("TEST", 3, "test");
        $VALUES = (new .VALUES[] {
            ADD, REPLACE, REMOVE, TEST
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mName = s1;
    }
}
