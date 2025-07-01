// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Canvas;
import android.widget.EdgeEffect;

public final class cm
{
    static final class a
        implements c
    {

        public final Object a(Context context)
        {
            return null;
        }

        public final void a(Object obj, int i, int j)
        {
        }

        public final boolean a(Object obj)
        {
            return true;
        }

        public final boolean a(Object obj, float f)
        {
            return false;
        }

        public final boolean a(Object obj, float f, float f1)
        {
            return false;
        }

        public final boolean a(Object obj, int i)
        {
            return false;
        }

        public final boolean a(Object obj, Canvas canvas)
        {
            return false;
        }

        public final void b(Object obj)
        {
        }

        public final boolean c(Object obj)
        {
            return false;
        }

        a()
        {
        }
    }

    static class b
        implements c
    {

        public final Object a(Context context)
        {
            return new EdgeEffect(context);
        }

        public final void a(Object obj, int i, int j)
        {
            ((EdgeEffect)obj).setSize(i, j);
        }

        public final boolean a(Object obj)
        {
            return ((EdgeEffect)obj).isFinished();
        }

        public final boolean a(Object obj, float f)
        {
            return cn.a(obj, f);
        }

        public boolean a(Object obj, float f, float f1)
        {
            return cn.a(obj, f);
        }

        public final boolean a(Object obj, int i)
        {
            ((EdgeEffect)obj).onAbsorb(i);
            return true;
        }

        public final boolean a(Object obj, Canvas canvas)
        {
            return ((EdgeEffect)obj).draw(canvas);
        }

        public final void b(Object obj)
        {
            ((EdgeEffect)obj).finish();
        }

        public final boolean c(Object obj)
        {
            obj = (EdgeEffect)obj;
            ((EdgeEffect) (obj)).onRelease();
            return ((EdgeEffect) (obj)).isFinished();
        }

        b()
        {
        }
    }

    static interface c
    {

        public abstract Object a(Context context);

        public abstract void a(Object obj, int i, int j);

        public abstract boolean a(Object obj);

        public abstract boolean a(Object obj, float f);

        public abstract boolean a(Object obj, float f, float f1);

        public abstract boolean a(Object obj, int i);

        public abstract boolean a(Object obj, Canvas canvas);

        public abstract void b(Object obj);

        public abstract boolean c(Object obj);
    }

    static final class d extends b
    {

        public final boolean a(Object obj, float f, float f1)
        {
            ((EdgeEffect)obj).onPull(f, f1);
            return true;
        }

        d()
        {
        }
    }


    private static final c b;
    private Object a;

    public cm(Context context)
    {
        a = b.a(context);
    }

    public final void a(int i, int j)
    {
        b.a(a, i, j);
    }

    public final boolean a()
    {
        return b.a(a);
    }

    public final boolean a(float f)
    {
        return b.a(a, f);
    }

    public final boolean a(float f, float f1)
    {
        return b.a(a, f, f1);
    }

    public final boolean a(int i)
    {
        return b.a(a, i);
    }

    public final boolean a(Canvas canvas)
    {
        return b.a(a, canvas);
    }

    public final void b()
    {
        b.b(a);
    }

    public final boolean c()
    {
        return b.c(a);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            b = new d();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            b = new b();
        } else
        {
            b = new a();
        }
    }
}
