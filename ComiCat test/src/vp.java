// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vp
{
    public static final class a
    {

        long a;
        long b;
        private long c;

        public final long a()
        {
            return c & 0xffffffffL;
        }

        public final void a(long l)
        {
            a = 0xffffffffL & l;
        }

        public final void b(long l)
        {
            c = 0xffffffffL & l;
        }

        public final void c(long l)
        {
            b = 0xffffffffL & l;
        }

        public final String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("SubRange[");
            stringbuilder.append("\n  lowCount=");
            stringbuilder.append(c);
            stringbuilder.append("\n  highCount=");
            stringbuilder.append(a);
            stringbuilder.append("\n  scale=");
            stringbuilder.append(b);
            stringbuilder.append("]");
            return stringbuilder.toString();
        }

        public a()
        {
        }
    }


    public long a;
    public long b;
    public long c;
    final a d = new a();
    public uy e;

    public vp()
    {
    }

    public final int a()
    {
        c = c / d.b & 0xffffffffL;
        return (int)((b - a) / c);
    }

    public final void b()
    {
        a = a + c * d.a() & 0xffffffffL;
        c = c * (d.a - d.a()) & 0xffffffffL;
    }

    public final void c()
    {
        boolean flag = false;
        do
        {
            if ((a ^ a + c) >= 0x1000000L)
            {
                boolean flag1;
                if (c < 32768L)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag)
                {
                    break;
                }
            }
            flag1 = flag;
            if (flag)
            {
                c = -a & 32767L & 0xffffffffL;
                flag1 = false;
            }
            b = (b << 8 | (long)e.a()) & 0xffffffffL;
            c = c << 8 & 0xffffffffL;
            a = a << 8 & 0xffffffffL;
            flag = flag1;
        } while (true);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("RangeCoder[");
        stringbuilder.append("\n  low=");
        stringbuilder.append(a);
        stringbuilder.append("\n  code=");
        stringbuilder.append(b);
        stringbuilder.append("\n  range=");
        stringbuilder.append(c);
        stringbuilder.append("\n  subrange=");
        stringbuilder.append(d);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
