// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

public final class agh extends agg
{
    final class a
    {

        public float a;
        public float b;
        final agh c;

        public final boolean equals(Object obj)
        {
            boolean flag1 = false;
            boolean flag = flag1;
            if (obj instanceof a)
            {
                obj = (a)obj;
                flag = flag1;
                if (((a) (obj)).a == a)
                {
                    flag = flag1;
                    if (((a) (obj)).b == b)
                    {
                        flag = true;
                    }
                }
            }
            return flag;
        }

        public final String toString()
        {
            return (new StringBuilder("(")).append(a).append(",").append(b).append(")").toString();
        }

        public a(float f, float f1)
        {
            c = agh.this;
            super();
            a = f;
            b = f1;
        }
    }


    private a A;
    private a B;
    private a C;
    private int q;
    private float r;
    private a s;
    private a t;
    private Paint u;
    private boolean v;
    private a w;
    private a x;
    private a y;
    private a z;

    public agh(ImageView imageview, int i)
    {
        super(imageview, 100, i);
        s = new a(0.0F, 0.0F);
        t = new a(0.0F, 0.0F);
        u = new Paint();
        u.setColor(0xffcccccc);
        u.setAntiAlias(true);
        q = 20;
        v = true;
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        float f1 = b().a / d;
        float f = f1;
        if (c == agg.a.a)
        {
            f = f1 * -1F;
        }
        a a1;
        a1 = s;
        a1.a = f + a1.a;
        a1 = s;
        a a2 = C;
        f = a2.a - a1.a;
        f1 = a2.b - a1.b;
        if ((float)Math.sqrt(f1 * f1 + f * f) <= r) goto _L2; else goto _L1
_L1:
        if (a1.a <= C.a + r) goto _L4; else goto _L3
_L3:
        a1.a = C.a + r;
_L6:
        a1.b = (float)(Math.sin(Math.acos(Math.abs(a1.a - C.a) / r)) * (double)r);
_L2:
        s = a1;
        c();
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        if (a1.a >= C.a - r) goto _L6; else goto _L5
_L5:
        a1.a = C.a - r;
          goto _L6
        Exception exception;
        exception;
        throw exception;
    }

    private agg.c b()
    {
        if (c == agg.a.b)
        {
            return h;
        } else
        {
            return i;
        }
    }

    private void c()
    {
        int i = b().a;
        int j = b().b;
        w.a = (float)i - s.a;
        w.b = j;
        z.a = 0.0F;
        z.b = 0.0F;
        double d;
        double d1;
        if (w.a > (float)i / 1.25F)
        {
            z.a = i;
            z.b = (float)j - (((float)i - w.a) * (float)j) / w.a;
        } else
        {
            z.a = (int)(w.a * 1.25F);
            z.b = 0.0F;
        }
        d1 = Math.atan(((float)j - z.b) / ((z.a + s.a) - (float)i));
        d = Math.cos(2D * d1);
        d1 = Math.sin(d1 * 2D);
        B.a = (float)((double)((float)i - s.a) + (double)s.a * d);
        B.b = (float)((double)j - (double)s.a * d1);
        if (w.a > (float)i / 1.25F)
        {
            A.a = z.a;
            A.b = z.b;
            return;
        } else
        {
            a a1 = A;
            double d2 = z.a;
            a1.a = (float)(d * (double)((float)i - z.a) + d2);
            A.b = (float)(-(d1 * (double)((float)i - z.a)));
            return;
        }
    }

    public final void a(Canvas canvas)
    {
        Object obj;
        boolean flag = false;
        if (v)
        {
            v = false;
            r = b().a;
            if (c == agg.a.a)
            {
                flag = true;
            }
            obj = s;
            float f;
            Object obj1;
            int i;
            if (flag)
            {
                f = b().a;
            } else
            {
                f = q;
            }
            obj.a = f;
            s.b = q;
            t.a = 0.0F;
            t.b = 0.0F;
            w = new a(q, 0.0F);
            x = new a(b().a, b().b);
            y = new a(b().a, 0.0F);
            z = new a(0.0F, 0.0F);
            A = new a(0.0F, 0.0F);
            B = new a(0.0F, 0.0F);
            if (flag)
            {
                f = b().a;
            } else
            {
                f = 0.0F;
            }
            C = new a(f, 0.0F);
            c();
        }
        a();
        obj = b();
        obj1 = new Rect();
        obj1.left = ((agg.c) (obj)).d;
        obj1.top = ((agg.c) (obj)).c;
        obj1.bottom = ((Rect) (obj1)).top + ((agg.c) (obj)).b;
        i = ((Rect) (obj1)).left;
        obj1.right = ((agg.c) (obj)).a + i;
        if (c != agg.a.b) goto _L2; else goto _L1
_L1:
        obj = (Bitmap)a.get();
_L7:
        canvas.drawBitmap(((Bitmap) (obj)), null, ((Rect) (obj1)), null);
_L8:
        obj = new Path();
        ((Path) (obj)).moveTo(w.a, w.b);
        ((Path) (obj)).lineTo(x.a, x.b);
        ((Path) (obj)).lineTo(y.a, y.b);
        ((Path) (obj)).lineTo(z.a, z.b);
        ((Path) (obj)).lineTo(w.a, w.b);
        (new StringBuilder("Background path is: ")).append(w.toString()).append(": ").append(x.toString()).append(": ").append(y.toString()).append(":").append(z.toString()).append(": ").append(w.toString());
        canvas.save();
        canvas.clipPath(((Path) (obj)));
        if (c != agg.a.b) goto _L4; else goto _L3
_L3:
        obj = this.i;
_L9:
        obj1 = new Rect();
        obj1.left = ((agg.c) (obj)).d;
        obj1.top = ((agg.c) (obj)).c;
        obj1.bottom = ((Rect) (obj1)).top + ((agg.c) (obj)).b;
        i = ((Rect) (obj1)).left;
        obj1.right = ((agg.c) (obj)).a + i;
        if (c != agg.a.b) goto _L6; else goto _L5
_L5:
        obj = (Bitmap)b.get();
_L10:
        canvas.drawBitmap(((Bitmap) (obj)), null, ((Rect) (obj1)), null);
        canvas.restore();
_L11:
        obj = b();
        obj1 = new Path();
        ((Path) (obj1)).moveTo(w.a, w.b);
        ((Path) (obj1)).lineTo(z.a, z.b);
        ((Path) (obj1)).lineTo(A.a, A.b);
        ((Path) (obj1)).lineTo(B.a, B.b);
        ((Path) (obj1)).lineTo(w.a, w.b);
        (new StringBuilder("Curl path is: ")).append(w.toString()).append(": ").append(z.toString()).append(": ").append(A.toString()).append(":").append(B.toString()).append(": ").append(w.toString());
        ((Path) (obj1)).offset(((agg.c) (obj)).d, ((agg.c) (obj)).c);
        canvas.drawPath(((Path) (obj1)), u);
        return;
_L2:
        obj = (Bitmap)b.get();
          goto _L7
        obj;
        ((Exception) (obj)).printStackTrace();
          goto _L8
_L4:
        obj = h;
          goto _L9
_L6:
        obj = (Bitmap)a.get();
          goto _L10
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L11
    }
}
