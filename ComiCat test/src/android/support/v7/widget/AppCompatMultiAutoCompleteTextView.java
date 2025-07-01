// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.MultiAutoCompleteTextView;
import ep;
import eq;
import er;
import es;

public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView
{

    private static final int a[] = {
        0x10100d4, 0x1010176
    };
    private eq b;
    private eq c;
    private er d;

    public AppCompatMultiAutoCompleteTextView(Context context)
    {
        this(context, null);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, cv.a.autoCompleteTextViewStyle);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeset, int i)
    {
        super(ep.a(context), attributeset, i);
        if (er.a)
        {
            context = es.a(getContext(), attributeset, a, i);
            d = context.a();
            if (context.d(0))
            {
                attributeset = context.a().a(context.e(0, -1));
                if (attributeset != null)
                {
                    setInternalBackgroundTint(attributeset);
                }
            }
            if (context.d(1))
            {
                setDropDownBackgroundDrawable(context.a(1));
            }
            ((es) (context)).a.recycle();
        }
    }

    private void a()
    {
        if (getBackground() != null)
        {
            if (c != null)
            {
                er.a(this, c);
            } else
            if (b != null)
            {
                er.a(this, b);
                return;
            }
        }
    }

    private void setInternalBackgroundTint(ColorStateList colorstatelist)
    {
        if (colorstatelist != null)
        {
            if (b == null)
            {
                b = new eq();
            }
            b.a = colorstatelist;
            b.d = true;
        } else
        {
            b = null;
        }
        a();
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        a();
    }

    public ColorStateList getSupportBackgroundTintList()
    {
        if (c != null)
        {
            return c.a;
        } else
        {
            return null;
        }
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode()
    {
        if (c != null)
        {
            return c.b;
        } else
        {
            return null;
        }
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        super.setBackgroundDrawable(drawable);
        setInternalBackgroundTint(null);
    }

    public void setBackgroundResource(int i)
    {
        super.setBackgroundResource(i);
        ColorStateList colorstatelist;
        if (d != null)
        {
            colorstatelist = d.a(i);
        } else
        {
            colorstatelist = null;
        }
        setInternalBackgroundTint(colorstatelist);
    }

    public void setDropDownBackgroundResource(int i)
    {
        if (d != null)
        {
            setDropDownBackgroundDrawable(d.a(i, false));
            return;
        } else
        {
            super.setDropDownBackgroundResource(i);
            return;
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorstatelist)
    {
        if (c == null)
        {
            c = new eq();
        }
        c.a = colorstatelist;
        c.d = true;
        a();
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (c == null)
        {
            c = new eq();
        }
        c.b = mode;
        c.c = true;
        a();
    }

}
