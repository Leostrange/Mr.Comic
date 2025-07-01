// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxFolder

public static final class mValue extends Enum
{

    private static final PARTIALLY_SYNCED $VALUES[];
    public static final PARTIALLY_SYNCED NOT_SYNCED;
    public static final PARTIALLY_SYNCED PARTIALLY_SYNCED;
    public static final PARTIALLY_SYNCED SYNCED;
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
        return (toString)Enum.valueOf(com/box/androidsdk/content/models/BoxFolder$SyncState, s);
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
        SYNCED = new <init>("SYNCED", 0, "synced");
        NOT_SYNCED = new <init>("NOT_SYNCED", 1, "not_synced");
        PARTIALLY_SYNCED = new <init>("PARTIALLY_SYNCED", 2, "partially_synced");
        $VALUES = (new .VALUES[] {
            SYNCED, NOT_SYNCED, PARTIALLY_SYNCED
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mValue = s1;
    }
}
