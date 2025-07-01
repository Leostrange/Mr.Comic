// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

public abstract class agg
{
    public static final class a extends Enum
    {

        public static final int a;
        public static final int b;
        private static final int c[];

        static 
        {
            a = 1;
            b = 2;
            c = (new int[] {
                a, b
            });
        }
    }

    public static interface b
    {

        public abstract void a(agg agg1, int i1, boolean flag);
    }

    public static final class c
    {

        public int a;
        public int b;
        public int c;
        public int d;

        public c(ImageView imageview, int i1, Bitmap bitmap)
        {
            int j1;
            int k1;
            int l1;
            int i2;
            j1 = imageview.getWidth();
            k1 = imageview.getHeight();
            l1 = bitmap.getWidth();
            i2 = bitmap.getHeight();
            a = j1;
            b = k1;
            d = 0;
            c = 0;
            _cls2.a[i1 - 1];
            JVM INSTR tableswitch 1 5: default 92
        //                       1 92
        //                       2 92
        //                       3 137
        //                       4 156
        //                       5 175;
               goto _L1 _L1 _L1 _L2 _L3 _L4
_L1:
            if (b < k1)
            {
                c = (k1 - b) / 2;
            }
            if (a < j1)
            {
                d = (j1 - a) / 2;
            }
            return;
_L2:
            b = Math.round((i2 * j1) / l1);
            continue; /* Loop/switch isn't completed */
_L3:
            a = Math.round((l1 * k1) / i2);
            continue; /* Loop/switch isn't completed */
_L4:
            double d1 = Math.min((double)j1 / (double)l1, (double)k1 / (double)i2);
            a = (int)Math.round((double)l1 * d1);
            b = (int)Math.round((double)i2 * d1);
            if (true) goto _L1; else goto _L5
_L5:
        }
    }


    protected WeakReference a;
    protected WeakReference b;
    protected int c;
    protected int d;
    protected int e;
    protected int f;
    protected int g;
    protected c h;
    protected c i;
    protected int j;
    protected int k;
    protected int l;
    protected int m;
    public boolean n;
    b o;
    WeakReference p;

    public agg(ImageView imageview, int i1, int j1)
    {
        n = true;
        p = new WeakReference(imageview);
        e = Math.round(1000 / i1);
        d = j1 / e;
        f = j1;
    }

    private void a()
    {
        ((ImageView)p.get()).postDelayed(new Runnable() {

            final agg a;

            public final void run()
            {
                ((ImageView)a.p.get()).invalidate();
                agg agg1;
                if (a.n && a.g < a.d)
                {
                    agg.a(a);
                } else
                {
                    a.o.a(a, a.c, a.n);
                }
                agg1 = a;
                agg1.g = agg1.g + 1;
            }

            
            {
                a = agg.this;
                super();
            }
        }, e);
    }

    static void a(agg agg1)
    {
        agg1.a();
    }

    public final void a(Bitmap bitmap, Bitmap bitmap1, int i1, int j1, b b1)
    {
        a = new WeakReference(bitmap);
        b = new WeakReference(bitmap1);
        o = b1;
        c = j1;
        g = 0;
        j = bitmap.getWidth();
        k = bitmap.getHeight();
        l = bitmap1.getWidth();
        m = bitmap1.getHeight();
        h = new c((ImageView)p.get(), i1, bitmap);
        i = new c((ImageView)p.get(), i1, bitmap1);
        a();
    }

    public abstract void a(Canvas canvas);

    // Unreferenced inner class agg$2

/* anonymous class */
    static final class _cls2
    {

        static final int a[];

        static 
        {
            a = new int[meanlabs.comicreader.Viewer.b.a().length];
            try
            {
                a[meanlabs.comicreader.Viewer.b.b - 1] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                a[meanlabs.comicreader.Viewer.b.e - 1] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[meanlabs.comicreader.Viewer.b.c - 1] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[meanlabs.comicreader.Viewer.b.d - 1] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[meanlabs.comicreader.Viewer.b.a - 1] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror)
            {
                return;
            }
        }
    }

}
