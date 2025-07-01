// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.widget.Adapter;

// Referenced classes of package android.support.v7.internal.widget:
//            AdapterViewCompat

final class b extends DataSetObserver
{

    final AdapterViewCompat a;
    private Parcelable b;

    public final void onChanged()
    {
        a.v = true;
        a.B = a.A;
        a.A = a.getAdapter().getCount();
        if (!a.getAdapter().hasStableIds() || b == null || a.B != 0 || a.A <= 0) goto _L2; else goto _L1
_L1:
        AdapterViewCompat.a(a, b);
        b = null;
_L4:
        a.b();
        a.requestLayout();
        return;
_L2:
        AdapterViewCompat adapterviewcompat = a;
        if (adapterviewcompat.getChildCount() > 0)
        {
            adapterviewcompat.o = true;
            adapterviewcompat.n = adapterviewcompat.q;
            if (adapterviewcompat.y >= 0)
            {
                View view = adapterviewcompat.getChildAt(adapterviewcompat.y - adapterviewcompat.j);
                adapterviewcompat.m = adapterviewcompat.x;
                adapterviewcompat.l = adapterviewcompat.w;
                if (view != null)
                {
                    adapterviewcompat.k = view.getTop();
                }
                adapterviewcompat.p = 0;
            } else
            {
                View view1 = adapterviewcompat.getChildAt(0);
                Adapter adapter = adapterviewcompat.getAdapter();
                if (adapterviewcompat.j >= 0 && adapterviewcompat.j < adapter.getCount())
                {
                    adapterviewcompat.m = adapter.getItemId(adapterviewcompat.j);
                } else
                {
                    adapterviewcompat.m = -1L;
                }
                adapterviewcompat.l = adapterviewcompat.j;
                if (view1 != null)
                {
                    adapterviewcompat.k = view1.getTop();
                }
                adapterviewcompat.p = 1;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void onInvalidated()
    {
        a.v = true;
        if (a.getAdapter().hasStableIds())
        {
            b = AdapterViewCompat.a(a);
        }
        a.B = a.A;
        a.A = 0;
        a.y = -1;
        a.z = 0x8000000000000000L;
        a.w = -1;
        a.x = 0x8000000000000000L;
        a.o = false;
        a.b();
        a.requestLayout();
    }

    (AdapterViewCompat adapterviewcompat)
    {
        a = adapterviewcompat;
        super();
        b = null;
    }
}
