// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import df;

public class AppCompatTextView extends TextView
{

    public AppCompatTextView(Context context)
    {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x1010084);
    }

    public AppCompatTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, cv.k.AppCompatTextView, i, 0);
        int j = typedarray.getResourceId(cv.k.AppCompatTextView_android_textAppearance, -1);
        typedarray.recycle();
        if (j != -1)
        {
            TypedArray typedarray1 = context.obtainStyledAttributes(j, cv.k.TextAppearance);
            if (typedarray1.hasValue(cv.k.TextAppearance_textAllCaps))
            {
                setAllCaps(typedarray1.getBoolean(cv.k.TextAppearance_textAllCaps, false));
            }
            typedarray1.recycle();
        }
        context = context.obtainStyledAttributes(attributeset, cv.k.AppCompatTextView, i, 0);
        if (context.hasValue(cv.k.AppCompatTextView_textAllCaps))
        {
            setAllCaps(context.getBoolean(cv.k.AppCompatTextView_textAllCaps, false));
        }
        context.recycle();
    }

    public void setAllCaps(boolean flag)
    {
        df df1;
        if (flag)
        {
            df1 = new df(getContext());
        } else
        {
            df1 = null;
        }
        setTransformationMethod(df1);
    }

    public void setTextAppearance(Context context, int i)
    {
        super.setTextAppearance(context, i);
        context = context.obtainStyledAttributes(i, cv.k.TextAppearance);
        if (context.hasValue(cv.k.TextAppearance_textAllCaps))
        {
            setAllCaps(context.getBoolean(cv.k.TextAppearance_textAllCaps, false));
        }
        context.recycle();
    }
}
