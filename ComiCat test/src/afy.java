// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.MotionEvent;

public class afy
{
    public static interface a
    {

        public abstract boolean a();

        public abstract boolean a(afy afy1);

        public abstract void b();
    }

    public static class b
        implements a
    {

        public boolean a()
        {
            return true;
        }

        public boolean a(afy afy1)
        {
            return false;
        }

        public void b()
        {
        }

        public b()
        {
        }
    }


    public afy()
    {
    }

    public boolean a()
    {
        return false;
    }

    public boolean a(MotionEvent motionevent)
    {
        return false;
    }

    public float b()
    {
        return 1.0F;
    }
}
