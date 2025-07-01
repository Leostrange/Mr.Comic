// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayOutputStream;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class oa extends ByteArrayOutputStream
{

    private int a;
    private final int b;
    private boolean c;
    private final Level d;
    private final Logger e;

    public oa(Logger logger, Level level, int i)
    {
        e = (Logger)ni.a(logger);
        d = (Level)ni.a(level);
        boolean flag;
        if (i >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        b = i;
    }

    private static void a(StringBuilder stringbuilder, int i)
    {
        if (i == 1)
        {
            stringbuilder.append("1 byte");
            return;
        } else
        {
            stringbuilder.append(NumberFormat.getInstance().format(i)).append(" bytes");
            return;
        }
    }

    public final void close()
    {
        this;
        JVM INSTR monitorenter ;
        if (!c)
        {
            if (a != 0)
            {
                StringBuilder stringbuilder = new StringBuilder("Total: ");
                a(stringbuilder, a);
                if (count != 0 && count < a)
                {
                    stringbuilder.append(" (logging first ");
                    a(stringbuilder, count);
                    stringbuilder.append(")");
                }
                e.config(stringbuilder.toString());
                if (count != 0)
                {
                    e.log(d, toString("UTF-8").replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", " "));
                }
            }
            c = true;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void write(int i)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if (!c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        a = a + 1;
        if (count < b)
        {
            super.write(i);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void write(byte abyte0[], int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        int k;
        int l;
        boolean flag;
        if (!c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        a = a + j;
        if (count >= b)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        l = count + j;
        k = j;
        if (l > b)
        {
            k = j + (b - l);
        }
        super.write(abyte0, i, k);
        this;
        JVM INSTR monitorexit ;
        return;
        abyte0;
        throw abyte0;
    }
}
