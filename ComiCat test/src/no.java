// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class no
{
    public static final class a extends FilterInputStream
    {

        private long a;
        private long b;

        public final int available()
        {
            return (int)Math.min(in.available(), a);
        }

        public final void mark(int i)
        {
            this;
            JVM INSTR monitorenter ;
            in.mark(i);
            b = a;
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        public final int read()
        {
            if (a == 0L)
            {
                return -1;
            }
            int i = in.read();
            if (i != -1)
            {
                a = a - 1L;
            }
            return i;
        }

        public final int read(byte abyte0[], int i, int j)
        {
            if (a == 0L)
            {
                return -1;
            }
            j = (int)Math.min(j, a);
            i = in.read(abyte0, i, j);
            if (i != -1)
            {
                a = a - (long)i;
            }
            return i;
        }

        public final void reset()
        {
            this;
            JVM INSTR monitorenter ;
            if (!in.markSupported())
            {
                throw new IOException("Mark not supported");
            }
            break MISSING_BLOCK_LABEL_27;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            if (b == -1L)
            {
                throw new IOException("Mark not set");
            }
            in.reset();
            a = b;
            this;
            JVM INSTR monitorexit ;
        }

        public final long skip(long l)
        {
            l = Math.min(l, a);
            l = in.skip(l);
            a = a - l;
            return l;
        }

        public a(InputStream inputstream, long l)
        {
            super(inputstream);
            b = -1L;
            ni.a(inputstream);
            boolean flag;
            if (l >= 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            oh.a(flag, "limit must be non-negative");
            a = l;
        }
    }


    public static int a(InputStream inputstream, byte abyte0[], int i, int j)
    {
        ni.a(inputstream);
        ni.a(abyte0);
        if (j < 0)
        {
            throw new IndexOutOfBoundsException("len is negative");
        }
        int k = 0;
        do
        {
            if (k >= j)
            {
                break;
            }
            int l = inputstream.read(abyte0, i + k, j - k);
            if (l == -1)
            {
                break;
            }
            k += l;
        } while (true);
        return k;
    }
}
