// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.accessibility.AccessibilityEvent;

public final class by
{
    static class a extends c
    {

        a()
        {
        }
    }

    static final class b extends a
    {

        public final int a(AccessibilityEvent accessibilityevent)
        {
            return accessibilityevent.getContentChangeTypes();
        }

        public final void a(AccessibilityEvent accessibilityevent, int i)
        {
            accessibilityevent.setContentChangeTypes(i);
        }

        b()
        {
        }
    }

    static class c
        implements d
    {

        public int a(AccessibilityEvent accessibilityevent)
        {
            return 0;
        }

        public void a(AccessibilityEvent accessibilityevent, int i)
        {
        }

        c()
        {
        }
    }

    static interface d
    {

        public abstract int a(AccessibilityEvent accessibilityevent);

        public abstract void a(AccessibilityEvent accessibilityevent, int i);
    }


    private static final d a;

    public static cd a(AccessibilityEvent accessibilityevent)
    {
        return new cd(accessibilityevent);
    }

    public static void a(AccessibilityEvent accessibilityevent, int i)
    {
        a.a(accessibilityevent, i);
    }

    public static int b(AccessibilityEvent accessibilityevent)
    {
        return a.a(accessibilityevent);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a = new a();
        } else
        {
            a = new c();
        }
    }
}
