// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;

public static final class 
    implements aiq
{

    static final String a;
    static final char b[];

    public final void a(aif aif1, int i)
    {
        aif1.c(a);
        if (i > 0)
        {
            for (i += i; i > 64; i -= b.length)
            {
                aif1.a(b, 0, 64);
            }

            aif1.a(b, 0, i);
        }
    }

    public final boolean a()
    {
        return false;
    }

    static 
    {
        String s = null;
        String s1 = System.getProperty("line.separator");
        s = s1;
_L2:
        String s2 = s;
        if (s == null)
        {
            s2 = "\n";
        }
        a = s2;
        char ac[] = new char[64];
        b = ac;
        Arrays.fill(ac, ' ');
        return;
        Throwable throwable;
        throwable;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ()
    {
    }
}
