// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class qs
{

    InputStream a;
    OutputStream b;
    OutputStream c;
    boolean d;
    boolean e;
    private boolean f;

    public qs()
    {
        d = false;
        e = false;
        f = false;
    }

    final void a()
    {
        try
        {
            if (b != null && !e)
            {
                b.close();
            }
            b = null;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    final void a(byte abyte0[], int i, int j)
    {
        b.write(abyte0, i, j);
        b.flush();
    }

    public final void b()
    {
        try
        {
            if (a != null && !d)
            {
                a.close();
            }
            a = null;
        }
        catch (Exception exception1) { }
        a();
        try
        {
            if (c != null && !f)
            {
                c.close();
            }
            c = null;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    final void b(byte abyte0[], int i, int j)
    {
        int k;
        do
        {
            k = a.read(abyte0, i, j);
            if (k < 0)
            {
                throw new IOException("End of IO Stream Read");
            }
            i += k;
            k = j - k;
            j = k;
        } while (k > 0);
    }
}
