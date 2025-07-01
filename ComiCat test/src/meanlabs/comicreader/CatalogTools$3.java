// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import ahh;

// Referenced classes of package meanlabs.comicreader:
//            CatalogTools

final class a
    implements t
{

    final CatalogTools a;

    public final void a(boolean flag)
    {
        if (flag)
        {
            a.a = ahh.a(null, null);
            a.a.show(a.getSupportFragmentManager(), null);
        }
    }

    (CatalogTools catalogtools)
    {
        a = catalogtools;
        super();
    }
}
