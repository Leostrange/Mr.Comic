// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.internal;

import android.graphics.Rect;
import android.view.View;
import bc;
import bh;
import bw;

// Referenced classes of package android.support.design.internal:
//            ScrimInsetsFrameLayout

class this._cls0
    implements bc
{

    final ScrimInsetsFrameLayout this$0;

    public bw onApplyWindowInsets(View view, bw bw1)
    {
        if (ScrimInsetsFrameLayout.access$000(ScrimInsetsFrameLayout.this) == null)
        {
            ScrimInsetsFrameLayout.access$002(ScrimInsetsFrameLayout.this, new Rect());
        }
        ScrimInsetsFrameLayout.access$000(ScrimInsetsFrameLayout.this).set(bw1.a(), bw1.b(), bw1.c(), bw1.d());
        view = ScrimInsetsFrameLayout.this;
        boolean flag;
        if (ScrimInsetsFrameLayout.access$000(ScrimInsetsFrameLayout.this).isEmpty() || ScrimInsetsFrameLayout.access$100(ScrimInsetsFrameLayout.this) == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view.setWillNotDraw(flag);
        bh.d(ScrimInsetsFrameLayout.this);
        return bw1.f();
    }

    ()
    {
        this$0 = ScrimInsetsFrameLayout.this;
        super();
    }
}
