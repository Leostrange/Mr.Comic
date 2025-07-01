// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import bh;
import cs;

// Referenced classes of package android.support.design.widget:
//            AppBarLayout, CoordinatorLayout

class mLayout
    implements Runnable
{

    private final AppBarLayout mLayout;
    private final CoordinatorLayout mParent;
    final mLayout this$0;

    public void run()
    {
        if (mLayout != null && mLayout(this._cls0.this) != null && this._mth0(this._cls0.this).g())
        {
            ttomOffset(mParent, mLayout, mLayout(this._cls0.this).c());
            bh.a(mLayout, this);
        }
    }

    (CoordinatorLayout coordinatorlayout, AppBarLayout appbarlayout)
    {
        this$0 = this._cls0.this;
        super();
        mParent = coordinatorlayout;
        mLayout = appbarlayout;
    }
}
