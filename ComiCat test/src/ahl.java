// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;

public final class ahl
{

    public static final String a = Character.toString('.');
    private static final char b;
    private static final char c;

    static boolean a()
    {
        return b == '\\';
    }

    static 
    {
        b = File.separatorChar;
        if (a())
        {
            c = '/';
        } else
        {
            c = '\\';
        }
    }
}
