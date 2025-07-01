// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import android.view.MotionEvent;

// Referenced classes of package meanlabs.comicreader.ui:
//            GestureListenerActivity

final class b
    implements Runnable
{

    public MotionEvent a;
    final GestureListenerActivity b;

    public final void run()
    {
        b.a(a);
    }

    (GestureListenerActivity gesturelisteneractivity)
    {
        b = gesturelisteneractivity;
        super();
    }
}
