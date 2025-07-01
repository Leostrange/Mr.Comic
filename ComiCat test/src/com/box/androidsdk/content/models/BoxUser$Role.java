// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxUser

public static final class mValue extends Enum
{

    private static final USER $VALUES[];
    public static final USER ADMIN;
    public static final USER COADMIN;
    public static final USER USER;
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
        return (toString)Enum.valueOf(com/box/androidsdk/content/models/BoxUser$Role, s);
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
        ADMIN = new <init>("ADMIN", 0, "admin");
        COADMIN = new <init>("COADMIN", 1, "coadmin");
        USER = new <init>("USER", 2, "user");
        $VALUES = (new .VALUES[] {
            ADMIN, COADMIN, USER
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mValue = s1;
    }
}
