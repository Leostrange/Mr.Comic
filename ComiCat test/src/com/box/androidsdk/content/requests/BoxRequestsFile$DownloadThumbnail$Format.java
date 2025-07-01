// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;


// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestsFile

public static final class mExt extends Enum
{

    private static final PNG $VALUES[];
    public static final PNG JPG;
    public static final PNG PNG;
    private final String mExt;

    public static mExt valueOf(String s)
    {
        return (mExt)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequestsFile$DownloadThumbnail$Format, s);
    }

    public static mExt[] values()
    {
        return (mExt[])$VALUES.clone();
    }

    public final String toString()
    {
        return mExt;
    }

    static 
    {
        JPG = new <init>("JPG", 0, ".jpg");
        PNG = new <init>("PNG", 1, ".png");
        $VALUES = (new .VALUES[] {
            JPG, PNG
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mExt = s1;
    }
}
