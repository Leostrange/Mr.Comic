// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import ahf;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package meanlabs.comicreader:
//            CatalogTools, DeleteMultipleFiles

final class b
    implements t
{

    final ArrayList a;
    final ArrayList b;
    final CatalogTools c;

    public final void a(HashMap hashmap)
    {
        if (hashmap.size() > 0 || a.size() > 0)
        {
            CatalogTools.a(c, hashmap, a, b);
            DeleteMultipleFiles.a(c, a, b, false, 0x7f06010b);
            return;
        } else
        {
            ahf.a(c, 0x7f060157);
            return;
        }
    }

    iles(CatalogTools catalogtools, ArrayList arraylist, ArrayList arraylist1)
    {
        c = catalogtools;
        a = arraylist;
        b = arraylist1;
        super();
    }
}
