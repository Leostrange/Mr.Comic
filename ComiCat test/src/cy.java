// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.Color;
import java.util.Arrays;
import java.util.List;

public final class cy
{
    public static final class a
    {

        public List a;
        public Bitmap b;
        public int c;
        public int d;
        public b e;

        public a(Bitmap bitmap)
        {
            c = 16;
            d = 192;
            if (bitmap == null || bitmap.isRecycled())
            {
                throw new IllegalArgumentException("Bitmap is not valid");
            } else
            {
                b = bitmap;
                return;
            }
        }
    }

    public static abstract class b
    {

        public c a()
        {
            return null;
        }

        public abstract void a(List list);

        b()
        {
        }
    }

    public static final class c
    {

        public final int a;
        final int b;
        private final int c;
        private final int d;
        private final int e;
        private boolean f;
        private int g;
        private int h;
        private float i[];

        private void b()
        {
            int j;
            int k;
label0:
            {
                if (!f)
                {
                    j = h.a(-1, a, 4.5F);
                    k = h.a(-1, a, 3F);
                    if (j == -1 || k == -1)
                    {
                        break label0;
                    }
                    h = h.b(-1, j);
                    g = h.b(-1, k);
                    f = true;
                }
                return;
            }
            int i1 = h.a(0xff000000, a, 4.5F);
            int l = h.a(0xff000000, a, 3F);
            if (i1 != -1 && i1 != -1)
            {
                h = h.b(0xff000000, i1);
                g = h.b(0xff000000, l);
                f = true;
                return;
            }
            if (j != -1)
            {
                j = h.b(-1, j);
            } else
            {
                j = h.b(0xff000000, i1);
            }
            h = j;
            if (k != -1)
            {
                j = h.b(-1, k);
            } else
            {
                j = h.b(0xff000000, l);
            }
            g = j;
            f = true;
        }

        public final float[] a()
        {
            if (i == null)
            {
                i = new float[3];
                h.a(c, d, e, i);
            }
            return i;
        }

        public final boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                obj = (c)obj;
                if (b != ((c) (obj)).b || a != ((c) (obj)).a)
                {
                    return false;
                }
            }
            return true;
        }

        public final int hashCode()
        {
            return a * 31 + b;
        }

        public final String toString()
        {
            StringBuilder stringbuilder = (new StringBuilder(getClass().getSimpleName())).append(" [RGB: #").append(Integer.toHexString(a)).append(']').append(" [HSL: ").append(Arrays.toString(a())).append(']').append(" [Population: ").append(b).append(']').append(" [Title Text: #");
            b();
            stringbuilder = stringbuilder.append(Integer.toHexString(g)).append(']').append(" [Body Text: #");
            b();
            return stringbuilder.append(Integer.toHexString(h)).append(']').toString();
        }

        public c(int j, int k)
        {
            c = Color.red(j);
            d = Color.green(j);
            e = Color.blue(j);
            a = j;
            b = k;
        }
    }


    public final b a;
    private final List b;

    private cy(List list, b b1)
    {
        b = list;
        a = b1;
    }

    public cy(List list, b b1, byte byte0)
    {
        this(list, b1);
    }
}
