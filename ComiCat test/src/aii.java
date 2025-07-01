// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class aii
    implements Closeable
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        public static final a j;
        private static final a l[];
        final boolean k;

        public static int a()
        {
            int j1 = 0;
            a aa[] = values();
            int l1 = aa.length;
            for (int i1 = 0; i1 < l1;)
            {
                a a1 = aa[i1];
                int k1 = j1;
                if (a1.k)
                {
                    k1 = j1 | 1 << a1.ordinal();
                }
                i1++;
                j1 = k1;
            }

            return j1;
        }

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(aii$a, s);
        }

        public static a[] values()
        {
            return (a[])l.clone();
        }

        public final boolean a(int i1)
        {
            return (1 << ordinal() & i1) != 0;
        }

        static 
        {
            a = new a("AUTO_CLOSE_SOURCE", 0, true);
            b = new a("ALLOW_COMMENTS", 1, false);
            c = new a("ALLOW_UNQUOTED_FIELD_NAMES", 2, false);
            d = new a("ALLOW_SINGLE_QUOTES", 3, false);
            e = new a("ALLOW_UNQUOTED_CONTROL_CHARS", 4, false);
            f = new a("ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER", 5, false);
            g = new a("ALLOW_NUMERIC_LEADING_ZEROS", 6, false);
            h = new a("ALLOW_NON_NUMERIC_NUMBERS", 7, false);
            i = new a("INTERN_FIELD_NAMES", 8, true);
            j = new a("CANONICALIZE_FIELD_NAMES", 9, true);
            l = (new a[] {
                a, b, c, d, e, f, g, h, i, j
            });
        }

        private a(String s, int i1, boolean flag)
        {
            super(s, i1);
            k = flag;
        }
    }


    protected int a;
    protected ail b;

    protected aii()
    {
    }

    protected final aih a(String s)
    {
        return new aih(s, e());
    }

    public abstract ail a();

    public final boolean a(a a1)
    {
        return (a & 1 << a1.ordinal()) != 0;
    }

    public abstract aii b();

    public final ail c()
    {
        return b;
    }

    public abstract void close();

    public abstract String d();

    public abstract aig e();

    public abstract String f();

    public final byte g()
    {
        int i1 = i();
        if (i1 < -128 || i1 > 255)
        {
            throw a((new StringBuilder("Numeric value (")).append(f()).append(") out of range of Java byte").toString());
        } else
        {
            return (byte)i1;
        }
    }

    public final short h()
    {
        int i1 = i();
        if (i1 < -32768 || i1 > 32767)
        {
            throw a((new StringBuilder("Numeric value (")).append(f()).append(") out of range of Java short").toString());
        } else
        {
            return (short)i1;
        }
    }

    public abstract int i();

    public abstract long j();

    public abstract BigInteger k();

    public abstract float l();

    public abstract double m();

    public abstract BigDecimal n();
}
