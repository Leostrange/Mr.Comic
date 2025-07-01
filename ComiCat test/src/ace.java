// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.method.DigitsKeyListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public final class ace extends Dialog
{

    public String a;
    public int b;
    public String c;
    public boolean d;
    Context e;
    afw.a f;
    EditText g;

    public ace(Context context, afw.a a1)
    {
        super(context);
        e = context;
        f = a1;
    }

    protected final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setCancelable(d);
        setContentView(0x7f03004b);
        setTitle(a);
        g = (EditText)findViewById(0x7f0c0072);
        g.setKeyListener(new DigitsKeyListener());
        g.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final ace a;

            public final void onFocusChange(View view, boolean flag)
            {
                a.getWindow().setSoftInputMode(5);
            }

            
            {
                a = ace.this;
                super();
            }
        });
        bundle = (Button)findViewById(0x7f0c0074);
        int i;
        if (d)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        bundle.setVisibility(i);
        setOnKeyListener(new android.content.DialogInterface.OnKeyListener() {

            final ace a;

            public final boolean onKey(DialogInterface dialoginterface, int j, KeyEvent keyevent)
            {
                return j == 84 && keyevent.getRepeatCount() == 0;
            }

            
            {
                a = ace.this;
                super();
            }
        });
        ((Button)findViewById(0x7f0c00d9)).setOnClickListener(new android.view.View.OnClickListener() {

            final ace a;

            public final void onClick(View view)
            {
                view = a;
                if (aei.a().d.b(((ace) (view)).c).equals(((ace) (view)).g.getText().toString()))
                {
                    if (((ace) (view)).f != null)
                    {
                        ((ace) (view)).f.a(true);
                    }
                    view.dismiss();
                    return;
                } else
                {
                    ((TextView)view.findViewById(0x7f0c00ae)).setText(((ace) (view)).b);
                    return;
                }
            }

            
            {
                a = ace.this;
                super();
            }
        });
        ((Button)findViewById(0x7f0c0074)).setOnClickListener(new android.view.View.OnClickListener() {

            final ace a;

            public final void onClick(View view)
            {
                a.dismiss();
            }

            
            {
                a = ace.this;
                super();
            }
        });
    }
}
