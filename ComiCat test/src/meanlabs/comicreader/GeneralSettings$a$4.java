// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aei;
import aeu;
import agw;
import android.content.DialogInterface;
import android.widget.AdapterView;

// Referenced classes of package meanlabs.comicreader:
//            GeneralSettings

final class a
    implements android.content.ickListener
{

    final AdapterView a;
    final a b;

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        aei.a().d.a("max-image-memory", String.valueOf(i + 3));
        agw.a(a);
        dialoginterface.dismiss();
    }

    stener(stener stener, AdapterView adapterview)
    {
        b = stener;
        a = adapterview;
        super();
    }
}
