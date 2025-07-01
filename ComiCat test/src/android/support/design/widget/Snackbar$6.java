// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.view.View;
import bu;

// Referenced classes of package android.support.design.widget:
//            Snackbar, SnackbarManager

class this._cls0 extends bu
{

    final Snackbar this$0;

    public void onAnimationEnd(View view)
    {
        SnackbarManager.getInstance().onShown(Snackbar.access$100(Snackbar.this));
    }

    public void onAnimationStart(View view)
    {
        Snackbar.access$300(Snackbar.this).animateChildrenIn(70, 180);
    }

    ackbarLayout()
    {
        this$0 = Snackbar.this;
        super();
    }
}
