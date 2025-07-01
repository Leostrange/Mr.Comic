// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import df;
import eo;
import eq;
import er;
import es;

public class AppCompatButton extends Button
{

    private static final int a[] = {
        0x10100d4
    };
    private eq b;
    private eq c;
    private er d;

    public AppCompatButton(Context context)
    {
        this(context, null);
    }

    public AppCompatButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, cv.a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        if (er.a)
        {
            es es1 = es.a(getContext(), attributeset, a, i);
            if (es1.d(0))
            {
                ColorStateList colorstatelist = es1.a().a(es1.e(0, -1));
                if (colorstatelist != null)
                {
                    setInternalBackgroundTint(colorstatelist);
                }
            }
            d = es1.a();
            es1.a.recycle();
        }
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
        attributeset = context.obtainStyledAttributes(attributeset, cv.k.AppCompatTextView, i, 0);
        if (attributeset.hasValue(cv.k.AppCompatTextView_textAllCaps))
        {
            setAllCaps(attributeset.getBoolean(cv.k.AppCompatTextView_textAllCaps, false));
        }
        attributeset.recycle();
        attributeset = getTextColors();
        if (attributeset != null && !attributeset.isStateful())
        {
            if (android.os.Build.VERSION.SDK_INT < 21)
            {
                i = eo.c(context, 0x1010038);
            } else
            {
                i = eo.a(context, 0x1010038);
            }
            setTextColor(eo.a(attributeset.getDefaultColor(), i));
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

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(android/widget/Button.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(android/widget/Button.getName());
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
