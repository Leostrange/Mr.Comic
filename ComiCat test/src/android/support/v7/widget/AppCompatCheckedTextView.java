// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import er;
import es;

public class AppCompatCheckedTextView extends CheckedTextView
{

    private static final int a[] = {
        0x1010108
    };
    private er b;

    public AppCompatCheckedTextView(Context context)
    {
        this(context, null);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x10103c8);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        if (er.a)
        {
            context = es.a(getContext(), attributeset, a, i);
            setCheckMarkDrawable(context.a(0));
            ((es) (context)).a.recycle();
            b = context.a();
        }
    }

    public void setCheckMarkDrawable(int i)
    {
        if (b != null)
        {
            setCheckMarkDrawable(b.a(i, false));
            return;
        } else
        {
            super.setCheckMarkDrawable(i);
            return;
        }
    }

}
