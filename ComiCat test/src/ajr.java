// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ajr
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        private static final a e[];
        private final int d;

        static int a(a a1)
        {
            return a1.d;
        }

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(ajr$a, s);
        }

        public static a[] values()
        {
            return (a[])e.clone();
        }

        static 
        {
            a = new a("READ_IO_BUFFER", 0, 4000);
            b = new a("WRITE_ENCODING_BUFFER", 1, 4000);
            c = new a("WRITE_CONCAT_BUFFER", 2, 2000);
            e = (new a[] {
                a, b, c
            });
        }

        private a(String s, int i, int j)
        {
            super(s, i);
            d = j;
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        private static final b f[];
        private final int e;

        static int a(b b1)
        {
            return b1.e;
        }

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(ajr$b, s);
        }

        public static b[] values()
        {
            return (b[])f.clone();
        }

        static 
        {
            a = new b("TOKEN_BUFFER", 0, 2000);
            b = new b("CONCAT_BUFFER", 1, 2000);
            c = new b("TEXT_BUFFER", 2, 200);
            d = new b("NAME_COPY_BUFFER", 3, 200);
            f = (new b[] {
                a, b, c, d
            });
        }

        private b(String s, int i, int j)
        {
            super(s, i);
            e = j;
        }
    }


    protected final byte a[][] = new byte[a.values().length][];
    protected final char b[][] = new char[b.values().length][];

    public ajr()
    {
    }

    public final void a(a a1, byte abyte0[])
    {
        a[a1.ordinal()] = abyte0;
    }

    public final void a(b b1, char ac[])
    {
        b[b1.ordinal()] = ac;
    }

    public final byte[] a(a a1)
    {
        int i = a1.ordinal();
        byte abyte0[] = a[i];
        if (abyte0 == null)
        {
            return new byte[a.a(a1)];
        } else
        {
            a[i] = null;
            return abyte0;
        }
    }

    public final char[] a(b b1)
    {
        return a(b1, 0);
    }

    public final char[] a(b b1, int i)
    {
        int j = i;
        if (b.a(b1) > i)
        {
            j = b.a(b1);
        }
        i = b1.ordinal();
        b1 = b[i];
        if (b1 == null || b1.length < j)
        {
            return new char[j];
        } else
        {
            b[i] = null;
            return b1;
        }
    }
}
