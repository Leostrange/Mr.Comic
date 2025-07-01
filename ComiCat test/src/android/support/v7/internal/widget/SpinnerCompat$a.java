// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.ListAdapter;

// Referenced classes of package android.support.v7.internal.widget:
//            SpinnerCompat

final class <init>
    implements android.content.OnClickListener, <init>
{

    final SpinnerCompat a;
    private AlertDialog b;
    private ListAdapter c;
    private CharSequence d;

    public final void a()
    {
        if (b != null)
        {
            b.dismiss();
            b = null;
        }
    }

    public final void a(ListAdapter listadapter)
    {
        c = listadapter;
    }

    public final void a(CharSequence charsequence)
    {
        d = charsequence;
    }

    public final boolean b()
    {
        if (b != null)
        {
            return b.isShowing();
        } else
        {
            return false;
        }
    }

    public final void c()
    {
        if (c == null)
        {
            return;
        }
        android.app.der der = new android.app.der(a.getContext());
        if (d != null)
        {
            der.setTitle(d);
        }
        b = der.setSingleChoiceItems(c, a.getSelectedItemPosition(), this).create();
        b.show();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.setSelection(i);
        if (a.t != null)
        {
            dialoginterface = a;
            c.getItemId(i);
            dialoginterface.a(null);
        }
        a();
    }

    private (SpinnerCompat spinnercompat)
    {
        a = spinnercompat;
        super();
    }

    a(SpinnerCompat spinnercompat, byte byte0)
    {
        this(spinnercompat);
    }
}
