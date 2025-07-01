// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.view.View;
import bc;
import bh;
import bw;

// Referenced classes of package android.support.v7.app:
//            AppCompatDelegateImplV7

class this._cls0
    implements bc
{

    final AppCompatDelegateImplV7 this$0;

    public bw onApplyWindowInsets(View view, bw bw1)
    {
        int i = bw1.b();
        int j = AppCompatDelegateImplV7.access$300(AppCompatDelegateImplV7.this, i);
        bw bw2 = bw1;
        if (i != j)
        {
            bw2 = bw1.a(bw1.a(), j, bw1.c(), bw1.d());
        }
        return bh.a(view, bw2);
    }

    ()
    {
        this$0 = AppCompatDelegateImplV7.this;
        super();
    }
}
