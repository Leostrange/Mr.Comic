// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import meanlabs.comicreader.ReaderActivity;

public final class afz
    implements ew.a
{
    public static interface a
    {

        public abstract void a();

        public abstract void b();

        public abstract void c();
    }


    public ReaderActivity a;
    View b;
    public TextView c;
    public CheckBox d;
    a e;
    ew f;

    public afz(ReaderActivity readeractivity, a a1)
    {
        a = readeractivity;
        e = a1;
        if (c == null)
        {
            b = a.getLayoutInflater().inflate(0x7f030019, null);
            c = (EditText)b.findViewById(0x7f0c0067);
            d = (CheckBox)b.findViewById(0x7f0c0068);
            if (c != null)
            {
                c.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

                    final afz a;

                    public final void onFocusChange(View view, boolean flag)
                    {
                        if (flag)
                        {
                            view = (InputMethodManager)a.a.getSystemService("input_method");
                            if (view != null)
                            {
                                view.toggleSoftInput(1, 1);
                            }
                        }
                    }

            
            {
                a = afz.this;
                super();
            }
                });
                c.addTextChangedListener(new TextWatcher() {

                    final afz a;

                    public final void afterTextChanged(Editable editable)
                    {
                    }

                    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
                    {
                    }

                    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
                    {
                        a.e.b();
                    }

            
            {
                a = afz.this;
                super();
            }
                });
                d.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

                    final afz a;

                    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
                    {
                        aei.a().d.a("prefix-search", flag);
                        a.e.b();
                    }

            
            {
                a = afz.this;
                super();
            }
                });
            }
        }
    }

    public final boolean a()
    {
        return f != null;
    }

    public final void b()
    {
        if (f != null)
        {
            f.c();
        }
    }

    public final boolean onActionItemClicked(ew ew1, MenuItem menuitem)
    {
        return false;
    }

    public final boolean onCreateActionMode(ew ew1, Menu menu)
    {
        f = ew1;
        f.a(b);
        c.setText("");
        c.requestFocus();
        d.setChecked(aei.a().d.c("prefix-search"));
        e.a();
        return true;
    }

    public final void onDestroyActionMode(ew ew1)
    {
        f = null;
        ew1 = (InputMethodManager)a.getSystemService("input_method");
        if (ew1 != null && ew1.isActive(c))
        {
            ew1.hideSoftInputFromWindow(c.getWindowToken(), 1);
        }
        e.c();
    }

    public final boolean onPrepareActionMode(ew ew1, Menu menu)
    {
        return false;
    }
}
