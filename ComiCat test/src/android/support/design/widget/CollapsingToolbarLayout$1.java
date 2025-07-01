// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.view.View;
import bc;
import bw;

// Referenced classes of package android.support.design.widget:
//            CollapsingToolbarLayout

class this._cls0
    implements bc
{

    final CollapsingToolbarLayout this$0;

    public bw onApplyWindowInsets(View view, bw bw1)
    {
        CollapsingToolbarLayout.access$002(CollapsingToolbarLayout.this, bw1);
        requestLayout();
        return bw1.f();
    }

    ()
    {
        this$0 = CollapsingToolbarLayout.this;
        super();
    }
}
