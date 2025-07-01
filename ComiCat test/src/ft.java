// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;

public final class ft
{

    private static final String a = ft.getName();

    private ft()
    {
    }

    public static String[] a(String s)
    {
        gz.c(a, (new StringBuilder("Extracting scope string array from ")).append(s).toString());
        if (s.contains(" "))
        {
            return TextUtils.split(s, " ");
        } else
        {
            return TextUtils.split(s, "\\+");
        }
    }

}
