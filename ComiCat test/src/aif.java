// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class aif
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
        private static final a j[];
        final boolean h;
        public final int i = 1 << ordinal();

        public static int a()
        {
            int l = 0;
            a aa[] = values();
            int j1 = aa.length;
            for (int k = 0; k < j1;)
            {
                a a1 = aa[k];
                int i1 = l;
                if (a1.h)
                {
                    i1 = l | a1.i;
                }
                k++;
                l = i1;
            }

            return l;
        }

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(aif$a, s);
        }

        public static a[] values()
        {
            return (a[])j.clone();
        }

        static 
        {
            a = new a("AUTO_CLOSE_TARGET", 0, true);
            b = new a("AUTO_CLOSE_JSON_CONTENT", 1, true);
            c = new a("QUOTE_FIELD_NAMES", 2, true);
            d = new a("QUOTE_NON_NUMERIC_NUMBERS", 3, true);
            e = new a("WRITE_NUMBERS_AS_STRINGS", 4, false);
            f = new a("FLUSH_PASSED_TO_STREAM", 5, true);
            g = new a("ESCAPE_NON_ASCII", 6, false);
            j = (new a[] {
                a, b, c, d, e, f, g
            });
        }

        private a(String s, int k, boolean flag)
        {
            super(s, k);
            h = flag;
        }
    }


    protected ain a;

    protected aif()
    {
    }

    public abstract aif a();

    public final aif a(ain ain)
    {
        a = ain;
        return this;
    }

    public aif a(ajb ajb)
    {
        return this;
    }

    public abstract void a(char c1);

    public abstract void a(double d1);

    public abstract void a(float f1);

    public abstract void a(int i);

    public abstract void a(long l);

    public abstract void a(String s);

    public abstract void a(BigDecimal bigdecimal);

    public abstract void a(BigInteger biginteger);

    public abstract void a(boolean flag);

    public abstract void a(char ac[], int i, int j);

    public abstract void b();

    public abstract void b(String s);

    public abstract void c();

    public abstract void c(String s);

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g();
}
