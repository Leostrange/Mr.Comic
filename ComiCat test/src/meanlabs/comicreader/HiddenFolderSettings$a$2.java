// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aei;
import aem;
import aen;
import android.content.DialogInterface;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            HiddenFolderSettings

final class a
    implements android.content.oiceClickListener
{

    final List a;
    final a b;

    public final void onClick(DialogInterface dialoginterface, int i, boolean flag)
    {
        dialoginterface = (aem)a.get(i);
        dialoginterface.b(flag);
        aen aen1 = aei.a().c;
        aen.b(dialoginterface);
    }

    lickListener(lickListener licklistener, List list)
    {
        b = licklistener;
        a = list;
        super();
    }
}
