// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class nj
{
    static abstract class a extends nf
    {

        final CharSequence c;
        final ng d;
        final boolean e;
        int f;
        int g;

        abstract int a(int i);

        protected final Object a()
        {
            int j = f;
            do
            {
                if (f == -1)
                {
                    break;
                }
                int i = a(f);
                if (i == -1)
                {
                    i = c.length();
                    f = -1;
                } else
                {
                    f = b(i);
                }
                if (f == j)
                {
                    f = f + 1;
                    if (f >= c.length())
                    {
                        f = -1;
                    }
                } else
                {
                    for (; j < i && d.a(c.charAt(j)); j++) { }
                    for (; i > j && d.a(c.charAt(i - 1)); i--) { }
                    if (e && j == i)
                    {
                        j = f;
                    } else
                    {
                        int k;
                        if (g == 1)
                        {
                            i = c.length();
                            f = -1;
                            do
                            {
                                k = i;
                                if (i <= j)
                                {
                                    break;
                                }
                                k = i;
                                if (!d.a(c.charAt(i - 1)))
                                {
                                    break;
                                }
                                i--;
                            } while (true);
                        } else
                        {
                            g = g - 1;
                            k = i;
                        }
                        return c.subSequence(j, k).toString();
                    }
                }
            } while (true);
            super.a = nf.a.c;
            return null;
        }

        abstract int b(int i);

        protected a(nj nj1, CharSequence charsequence)
        {
            f = 0;
            d = nj1.a;
            e = nj1.b;
            g = nj1.c;
            c = charsequence;
        }
    }

    static interface b
    {

        public abstract Iterator a(nj nj1, CharSequence charsequence);
    }


    final ng a;
    final boolean b;
    final int c;
    private final b d;

    public nj(b b1)
    {
        this(b1, ng.m);
    }

    private nj(b b1, ng ng1)
    {
        d = b1;
        b = false;
        a = ng1;
        c = 0x7fffffff;
    }

    public final List a(CharSequence charsequence)
    {
        ni.a(charsequence);
        charsequence = d.a(this, charsequence);
        ArrayList arraylist = new ArrayList();
        for (; charsequence.hasNext(); arraylist.add(charsequence.next())) { }
        return Collections.unmodifiableList(arraylist);
    }

    // Unreferenced inner class nj$1

/* anonymous class */
    public static final class _cls1
        implements b
    {

        final ng a;

        public final Iterator a(nj nj1, CharSequence charsequence)
        {
            return new a(this, nj1, charsequence) {

                final _cls1 b;

                final int a(int i)
                {
    public static final class _cls1
        implements b
    {
                    return b.a.a(c, i);
                }

                final int b(int i)
                {
                    return i + 1;
                }

            
            {
                b = _pcls1;
                super(nj1, charsequence);
            }
            };
        }

            public 
            {
                a = ng1;
                super();
            }
    }

}
