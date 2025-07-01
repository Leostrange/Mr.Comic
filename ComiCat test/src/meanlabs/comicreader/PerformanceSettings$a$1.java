// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acg;
import aei;
import aeu;
import android.content.DialogInterface;
import android.widget.AdapterView;

// Referenced classes of package meanlabs.comicreader:
//            PerformanceSettings

final class a
    implements android.content.istener
{

    final AdapterView a;
    final a b;

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        aei.a().d.a("max-image-memory", String.valueOf(i + 3));
        acg acg1 = (acg)a.getAdapter();
        if (acg1 != null)
        {
            acg1.notifyDataSetInvalidated();
        }
        dialoginterface.dismiss();
    }

    er(er er, AdapterView adapterview)
    {
        b = er;
        a = adapterview;
        super();
    }
}
