// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import er;
import es;

public class AppCompatRadioButton extends RadioButton
{

    private static final int a[] = {
        0x1010107
    };
    private er b;
    private Drawable c;

    public AppCompatRadioButton(Context context)
    {
        this(context, null);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, cv.a.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        if (er.a)
        {
            context = es.a(getContext(), attributeset, a, i);
            setButtonDrawable(context.a(0));
            ((es) (context)).a.recycle();
            b = context.a();
        }
    }

    public int getCompoundPaddingLeft()
    {
        int j = super.getCompoundPaddingLeft();
        int i = j;
        if (android.os.Build.VERSION.SDK_INT < 17)
        {
            i = j;
            if (c != null)
            {
                i = j + c.getIntrinsicWidth();
            }
        }
        return i;
    }

    public void setButtonDrawable(int i)
    {
        if (b != null)
        {
            setButtonDrawable(b.a(i, false));
            return;
        } else
        {
            super.setButtonDrawable(i);
            return;
        }
    }

    public void setButtonDrawable(Drawable drawable)
    {
        super.setButtonDrawable(drawable);
        c = drawable;
    }

}
