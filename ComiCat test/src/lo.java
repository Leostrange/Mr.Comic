// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayInputStream;
import java.io.InputStream;

public final class lo extends lm
{

    private final byte c[];
    private final int d = 0;
    private final int e;

    public lo(String s, byte abyte0[], int i)
    {
        super(s);
        c = (byte[])ni.a(abyte0);
        boolean flag;
        if (i >= 0 && i + 0 <= abyte0.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oh.a(flag, "offset %s, length %s, array length %s", new Object[] {
            Integer.valueOf(0), Integer.valueOf(i), Integer.valueOf(abyte0.length)
        });
        e = i;
    }

    public final long a()
    {
        return (long)e;
    }

    public final volatile lm a(String s)
    {
        return (lo)super.a(s);
    }

    public final volatile lm a(boolean flag)
    {
        return (lo)super.a(flag);
    }

    public final InputStream b()
    {
        return new ByteArrayInputStream(c, d, e);
    }

    public final boolean d()
    {
        return true;
    }
}
