// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

public final class bn
{
    static class a extends e
    {

        a()
        {
        }
    }

    static interface b
    {

        public abstract void a(ViewParent viewparent, View view);

        public abstract void a(ViewParent viewparent, View view, int i, int j, int k, int l);

        public abstract void a(ViewParent viewparent, View view, int i, int j, int ai[]);

        public abstract boolean a(ViewParent viewparent, View view, float f, float f1);

        public abstract boolean a(ViewParent viewparent, View view, float f, float f1, boolean flag);

        public abstract boolean a(ViewParent viewparent, View view, View view1, int i);

        public abstract void b(ViewParent viewparent, View view, View view1, int i);
    }

    static class c extends a
    {

        c()
        {
        }
    }

    static final class d extends c
    {

        public final void a(ViewParent viewparent, View view)
        {
            try
            {
                viewparent.onStopNestedScroll(view);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder("ViewParent ")).append(viewparent).append(" does not implement interface method onStopNestedScroll").toString(), view);
            }
        }

        public final void a(ViewParent viewparent, View view, int i, int j, int k, int l)
        {
            try
            {
                viewparent.onNestedScroll(view, i, j, k, l);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder("ViewParent ")).append(viewparent).append(" does not implement interface method onNestedScroll").toString(), view);
            }
        }

        public final void a(ViewParent viewparent, View view, int i, int j, int ai[])
        {
            try
            {
                viewparent.onNestedPreScroll(view, i, j, ai);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder("ViewParent ")).append(viewparent).append(" does not implement interface method onNestedPreScroll").toString(), view);
            }
        }

        public final boolean a(ViewParent viewparent, View view, float f, float f1)
        {
            return bo.a(viewparent, view, f, f1);
        }

        public final boolean a(ViewParent viewparent, View view, float f, float f1, boolean flag)
        {
            return bo.a(viewparent, view, f, f1, flag);
        }

        public final boolean a(ViewParent viewparent, View view, View view1, int i)
        {
            return bo.a(viewparent, view, view1, i);
        }

        public final void b(ViewParent viewparent, View view, View view1, int i)
        {
            try
            {
                viewparent.onNestedScrollAccepted(view, view1, i);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder("ViewParent ")).append(viewparent).append(" does not implement interface method onNestedScrollAccepted").toString(), view);
            }
        }

        d()
        {
        }
    }

    static class e
        implements b
    {

        public void a(ViewParent viewparent, View view)
        {
            if (viewparent instanceof ba)
            {
                ((ba)viewparent).onStopNestedScroll(view);
            }
        }

        public void a(ViewParent viewparent, View view, int i, int j, int k, int l)
        {
            if (viewparent instanceof ba)
            {
                ((ba)viewparent).onNestedScroll(view, i, j, k, l);
            }
        }

        public void a(ViewParent viewparent, View view, int i, int j, int ai[])
        {
            if (viewparent instanceof ba)
            {
                ((ba)viewparent).onNestedPreScroll(view, i, j, ai);
            }
        }

        public boolean a(ViewParent viewparent, View view, float f, float f1)
        {
            if (viewparent instanceof ba)
            {
                return ((ba)viewparent).onNestedPreFling(view, f, f1);
            } else
            {
                return false;
            }
        }

        public boolean a(ViewParent viewparent, View view, float f, float f1, boolean flag)
        {
            if (viewparent instanceof ba)
            {
                return ((ba)viewparent).onNestedFling(view, f, f1, flag);
            } else
            {
                return false;
            }
        }

        public boolean a(ViewParent viewparent, View view, View view1, int i)
        {
            if (viewparent instanceof ba)
            {
                return ((ba)viewparent).onStartNestedScroll(view, view1, i);
            } else
            {
                return false;
            }
        }

        public void b(ViewParent viewparent, View view, View view1, int i)
        {
            if (viewparent instanceof ba)
            {
                ((ba)viewparent).onNestedScrollAccepted(view, view1, i);
            }
        }

        e()
        {
        }
    }


    static final b a;

    public static void a(ViewParent viewparent, View view)
    {
        a.a(viewparent, view);
    }

    public static void a(ViewParent viewparent, View view, int i, int j, int k, int l)
    {
        a.a(viewparent, view, i, j, k, l);
    }

    public static void a(ViewParent viewparent, View view, int i, int j, int ai[])
    {
        a.a(viewparent, view, i, j, ai);
    }

    public static boolean a(ViewParent viewparent, View view, float f, float f1)
    {
        return a.a(viewparent, view, f, f1);
    }

    public static boolean a(ViewParent viewparent, View view, float f, float f1, boolean flag)
    {
        return a.a(viewparent, view, f, f1, flag);
    }

    public static boolean a(ViewParent viewparent, View view, View view1, int i)
    {
        return a.a(viewparent, view, view1, i);
    }

    public static void b(ViewParent viewparent, View view, View view1, int i)
    {
        a.b(viewparent, view, view1, i);
    }

    static 
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 21)
        {
            a = new d();
        } else
        if (i >= 19)
        {
            a = new c();
        } else
        if (i >= 14)
        {
            a = new a();
        } else
        {
            a = new e();
        }
    }
}
