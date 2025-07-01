// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

public final class afx extends afy
{
    final class a extends android.view.ScaleGestureDetector.SimpleOnScaleGestureListener
    {

        final afx a;

        public final boolean onScale(ScaleGestureDetector scalegesturedetector)
        {
            return a.a.a(a);
        }

        public final boolean onScaleBegin(ScaleGestureDetector scalegesturedetector)
        {
            return a.a.a();
        }

        public final void onScaleEnd(ScaleGestureDetector scalegesturedetector)
        {
            a.a.b();
        }

        private a()
        {
            a = afx.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    afy.a a;
    private ScaleGestureDetector b;

    public afx(Context context, afy.a a1)
    {
        a = a1;
        b = new ScaleGestureDetector(context, new a((byte)0));
    }

    public final boolean a()
    {
        return b.isInProgress();
    }

    public final boolean a(MotionEvent motionevent)
    {
        boolean flag;
        try
        {
            flag = b.onTouchEvent(motionevent);
        }
        // Misplaced declaration of an exception variable
        catch (MotionEvent motionevent)
        {
            return false;
        }
        return flag;
    }

    public final float b()
    {
        return b.getScaleFactor();
    }
}
