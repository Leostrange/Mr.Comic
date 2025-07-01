// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.PrintStream;

public final class abx extends PrintStream
{

    public static int a = 1;
    private static abx b;

    private abx(PrintStream printstream)
    {
        super(printstream);
    }

    public static abx a()
    {
        if (b == null)
        {
            b = new abx(System.err);
        }
        return b;
    }

    public static void a(int i)
    {
        a = i;
    }

}
