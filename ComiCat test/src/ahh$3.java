// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.widget.AdapterView;

final class ang.Object
    implements android.widget.rView.OnItemClickListener
{

    final ahh a;

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ahh.a("Selected index: %d", new Object[] {
            Integer.valueOf(i)
        });
        if (ahh.d(a) != null && i >= 0 && i < ahh.d(a).length)
        {
            ahh.a(a, ahh.d(a)[i]);
        }
    }

    (ahh ahh1)
    {
        a = ahh1;
        super();
    }
}
