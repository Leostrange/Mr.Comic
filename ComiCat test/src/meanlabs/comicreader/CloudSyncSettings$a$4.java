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
//            CloudSyncSettings

final class a
    implements android.content.kListener
{

    final AdapterView a;
    final a b;

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        aei.a().d.a("max-parallel-downloads", String.valueOf(i + 1));
        acg acg1 = (acg)a.getAdapter();
        if (acg1 != null)
        {
            acg1.notifyDataSetInvalidated();
        }
        CloudSyncSettings.d();
        dialoginterface.dismiss();
    }

    ener(ener ener, AdapterView adapterview)
    {
        b = ener;
        a = adapterview;
        super();
    }
}
