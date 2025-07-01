// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.view.View;
import android.widget.TextView;
import bu;

// Referenced classes of package android.support.design.widget:
//            TextInputLayout

class this._cls0 extends bu
{

    final TextInputLayout this$0;

    public void onAnimationEnd(View view)
    {
        TextInputLayout.access$300(TextInputLayout.this).setText(null);
        TextInputLayout.access$300(TextInputLayout.this).setVisibility(4);
    }

    ()
    {
        this$0 = TextInputLayout.this;
        super();
    }
}
