// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acg;
import aei;
import aeu;
import agv;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package meanlabs.comicreader:
//            PerformanceSettings

final class <init>
    implements android.widget.kListener
{

    final PerformanceSettings a;

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        i;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 45
    //                   1 238
    //                   2 252;
           goto _L1 _L2 _L3 _L4
_L1:
        adapterview = (acg)adapterview.getAdapter();
        if (adapterview != null)
        {
            adapterview.notifyDataSetInvalidated();
        }
        return;
_L2:
        long l1 = agv.b() / 10L + 3L;
        if (l1 <= 16L) goto _L6; else goto _L5
_L5:
        l = 16L;
_L8:
        int j = (int)(l - 3L);
        view = new CharSequence[j + 1];
        for (i = 0; i <= j; i++)
        {
            view[i] = (new StringBuilder()).append(String.valueOf(i + 3)).append(" MB").toString();
        }

        break; /* Loop/switch isn't completed */
_L6:
        l = l1;
        if (l1 < 6L)
        {
            l = 6L;
        }
        if (true) goto _L8; else goto _L7
_L7:
        android.app.ClickListener clicklistener = new android.app.nit>(a);
        clicklistener.tTitle(a.getResources().getString(0x7f060149));
        int k = (int)aei.a().d.a("max-image-memory", 6L);
        i = k;
        if (k < 3)
        {
            i = 3;
        }
        clicklistener.tSingleChoiceItems(view, i - 3, new android.content.DialogInterface.OnClickListener(adapterview) {

            final AdapterView a;
            final PerformanceSettings.a b;

            public final void onClick(DialogInterface dialoginterface, int i1)
            {
                aei.a().d.a("max-image-memory", String.valueOf(i1 + 3));
                acg acg1 = (acg)a.getAdapter();
                if (acg1 != null)
                {
                    acg1.notifyDataSetInvalidated();
                }
                dialoginterface.dismiss();
            }

            
            {
                b = PerformanceSettings.a.this;
                a = adapterview;
                super();
            }
        }).eate().show();
        continue; /* Loop/switch isn't completed */
_L3:
        aei.a().d.d("use-animation");
        continue; /* Loop/switch isn't completed */
_L4:
        aei.a().d.d("aggressive-caching");
        if (true) goto _L1; else goto _L9
_L9:
    }

    private _cls1.a(PerformanceSettings performancesettings)
    {
        a = performancesettings;
        super();
    }

    a(PerformanceSettings performancesettings, byte byte0)
    {
        this(performancesettings);
    }
}
