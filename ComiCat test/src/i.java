// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

public final class i
{
    static class a
        implements b
    {

        public void a(Drawable drawable)
        {
        }

        public void a(Drawable drawable, float f1, float f2)
        {
        }

        public void a(Drawable drawable, int i1)
        {
            j.a(drawable, i1);
        }

        public void a(Drawable drawable, int i1, int j1, int k1, int l1)
        {
        }

        public void a(Drawable drawable, ColorStateList colorstatelist)
        {
            j.a(drawable, colorstatelist);
        }

        public void a(Drawable drawable, android.graphics.PorterDuff.Mode mode)
        {
            j.a(drawable, mode);
        }

        public void a(Drawable drawable, boolean flag)
        {
        }

        public boolean b(Drawable drawable)
        {
            return false;
        }

        public Drawable c(Drawable drawable)
        {
            Object obj = drawable;
            if (!(drawable instanceof l))
            {
                obj = new l(drawable);
            }
            return ((Drawable) (obj));
        }

        a()
        {
        }
    }

    static interface b
    {

        public abstract void a(Drawable drawable);

        public abstract void a(Drawable drawable, float f1, float f2);

        public abstract void a(Drawable drawable, int j);

        public abstract void a(Drawable drawable, int j, int l, int i1, int j1);

        public abstract void a(Drawable drawable, ColorStateList colorstatelist);

        public abstract void a(Drawable drawable, android.graphics.PorterDuff.Mode mode);

        public abstract void a(Drawable drawable, boolean flag);

        public abstract boolean b(Drawable drawable);

        public abstract Drawable c(Drawable drawable);
    }

    static class c extends a
    {

        public final void a(Drawable drawable)
        {
            drawable.jumpToCurrentState();
        }

        public Drawable c(Drawable drawable)
        {
            Object obj = drawable;
            if (!(drawable instanceof m))
            {
                obj = new m(drawable);
            }
            return ((Drawable) (obj));
        }

        c()
        {
        }
    }

    static class d extends c
    {

        public final void a(Drawable drawable, boolean flag)
        {
            drawable.setAutoMirrored(flag);
        }

        public final boolean b(Drawable drawable)
        {
            return drawable.isAutoMirrored();
        }

        public Drawable c(Drawable drawable)
        {
            Object obj = drawable;
            if (!(drawable instanceof n))
            {
                obj = new n(drawable);
            }
            return ((Drawable) (obj));
        }

        d()
        {
        }
    }

    static class e extends d
    {

        public final void a(Drawable drawable, float f1, float f2)
        {
            drawable.setHotspot(f1, f2);
        }

        public final void a(Drawable drawable, int l)
        {
            if (drawable instanceof o)
            {
                j.a(drawable, l);
                return;
            } else
            {
                drawable.setTint(l);
                return;
            }
        }

        public final void a(Drawable drawable, int l, int i1, int j1, int k1)
        {
            drawable.setHotspotBounds(l, i1, j1, k1);
        }

        public final void a(Drawable drawable, ColorStateList colorstatelist)
        {
            if (drawable instanceof o)
            {
                j.a(drawable, colorstatelist);
                return;
            } else
            {
                drawable.setTintList(colorstatelist);
                return;
            }
        }

        public final void a(Drawable drawable, android.graphics.PorterDuff.Mode mode)
        {
            if (drawable instanceof o)
            {
                j.a(drawable, mode);
                return;
            } else
            {
                drawable.setTintMode(mode);
                return;
            }
        }

        public Drawable c(Drawable drawable)
        {
            Object obj = drawable;
            if (drawable instanceof GradientDrawable)
            {
                obj = new o(drawable);
            }
            return ((Drawable) (obj));
        }

        e()
        {
        }
    }

    static final class f extends e
    {

        public final Drawable c(Drawable drawable)
        {
            return drawable;
        }

        f()
        {
        }
    }


    static final b a;

    public static void a(Drawable drawable)
    {
        a.a(drawable);
    }

    public static void a(Drawable drawable, float f1, float f2)
    {
        a.a(drawable, f1, f2);
    }

    public static void a(Drawable drawable, int j)
    {
        a.a(drawable, j);
    }

    public static void a(Drawable drawable, int j, int l, int i1, int j1)
    {
        a.a(drawable, j, l, i1, j1);
    }

    public static void a(Drawable drawable, ColorStateList colorstatelist)
    {
        a.a(drawable, colorstatelist);
    }

    public static void a(Drawable drawable, android.graphics.PorterDuff.Mode mode)
    {
        a.a(drawable, mode);
    }

    public static void a(Drawable drawable, boolean flag)
    {
        a.a(drawable, flag);
    }

    public static boolean b(Drawable drawable)
    {
        return a.b(drawable);
    }

    public static Drawable c(Drawable drawable)
    {
        return a.c(drawable);
    }

    public static Drawable d(Drawable drawable)
    {
        Drawable drawable1 = drawable;
        if (drawable instanceof k)
        {
            drawable1 = ((k)drawable).a();
        }
        return drawable1;
    }

    static 
    {
        int j = android.os.Build.VERSION.SDK_INT;
        if (j >= 22)
        {
            a = new f();
        } else
        if (j >= 21)
        {
            a = new e();
        } else
        if (j >= 19)
        {
            a = new d();
        } else
        if (j >= 11)
        {
            a = new c();
        } else
        {
            a = new a();
        }
    }
}
