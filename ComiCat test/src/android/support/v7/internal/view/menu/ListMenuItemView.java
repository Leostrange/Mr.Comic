// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import ds;
import du;

public class ListMenuItemView extends LinearLayout
    implements dz.a
{

    private du a;
    private ImageView b;
    private RadioButton c;
    private TextView d;
    private CheckBox e;
    private TextView f;
    private Drawable g;
    private int h;
    private Context i;
    private boolean j;
    private int k;
    private Context l;
    private LayoutInflater m;
    private boolean n;

    public ListMenuItemView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ListMenuItemView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset);
        l = context;
        attributeset = context.obtainStyledAttributes(attributeset, cv.k.MenuView, i1, 0);
        g = attributeset.getDrawable(cv.k.MenuView_android_itemBackground);
        h = attributeset.getResourceId(cv.k.MenuView_android_itemTextAppearance, -1);
        j = attributeset.getBoolean(cv.k.MenuView_preserveIconSpacing, false);
        i = context;
        attributeset.recycle();
    }

    private void a()
    {
        c = (RadioButton)getInflater().inflate(cv.h.abc_list_menu_item_radio, this, false);
        addView(c);
    }

    private void b()
    {
        e = (CheckBox)getInflater().inflate(cv.h.abc_list_menu_item_checkbox, this, false);
        addView(e);
    }

    private LayoutInflater getInflater()
    {
        if (m == null)
        {
            m = LayoutInflater.from(l);
        }
        return m;
    }

    public du getItemData()
    {
        return a;
    }

    public void initialize(du du1, int i1)
    {
        a = du1;
        k = i1;
        if (du1.isVisible())
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        setVisibility(i1);
        setTitle(du1.a(this));
        setCheckable(du1.isCheckable());
        setShortcut(du1.d(), du1.c());
        setIcon(du1.getIcon());
        setEnabled(du1.isEnabled());
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setBackgroundDrawable(g);
        d = (TextView)findViewById(cv.f.title);
        if (h != -1)
        {
            d.setTextAppearance(i, h);
        }
        f = (TextView)findViewById(cv.f.shortcut);
    }

    protected void onMeasure(int i1, int j1)
    {
        if (b != null && j)
        {
            android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
            android.widget.LinearLayout.LayoutParams layoutparams1 = (android.widget.LinearLayout.LayoutParams)b.getLayoutParams();
            if (layoutparams.height > 0 && layoutparams1.width <= 0)
            {
                layoutparams1.width = layoutparams.height;
            }
        }
        super.onMeasure(i1, j1);
    }

    public boolean prefersCondensedTitle()
    {
        return false;
    }

    public void setCheckable(boolean flag)
    {
        if (flag || c != null || e != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        Object obj1;
        if (a.e())
        {
            if (c == null)
            {
                a();
            }
            obj = c;
            obj1 = e;
        } else
        {
            if (e == null)
            {
                b();
            }
            obj = e;
            obj1 = c;
        }
        if (flag)
        {
            ((CompoundButton) (obj)).setChecked(a.isChecked());
            int i1;
            if (flag)
            {
                i1 = 0;
            } else
            {
                i1 = 8;
            }
            if (((CompoundButton) (obj)).getVisibility() != i1)
            {
                ((CompoundButton) (obj)).setVisibility(i1);
            }
            if (obj1 != null && ((CompoundButton) (obj1)).getVisibility() != 8)
            {
                ((CompoundButton) (obj1)).setVisibility(8);
                return;
            }
            if (true)
            {
                continue; /* Loop/switch isn't completed */
            }
        }
        if (e != null)
        {
            e.setVisibility(8);
        }
        if (c != null)
        {
            c.setVisibility(8);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void setChecked(boolean flag)
    {
        Object obj;
        if (a.e())
        {
            if (c == null)
            {
                a();
            }
            obj = c;
        } else
        {
            if (e == null)
            {
                b();
            }
            obj = e;
        }
        ((CompoundButton) (obj)).setChecked(flag);
    }

    public void setForceShowIcon(boolean flag)
    {
        n = flag;
        j = flag;
    }

    public void setIcon(Drawable drawable)
    {
        boolean flag;
        if (a.b.i || n)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        break MISSING_BLOCK_LABEL_22;
        if ((flag || j) && (b != null || drawable != null || j))
        {
            if (b == null)
            {
                b = (ImageView)getInflater().inflate(cv.h.abc_list_menu_item_icon, this, false);
                addView(b, 0);
            }
            if (drawable != null || j)
            {
                ImageView imageview = b;
                if (!flag)
                {
                    drawable = null;
                }
                imageview.setImageDrawable(drawable);
                if (b.getVisibility() != 0)
                {
                    b.setVisibility(0);
                    return;
                }
            } else
            {
                b.setVisibility(8);
                return;
            }
        }
        return;
    }

    public void setShortcut(boolean flag, char c1)
    {
        char c2;
        Object obj;
        TextView textview;
        if (flag && a.d())
        {
            c1 = '\0';
        } else
        {
            c1 = '\b';
        }
        if (c1 != 0) goto _L2; else goto _L1
_L1:
        textview = f;
        c2 = a.c();
        if (c2 != 0) goto _L4; else goto _L3
_L3:
        obj = "";
_L10:
        textview.setText(((CharSequence) (obj)));
_L2:
        if (f.getVisibility() != c1)
        {
            f.setVisibility(c1);
        }
        return;
_L4:
        obj = new StringBuilder(du.f);
        c2;
        JVM INSTR lookupswitch 3: default 124
    //                   8: 153
    //                   10: 141
    //                   32: 165;
           goto _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_165;
_L7:
        break; /* Loop/switch isn't completed */
_L5:
        ((StringBuilder) (obj)).append(c2);
_L11:
        obj = ((StringBuilder) (obj)).toString();
        if (true) goto _L10; else goto _L9
_L9:
        ((StringBuilder) (obj)).append(du.g);
          goto _L11
_L6:
        ((StringBuilder) (obj)).append(du.h);
          goto _L11
        ((StringBuilder) (obj)).append(du.i);
          goto _L11
    }

    public void setTitle(CharSequence charsequence)
    {
        if (charsequence != null)
        {
            d.setText(charsequence);
            if (d.getVisibility() != 0)
            {
                d.setVisibility(0);
            }
        } else
        if (d.getVisibility() != 8)
        {
            d.setVisibility(8);
            return;
        }
    }
}
