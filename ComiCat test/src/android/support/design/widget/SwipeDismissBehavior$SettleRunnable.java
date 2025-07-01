// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.view.View;
import bh;
import cu;

// Referenced classes of package android.support.design.widget:
//            SwipeDismissBehavior

class mDismiss
    implements Runnable
{

    private final boolean mDismiss;
    private final View mView;
    final SwipeDismissBehavior this$0;

    public void run()
    {
        if (SwipeDismissBehavior.access$100(SwipeDismissBehavior.this) != null && SwipeDismissBehavior.access$100(SwipeDismissBehavior.this).c())
        {
            bh.a(mView, this);
        } else
        if (mDismiss && SwipeDismissBehavior.access$000(SwipeDismissBehavior.this) != null)
        {
            SwipeDismissBehavior.access$000(SwipeDismissBehavior.this).onDismiss(mView);
            return;
        }
    }

    er(View view, boolean flag)
    {
        this$0 = SwipeDismissBehavior.this;
        super();
        mView = view;
        mDismiss = flag;
    }
}
