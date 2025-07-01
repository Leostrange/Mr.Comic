// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aeu;
import agm;
import android.content.DialogInterface;

// Referenced classes of package meanlabs.comicreader:
//            CatalogSettings

final class a
    implements android.content.MultiChoiceClickListener
{

    final aeu a;
    final CatalogSettings b;

    public final void onClick(DialogInterface dialoginterface, int i, boolean flag)
    {
        i;
        JVM INSTR tableswitch 0 4: default 36
    //                   0 41
    //                   1 56
    //                   2 70
    //                   3 84
    //                   4 99;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        agm.a(false);
        return;
_L2:
        a.a("showInbuiltFolder", 8, flag);
        continue; /* Loop/switch isn't completed */
_L3:
        a.a("showInbuiltFolder", 2, flag);
        continue; /* Loop/switch isn't completed */
_L4:
        a.a("showInbuiltFolder", 1, flag);
        continue; /* Loop/switch isn't completed */
_L5:
        a.a("showInbuiltFolder", 16, flag);
        continue; /* Loop/switch isn't completed */
_L6:
        a.a("showInbuiltFolder", 4, flag);
        if (true) goto _L1; else goto _L7
_L7:
    }

    ChoiceClickListener(CatalogSettings catalogsettings, aeu aeu1)
    {
        b = catalogsettings;
        a = aeu1;
        super();
    }
}
