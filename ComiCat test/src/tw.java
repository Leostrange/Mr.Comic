// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.radaee.pdf.BMP;
import com.radaee.pdf.DIB;
import com.radaee.pdf.Document;
import java.lang.reflect.Array;

public final class tw
{
    public final class a
    {

        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        boolean i[][];
        final tw j;

        a(int i1, int j1)
        {
            j = tw.this;
            super();
            i = (boolean[][])Array.newInstance(Boolean.TYPE, new int[] {
                i1, j1
            });
        }
    }


    protected static int k;
    protected static int l;
    public tu a[][];
    public Bitmap b;
    public Document c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public float i;
    public tx j;
    public boolean m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;

    private final void a(int i1, int j1, int k1, int l1, int i2, int j2)
    {
        n = e - i1;
        o = f - j1;
        p = n + g + k;
        q = o + h + l;
        if (p > k1)
        {
            p = k1;
        }
        if (q > l1)
        {
            q = l1;
        }
        r = 0;
_L3:
        if (r < i2 && n <= -a[r][0].g) goto _L2; else goto _L1
_L1:
        s = 0;
_L4:
        if (s >= j2 || o > -a[0][s].h)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_191;
_L2:
        n = n + a[r][0].g;
        r = r + 1;
          goto _L3
        o = o + a[0][s].h;
        s = s + 1;
          goto _L4
    }

    private final void a(ty ty1, int i1, int j1, int k1)
    {
        do
        {
            if (i1 >= j1)
            {
                return;
            }
            tu tu1 = a[i1][k1];
            boolean flag;
            if (!tu1.k && tu1.j == 0 && tu1.i == null)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            if (flag)
            {
                a[i1][k1] = tu1.a();
            }
            ty1.b(tu1);
            i1++;
        } while (true);
    }

    private final void b(ty ty1, int i1, int j1, int k1)
    {
        do
        {
            if (i1 >= j1)
            {
                return;
            }
            a(ty1, 0, k1, i1);
            i1++;
        } while (true);
    }

    public final a a(ty ty1, BMP bmp, int i1, int j1)
    {
        a a1;
        int k1;
        if (a == null)
        {
            return null;
        }
        a1 = new a(a.length, a[0].length);
        a1.a = bmp.b();
        a1.b = bmp.c();
        a1.c = a.length;
        a1.d = a[0].length;
        a(i1, j1, a1.a, a1.b, a1.c, a1.d);
        a1.e = r;
        a1.f = s;
        a1.g = n;
        a1.h = o;
        j1 = a1.f;
        b(ty1, 0, a1.f, a1.c);
        k1 = a1.h;
        i1 = 1;
_L1:
        if (k1 >= q || j1 >= a1.d)
        {
            b(ty1, j1, a1.d, a1.c);
            tu tu1;
            int l1;
            int i2;
            int j2;
            if (i1 == 0)
            {
                return a1;
            } else
            {
                return null;
            }
        }
        a(ty1, 0, a1.e, j1);
        i2 = a1.e;
        l1 = a1.g;
label0:
        {
            if (l1 < p && i2 < a1.c)
            {
                break label0;
            }
            a(ty1, i2, a1.c, j1);
            k1 += a[0][j1].h;
            j1++;
        }
          goto _L1
        tu1 = a[i2][j1];
        ty1.a(tu1);
        if (tu1.k && tu1.j > 0)
        {
            j2 = 1;
        } else
        {
            j2 = 0;
        }
        if (j2 != 0)
        {
            tu1.a(bmp, l1, k1);
            a1.i[i2][j1] = true;
        } else
        {
            i1 = 0;
        }
        j2 = tu1.g;
        i2++;
        l1 = j2 + l1;
        break MISSING_BLOCK_LABEL_236;
    }

    public final void a()
    {
        boolean flag = false;
        int j1 = g / k;
        int k1 = h / l;
        int j2 = g;
        int k2 = k;
        int l1 = h;
        int i2 = l;
        int i1 = j1;
        if (j2 % k2 > k >> 1)
        {
            i1 = j1 + 1;
        }
        j1 = k1;
        if (l1 % i2 > l >> 1)
        {
            j1 = k1 + 1;
        }
        if (i1 <= 0)
        {
            i1 = 1;
        }
        if (j1 <= 0)
        {
            l1 = 1;
        } else
        {
            l1 = j1;
        }
        a = (tu[][])Array.newInstance(tu, new int[] {
            i1, l1
        });
        k1 = 0;
        j1 = 0;
        if (j1 < l1 - 1) goto _L2; else goto _L1
_L1:
        i2 = 0;
        l1 = ((flag) ? 1 : 0);
_L6:
        if (l1 >= i1 - 1)
        {
            a[l1][j1] = new tu(c, d, i, i2, k1, g - i2, h - k1);
            return;
        }
        break MISSING_BLOCK_LABEL_312;
_L2:
        j2 = 0;
        i2 = 0;
_L4:
label0:
        {
            if (i2 < i1 - 1)
            {
                break label0;
            }
            a[i2][j1] = new tu(c, d, i, j2, k1, g - j2, l);
            k1 += l;
            j1++;
        }
        break MISSING_BLOCK_LABEL_122;
        a[i2][j1] = new tu(c, d, i, j2, k1, k, l);
        j2 += k;
        i2++;
        if (true) goto _L4; else goto _L3
_L3:
        a[l1][j1] = new tu(c, d, i, i2, k1, k, h - k1);
        i2 += k;
        l1++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void a(android.graphics.Bitmap.Config config)
    {
        tx tx1;
        int i1;
        int j1;
        tx1 = j;
        j1 = tx1.b.length;
        i1 = 0;
_L3:
        if (i1 >= j1)
        {
            i1 = 1;
        } else
        {
label0:
            {
                tx.a a1 = tx1.b[i1];
                if (a1.d == 2 || a1.d == 0)
                {
                    break label0;
                }
                i1 = 0;
            }
        }
        if (i1 == 0) goto _L2; else goto _L1
_L1:
        return;
        i1++;
          goto _L3
_L2:
        int k1;
        long l4;
        l4 = (long)g * (long)h;
        i1 = g;
        j1 = h;
        k1 = 0;
_L12:
        if (l4 > 0x100000L) goto _L5; else goto _L4
_L4:
        int l1 = i1;
        i1 = k1;
        k1 = l1;
_L14:
        if (b == null) goto _L7; else goto _L6
_L6:
        int j3;
        int k3;
        config = new BMP();
        config.a(b);
        j3 = a.length;
        k3 = a[0].length;
        if (i1 != 0) goto _L9; else goto _L8
_L8:
        j1 = 0;
        i1 = 0;
_L16:
        if (i1 < k3) goto _L11; else goto _L10
_L10:
        config.b(b);
        return;
_L5:
        l4 >>= 2;
        i1 >>= 1;
        j1 >>= 1;
        k1++;
          goto _L12
_L7:
        b = Bitmap.createBitmap(k1, j1, config);
        int i2 = i1;
        i1 = k1;
        k1 = i2;
_L15:
        if (k1 > 8) goto _L1; else goto _L13
_L13:
        int j2 = k1;
        k1 = i1;
        i1 = j2;
          goto _L14
        Exception exception;
        exception;
        int k2 = k1 >> 1;
        j1 >>= 1;
        k1 = i1 + 1;
        i1 = k2;
          goto _L15
_L11:
        int l2;
        k1 = 0;
        l2 = 0;
_L17:
label1:
        {
            if (k1 < j3)
            {
                break label1;
            }
            j1 = a[0][i1].h + j1;
            i1++;
        }
          goto _L16
        a[k1][i1].a(config, l2, j1);
        l2 += a[k1][i1].g;
        k1++;
          goto _L17
_L9:
        k1 = 0;
        j1 = 0;
_L19:
        if (j1 >= k3) goto _L10; else goto _L18
_L18:
        int i3;
        i3 = 0;
        l2 = 0;
_L20:
label2:
        {
            if (l2 < j3)
            {
                break label2;
            }
            k1 = a[0][j1].h + k1;
            j1++;
        }
          goto _L19
          goto _L10
        tu tu1 = a[l2][j1];
        int l3 = i3 >> i1;
        int i4 = k1 >> i1;
        int j4 = tu1.g >> i1;
        int k4 = tu1.h >> i1;
        if (tu1.k && tu1.i != null)
        {
            tu1.i.a(config, l3, i4, j4, k4);
        } else
        {
            config.a(l3, i4, j4, k4);
        }
        i3 = a[l2][j1].g + i3;
        l2++;
          goto _L20
    }

    public final void a(Canvas canvas, int i1, int j1)
    {
        Rect rect;
label0:
        {
            if (!j.a(canvas, 0.0F, c.c(d), c.b(d), 0.0F, e - i1, f - j1, i))
            {
                rect = new Rect();
                rect.left = e - i1;
                rect.top = f - j1;
                rect.right = rect.left + g;
                rect.bottom = rect.top + h;
                if (b == null)
                {
                    break label0;
                }
                canvas.drawBitmap(b, null, rect, null);
            }
            return;
        }
        Paint paint = new Paint();
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setColor(-1);
        canvas.drawRect(rect, paint);
    }

    public final void a(BMP bmp, a a1)
    {
        if (a != null && a1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i1;
        int j1;
        i1 = a1.f;
        j1 = a1.h;
_L4:
        if (j1 >= q || i1 >= a1.d) goto _L1; else goto _L3
_L3:
        int k1;
        int l1;
        k1 = a1.e;
        l1 = a1.g;
_L5:
label0:
        {
            if (l1 < p && k1 < a1.c)
            {
                break label0;
            }
            j1 += a[0][i1].h;
            i1++;
        }
          goto _L4
          goto _L1
        tu tu1 = a[k1][i1];
        if (!a1.i[k1][i1])
        {
            tu1.a(bmp, l1, j1);
        }
        l1 += tu1.g;
        k1++;
          goto _L5
    }

    public final void a(ty ty1)
    {
        int i1;
        int k1;
        int l1;
        if (a == null)
        {
            return;
        }
        k1 = a.length;
        l1 = a[0].length;
        i1 = 0;
_L2:
        if (i1 >= l1)
        {
            a = null;
            return;
        }
        int j1 = 0;
        do
        {
label0:
            {
                if (j1 < k1)
                {
                    break label0;
                }
                i1++;
            }
            if (true)
            {
                continue;
            }
            ty1.b(a[j1][i1]);
            j1++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void a(ty ty1, int i1, int j1, int k1, int l1)
    {
        int i2;
        int j2;
        int k2;
        int l2;
        k2 = a.length;
        l2 = a[0].length;
        a(i1, j1, k1, l1, k2, l2);
        i2 = r;
        i1 = s;
        j2 = n;
        j1 = o;
        b(ty1, 0, i1, k2);
_L2:
        if (j1 >= q || i1 >= l2)
        {
            b(ty1, i1, l2, k2);
            return;
        }
        a(ty1, 0, i2, i1);
        l1 = j2;
        k1 = i2;
        do
        {
label0:
            {
                if (l1 < p && k1 < k2)
                {
                    break label0;
                }
                a(ty1, k1, k2, i1);
                j1 += a[0][i1].h;
                i1++;
            }
            if (true)
            {
                continue;
            }
            ty1.a(a[k1][i1]);
            l1 += a[k1][i1].g;
            k1++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final boolean a(Canvas canvas, a a1)
    {
        if (a != null && a1 != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        return flag1;
_L2:
        float f1;
        int i1;
        int j1;
        boolean flag;
        i1 = a1.f;
        f1 = 1.0F / i;
        j1 = a1.h;
        flag = false;
_L6:
        flag1 = flag;
        if (j1 >= q) goto _L4; else goto _L3
_L3:
        flag1 = flag;
        if (i1 >= a1.d) goto _L4; else goto _L5
_L5:
        int k1;
        int l1;
        k1 = a1.e;
        l1 = a1.g;
_L7:
label0:
        {
            if (l1 < p && k1 < a1.c)
            {
                break label0;
            }
            j1 += a[0][i1].h;
            i1++;
        }
          goto _L6
        tu tu1 = a[k1][i1];
        if (!a1.i[k1][i1])
        {
            tu tu2 = a[k1][i1];
            float f2 = tu2.e;
            float f3 = c.c(d);
            float f4 = tu2.f;
            float f5 = tu2.e + tu2.g;
            float f6 = c.c(d);
            int i2 = tu2.f;
            float f7 = tu2.h + i2;
            a1.i[k1][i1] = j.a(canvas, f2 * f1, f3 - f4 * f1, f5 * f1, f6 - f7 * f1, l1, j1, i);
        }
        if (!a1.i[k1][i1])
        {
            flag = true;
        }
        l1 += tu1.g;
        k1++;
          goto _L7
    }
}
