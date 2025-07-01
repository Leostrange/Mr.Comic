// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acl;
import afw;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package meanlabs.comicreader:
//            CatalogTools, BulkMarkRead

final class <init>
    implements android.widget.temClickListener
{

    final CatalogTools a;

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        switch (i)
        {
        case 8: // '\b'
        default:
            return;

        case 0: // '\0'
            adapterview = a;
            adapterview.startActivity(new Intent(adapterview, meanlabs/comicreader/BulkMarkRead));
            return;

        case 1: // '\001'
            afw.a(a);
            return;

        case 2: // '\002'
            a.d();
            return;

        case 3: // '\003'
            adapterview = a;
            (new acl(adapterview, new <init>(adapterview))).execute(new Void[] {
                null
            });
            return;

        case 4: // '\004'
            a.e();
            return;

        case 5: // '\005'
            a.f();
            return;

        case 6: // '\006'
            a.c();
            return;

        case 7: // '\007'
            CatalogTools.a(a);
            return;

        case 9: // '\t'
            CatalogTools.b(a);
            return;

        case 10: // '\n'
            CatalogTools.c(a);
            break;
        }
    }

    private ckListener(CatalogTools catalogtools)
    {
        a = catalogtools;
        super();
    }

    a(CatalogTools catalogtools, byte byte0)
    {
        this(catalogtools);
    }
}
