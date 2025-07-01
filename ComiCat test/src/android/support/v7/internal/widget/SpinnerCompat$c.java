// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.support.v7.widget.ListPopupWindow;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;

// Referenced classes of package android.support.v7.internal.widget:
//            SpinnerCompat

final class a extends ListPopupWindow
    implements a
{

    final SpinnerCompat a;
    private CharSequence i;
    private ListAdapter j;

    static ListAdapter a(a a1)
    {
        return a1.j;
    }

    public final void a(ListAdapter listadapter)
    {
        super.a(listadapter);
        j = listadapter;
    }

    public final void a(CharSequence charsequence)
    {
        i = charsequence;
    }

    public _cls1.a(SpinnerCompat spinnercompat, Context context, int k)
    {
        a = spinnercompat;
        super(context, null, k);
        super.g = spinnercompat;
        d();
        super.f = 0;
        super.h = new android.widget.AdapterView.OnItemClickListener(spinnercompat) {

            final SpinnerCompat a;
            final SpinnerCompat.c b;

            public final void onItemClick(AdapterView adapterview, View view, int l, long l1)
            {
                b.a.setSelection(l);
                if (b.a.t != null)
                {
                    adapterview = b.a;
                    SpinnerCompat.c.a(b).getItemId(l);
                    adapterview.a(view);
                }
                b.a();
            }

            
            {
                b = SpinnerCompat.c.this;
                a = spinnercompat;
                super();
            }
        };
    }
}
