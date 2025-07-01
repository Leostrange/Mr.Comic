// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxCollaboration

public static final class mValue extends Enum
{

    private static final UPLOADER $VALUES[];
    public static final UPLOADER CO_OWNER;
    public static final UPLOADER EDITOR;
    public static final UPLOADER OWNER;
    public static final UPLOADER PREVIEWER;
    public static final UPLOADER PREVIEWER_UPLOADER;
    public static final UPLOADER UPLOADER;
    public static final UPLOADER VIEWER;
    public static final UPLOADER VIEWER_UPLOADER;
    private final String mValue;

    public static mValue fromString(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            mValue amvalue[] = values();
            int j = amvalue.length;
            for (int i = 0; i < j; i++)
            {
                mValue mvalue = amvalue[i];
                if (s.equalsIgnoreCase(mvalue.toString()))
                {
                    return mvalue;
                }
            }

        }
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[] {
            s
        }));
    }

    public static toString valueOf(String s)
    {
        return (toString)Enum.valueOf(com/box/androidsdk/content/models/BoxCollaboration$Role, s);
    }

    public static toString[] values()
    {
        return (toString[])$VALUES.clone();
    }

    public final String toString()
    {
        return mValue;
    }

    static 
    {
        OWNER = new <init>("OWNER", 0, "owner");
        CO_OWNER = new <init>("CO_OWNER", 1, "co-owner");
        EDITOR = new <init>("EDITOR", 2, "editor");
        VIEWER_UPLOADER = new <init>("VIEWER_UPLOADER", 3, "viewer uploader");
        PREVIEWER_UPLOADER = new <init>("PREVIEWER_UPLOADER", 4, "previewer uploader");
        VIEWER = new <init>("VIEWER", 5, "viewer");
        PREVIEWER = new <init>("PREVIEWER", 6, "previewer");
        UPLOADER = new <init>("UPLOADER", 7, "uploader");
        $VALUES = (new .VALUES[] {
            OWNER, CO_OWNER, EDITOR, VIEWER_UPLOADER, PREVIEWER_UPLOADER, VIEWER, PREVIEWER, UPLOADER
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mValue = s1;
    }
}
