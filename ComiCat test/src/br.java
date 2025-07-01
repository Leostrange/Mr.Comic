// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class br
{

    // Unreferenced inner class br$1

/* anonymous class */
    static final class _cls1 extends AnimatorListenerAdapter
    {

        final bt a;
        final View b;

        public final void onAnimationCancel(Animator animator)
        {
            a.onAnimationCancel(b);
        }

        public final void onAnimationEnd(Animator animator)
        {
            a.onAnimationEnd(b);
        }

        public final void onAnimationStart(Animator animator)
        {
            a.onAnimationStart(b);
        }

            
            {
                a = bt1;
                b = view;
                super();
            }
    }

}
