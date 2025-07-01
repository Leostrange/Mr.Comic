// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import ahf;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package meanlabs.comicreader:
//            CatalogTools, DeleteMultipleFiles

final class a
    implements t
{

    final CatalogTools a;

    public final void a(HashMap hashmap)
    {
        if (hashmap.size() > 0)
        {
            ArrayList arraylist = new ArrayList();
            ArrayList arraylist1 = new ArrayList();
            CatalogTools.a(a, hashmap, arraylist, arraylist1);
            DeleteMultipleFiles.a(a, arraylist, arraylist1, false, 0x7f0600d5);
            return;
        } else
        {
            ahf.a(a, 0x7f060156);
            return;
        }
    }

    iles(CatalogTools catalogtools)
    {
        a = catalogtools;
        super();
    }
}
