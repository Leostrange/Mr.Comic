// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.Log;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class afb
{

    static final Lock d = new ReentrantLock();
    static final Lock e = new ReentrantLock();
    private static final byte n[] = new byte[32768];
    int a;
    int b;
    SoftReference c;
    private aff f;
    private boolean g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private byte m[];

    public afb(aff aff1)
    {
        g = false;
        h = 1;
        a = -1;
        i = -1;
        b = 0;
        j = -1;
        k = -1;
        m = null;
        c = null;
        f = aff1;
        l = agw.c();
    }

    private static int a(Bitmap bitmap, int i1, int j1)
    {
        int k1 = 0;
        int l1 = 0;
        int i2 = i1;
        if (i1 == 0)
        {
            i2 = bitmap.getWidth();
            k1 = 0;
            i1 = l1;
            do
            {
                l1 = i1;
                if (k1 >= i2)
                {
                    break;
                }
                l1 = i1;
                if (!a(bitmap.getPixel(k1, j1)))
                {
                    break;
                }
                i1++;
                k1++;
            } while (true);
        } else
        {
            do
            {
                l1 = k1;
                if (i2 <= 0)
                {
                    break;
                }
                i2--;
                l1 = k1;
                if (!a(bitmap.getPixel(i2, j1)))
                {
                    break;
                }
                k1++;
            } while (true);
        }
        return l1;
    }

    private Bitmap a(int i1, int j1, boolean flag, boolean flag1, boolean flag2)
    {
        Object obj2 = i();
        if (obj2 == null) goto _L2; else goto _L1
_L1:
        Object obj1;
        obj1 = new android.graphics.BitmapFactory.Options();
        obj1.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
        obj1.inTempStorage = n;
        obj1.inPurgeable = false;
        obj1.inSampleSize = 1;
        if (j == -1 && k == -1)
        {
            obj1.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(((byte []) (obj2)), 0, obj2.length, ((android.graphics.BitmapFactory.Options) (obj1)));
            j = ((android.graphics.BitmapFactory.Options) (obj1)).outWidth;
            k = ((android.graphics.BitmapFactory.Options) (obj1)).outHeight;
            obj1.inJustDecodeBounds = false;
        }
        g = false;
        a = h;
        if (k == -1 || j == -1) goto _L4; else goto _L3
_L3:
        int k1;
        int l1;
        if (j >= k)
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
        i = k1;
        if (i != 0 && flag1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        g = flag1;
        l1 = a;
        if (g)
        {
            k1 = 2;
        } else
        {
            k1 = 1;
        }
        a = k1 * l1;
        if (i1 == -1 && j1 == -1) goto _L6; else goto _L5
_L5:
        if (j1 != -1) goto _L8; else goto _L7
_L7:
        i1 = j / i1;
_L18:
        obj1.inSampleSize = i1;
_L20:
        if ((j * k * 4) / ((android.graphics.BitmapFactory.Options) (obj1)).inSampleSize <= l)
        {
            obj1.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        }
_L4:
        (new StringBuilder("Scale factor is: ")).append(((android.graphics.BitmapFactory.Options) (obj1)).inSampleSize);
        if (((android.graphics.BitmapFactory.Options) (obj1)).inSampleSize <= 1) goto _L10; else goto _L9
_L9:
        k1 = ((android.graphics.BitmapFactory.Options) (obj1)).inSampleSize;
        i1 = Integer.highestOneBit(k1);
        j1 = i1 << 1;
        double d1;
        Object obj;
        Exception exception;
        Object obj3;
        int ai[];
        int i2;
        int j2;
        int k2;
        int l2;
        boolean flag3;
        if (k1 - i1 > j1 - k1)
        {
            i1 = j1;
        }
        obj1.inSampleSize = i1;
_L10:
        (new StringBuilder("Sanitized Scale factor is: ")).append(((android.graphics.BitmapFactory.Options) (obj1)).inSampleSize);
        if (a <= 1) goto _L12; else goto _L11
_L11:
        obj = aei.a().d;
        if (!((aeu) (obj)).c("right-to-left") || !((aeu) (obj)).c("double-page-rtl"))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        k1 = j;
        i2 = k;
        flag3 = g;
        j2 = h;
        k2 = b;
        obj = null;
        (new StringBuilder("Scale factor is: ")).append(((android.graphics.BitmapFactory.Options) (obj1)).inSampleSize);
        j1 = ((android.graphics.BitmapFactory.Options) (obj1)).inSampleSize;
        if (j1 <= 1)
        {
            break MISSING_BLOCK_LABEL_1472;
        }
        i1 = j1 / 2;
_L28:
        obj1.inSampleSize = i1;
        if (aei.a().d.c("use-fast-page-split") && android.os.Build.VERSION.SDK_INT >= 10)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_512;
        }
        new agn.b();
        obj = agn.b.a(((byte []) (obj2)), agn.a(k1, i2, 1, flag1, flag3, j2, k2), ((android.graphics.BitmapFactory.Options) (obj1)));
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_600;
        }
        new agn.a();
        obj3 = agn.a(k1, i2, ((android.graphics.BitmapFactory.Options) (obj1)).inSampleSize, flag1, flag3, j2, k2);
        obj = null;
        obj2 = BitmapFactory.decodeByteArray(((byte []) (obj2)), 0, obj2.length, ((android.graphics.BitmapFactory.Options) (obj1)));
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_600;
        }
        obj = Bitmap.createBitmap(((Bitmap) (obj2)), ((Rect) (obj3)).left, ((Rect) (obj3)).top, ((Rect) (obj3)).width(), ((Rect) (obj3)).height());
        ((Bitmap) (obj2)).recycle();
        obj1.inSampleSize = j1;
        obj1 = obj;
_L23:
        obj2 = obj1;
        if (!flag) goto _L14; else goto _L13
_L13:
        obj = obj1;
        ai = new int[4];
        obj = obj1;
        i1 = ((Bitmap) (obj1)).getHeight();
        obj = obj1;
        j1 = ((Bitmap) (obj1)).getWidth();
        obj = obj1;
        k1 = (j1 * 5) / 100;
        obj = obj1;
        i2 = (i1 * 5) / 100;
        j2 = i1 - 200;
        obj = obj1;
        ai[0] = a(((Bitmap) (obj1)), 0, 100);
        obj = obj1;
        ai[0] = Math.min(ai[0], a(((Bitmap) (obj1)), 0, (int)((double)j2 * 0.29999999999999999D)));
        obj = obj1;
        ai[0] = Math.min(ai[0], a(((Bitmap) (obj1)), 0, (int)((double)j2 * 0.59999999999999998D)));
        obj = obj1;
        ai[0] = Math.min(ai[0], a(((Bitmap) (obj1)), 0, i1 - 100));
        obj = obj1;
        ai[0] = Math.min(ai[0], k1);
        obj = obj1;
        ai[1] = b(((Bitmap) (obj1)), 0, 100);
        obj = obj1;
        ai[1] = Math.min(ai[1], b(((Bitmap) (obj1)), 0, j1 / 2));
        obj = obj1;
        ai[1] = Math.min(ai[1], b(((Bitmap) (obj1)), 0, j1 - 100));
        obj = obj1;
        ai[1] = Math.min(ai[1], i2);
        obj = obj1;
        ai[2] = a(((Bitmap) (obj1)), j1, 100);
        obj = obj1;
        ai[2] = Math.min(ai[2], a(((Bitmap) (obj1)), j1, (int)((double)j2 * 0.29999999999999999D)));
        obj = obj1;
        ai[2] = Math.min(ai[2], a(((Bitmap) (obj1)), j1, (int)((double)j2 * 0.59999999999999998D)));
        obj = obj1;
        ai[2] = Math.min(ai[2], a(((Bitmap) (obj1)), j1, i1 - 100));
        obj = obj1;
        ai[2] = Math.min(ai[2], k1);
        obj = obj1;
        ai[3] = b(((Bitmap) (obj1)), i1, 100);
        obj = obj1;
        ai[3] = Math.min(ai[3], b(((Bitmap) (obj1)), i1, j1 / 2));
        obj = obj1;
        ai[3] = Math.min(ai[3], b(((Bitmap) (obj1)), i1, j1 - 100));
        obj = obj1;
        ai[3] = Math.min(ai[3], i2);
        i1 = ai[0];
        j1 = ai[1];
        k1 = ai[2];
        i2 = ai[3];
        obj2 = obj1;
        if (i1 + j1 + k1 + i2 <= 10) goto _L14; else goto _L15
_L15:
        i1 = ai[0];
        j1 = ai[1];
        obj = obj1;
        k1 = ((Bitmap) (obj1)).getWidth();
        i2 = ai[0];
        j2 = ai[2];
        obj = obj1;
        k2 = ((Bitmap) (obj1)).getHeight();
        l2 = ai[1];
        obj = obj1;
        ai = Bitmap.createBitmap(((Bitmap) (obj1)), i1, j1, k1 - (i2 + j2), k2 - (ai[3] + l2));
_L24:
        obj2 = obj1;
        if (ai == null) goto _L14; else goto _L16
_L16:
        obj2 = obj1;
        if (obj1 == ai) goto _L14; else goto _L17
_L17:
        obj = obj1;
        ((Bitmap) (obj1)).recycle();
        obj2 = ai;
_L14:
        obj1 = obj2;
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_1272;
        }
        obj = obj2;
        ai = agr.a(((Bitmap) (obj2)));
        obj1 = obj2;
        if (ai == obj2)
        {
            break MISSING_BLOCK_LABEL_1272;
        }
        obj = obj2;
        ((Bitmap) (obj2)).recycle();
        obj1 = ai;
        obj = obj1;
        obj1 = agl.a(((Bitmap) (obj1)));
        return ((Bitmap) (obj1));
_L8:
        if (i1 != -1)
        {
            break MISSING_BLOCK_LABEL_1319;
        }
        i1 = k / j1;
          goto _L18
        i1 = Math.max(k / j1, j / i1);
          goto _L18
_L6:
        i1 = k * j * 2;
        if (i1 <= l) goto _L20; else goto _L19
_L19:
        d1 = (double)i1 / (double)l;
        if (d1 <= 1.0D) goto _L22; else goto _L21
_L21:
        i1 = (int)Math.ceil(d1);
          goto _L18
_L12:
        obj1 = BitmapFactory.decodeByteArray(((byte []) (obj2)), 0, obj2.length, ((android.graphics.BitmapFactory.Options) (obj1)));
          goto _L23
        obj;
        ai = null;
          goto _L24
        exception;
        obj = null;
_L27:
        exception.printStackTrace();
        return ((Bitmap) (obj));
        exception;
_L26:
        exception.printStackTrace();
        return ((Bitmap) (obj));
        exception;
        obj = null;
        if (true) goto _L26; else goto _L25
_L25:
        exception;
        if (true) goto _L27; else goto _L2
_L2:
        return null;
_L22:
        i1 = 1;
          goto _L18
        i1 = j1;
          goto _L28
    }

    static void a(afb afb1)
    {
        afb1.h();
    }

    private static boolean a(int i1)
    {
label0:
        {
            int j1;
            if (i1 == -1)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            if (j1 == 0)
            {
                j1 = Color.red(i1);
                int k1 = Color.green(i1);
                i1 = Color.blue(i1);
                double d1 = j1;
                if ((double)k1 * 0.114D + 0.29899999999999999D * d1 + (double)i1 * 0.58699999999999997D <= 100D)
                {
                    break label0;
                }
            }
            return true;
        }
        return false;
    }

    private static int b(Bitmap bitmap, int i1, int j1)
    {
        int k1 = 0;
        int l1 = 0;
        int i2 = i1;
        if (i1 == 0)
        {
            i2 = bitmap.getHeight();
            k1 = 0;
            i1 = l1;
            do
            {
                l1 = i1;
                if (k1 >= i2 - 1)
                {
                    break;
                }
                k1++;
                l1 = i1;
                if (!a(bitmap.getPixel(j1, k1)))
                {
                    break;
                }
                i1++;
            } while (true);
        } else
        {
            do
            {
                l1 = k1;
                if (i2 <= 0)
                {
                    break;
                }
                i2--;
                l1 = k1;
                if (!a(bitmap.getPixel(j1, i2)))
                {
                    break;
                }
                k1++;
            } while (true);
        }
        return l1;
    }

    private void h()
    {
        e.lock();
        if (c == null)
        {
            c = new SoftReference(a());
        }
        e.unlock();
        return;
        Object obj;
        obj;
        Log.e("Prepare Image", "Out of memory", ((Throwable) (obj)));
        e.unlock();
        return;
        obj;
        ((Exception) (obj)).printStackTrace();
        e.unlock();
        return;
        obj;
        e.unlock();
        throw obj;
    }

    private byte[] i()
    {
        b();
        return m;
    }

    public final Bitmap a()
    {
        boolean flag2 = true;
        if (c != null && c.get() != null && !((Bitmap)c.get()).isRecycled()) goto _L2; else goto _L1
_L1:
        boolean flag1;
        aeu aeu1 = aei.a().d;
        boolean flag3 = aeu1.c("crop-margins");
        String s = aeu1.b("two-page-scans");
        boolean flag4 = aeu1.c("show-2-pages-in-landscape");
        boolean flag5 = ahf.a();
        boolean flag;
        if ("prefSplit".equals(s) || "prefSplitInPortrait".equals(s) && !flag5)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        flag1 = flag2;
        if (!flag5) goto _L6; else goto _L5
_L5:
        if (flag4) goto _L4; else goto _L7
_L7:
        flag1 = flag2;
_L6:
        return a(-1, -1, flag3, flag1, aeu1.c("image-enhancer"));
_L4:
        flag1 = false;
        if (true) goto _L6; else goto _L2
_L2:
        Bitmap bitmap = (Bitmap)c.get();
        c.clear();
        c = null;
        return bitmap;
    }

    public final Bitmap a(int i1, int j1)
    {
        Bitmap bitmap;
        try
        {
            bitmap = a(i1, j1, false, false, false);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return bitmap;
    }

    public final void a(boolean flag)
    {
        if (m != null)
        {
            return;
        } else
        {
            Thread thread = new Thread(new Runnable(flag) {

                final boolean a;
                final afb b;

                public final void run()
                {
                    System.gc();
                    b.b();
                    if (a)
                    {
                        afb.a(b);
                    }
                }

            
            {
                b = afb.this;
                a = flag;
                super();
            }
            });
            thread.setPriority(4);
            thread.start();
            return;
        }
    }

    public final void b()
    {
        if (m != null)
        {
            return;
        }
        d.lock();
        ags ags1;
        if (m != null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        ags1 = (ags)f.a();
        if (ags1 == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        m = ags1.a();
        ags1.close();
        d.unlock();
        return;
        Object obj;
        obj;
        ((IOException) (obj)).printStackTrace();
        d.unlock();
        return;
        obj;
        Log.e("Prepare Content", "Out of memory", ((Throwable) (obj)));
        d.unlock();
        return;
        obj;
        d.unlock();
        throw obj;
    }

    public final Bitmap c()
    {
        Bitmap bitmap;
        try
        {
            bitmap = a(-1, -1, false, true, false);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return bitmap;
    }

    public final boolean d()
    {
        boolean flag = false;
        if (b < a - 1)
        {
            b = b + 1;
            flag = true;
            c = null;
        }
        return flag;
    }

    public final String e()
    {
        String s;
        if (g)
        {
            if (b < h)
            {
                s = "A";
            } else
            {
                s = "B";
            }
        } else
        {
            s = "";
        }
        if (h > 1)
        {
            int i1 = b;
            int j1 = h;
            s = (new StringBuilder(" S")).append(i1 % j1 + 1).toString();
        }
        return s;
    }

    public final int f()
    {
        if (a == -1)
        {
            h();
        }
        return a;
    }

    public final boolean g()
    {
        if (i == -1)
        {
            h();
        }
        return i != 0;
    }

}
