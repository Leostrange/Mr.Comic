// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

public final class xp extends IOException
    implements abs, xo
{

    private int c;
    private Throwable d;

    xp(int i)
    {
        super(a(i));
        c = i;
    }

    public xp(String s)
    {
        super(s);
    }

    private static String a(int i)
    {
        int j = 0;
        for (int k = a.length; k >= j;)
        {
            int l = (j + k) / 2;
            if (i > a[l])
            {
                j = l + 1;
            } else
            if (i < a[l])
            {
                k = l - 1;
            } else
            {
                return b[l];
            }
        }

        return (new StringBuilder("0x")).append(abw.a(i, 8)).toString();
    }

    public final String toString()
    {
        if (d != null)
        {
            StringWriter stringwriter = new StringWriter();
            PrintWriter printwriter = new PrintWriter(stringwriter);
            d.printStackTrace(printwriter);
            return (new StringBuilder()).append(super.toString()).append("\n").append(stringwriter).toString();
        } else
        {
            return super.toString();
        }
    }
}
