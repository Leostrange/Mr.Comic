// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aeq;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.AdapterView;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            BulkMarkRead

final class a
    implements android.widget.temClickListener
{

    final BulkMarkRead a;

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = a.a;
        i = ((aeq)((a) (adapterview)).b.get(i)).a;
        if (((b) (adapterview)).c.get(i) != 0)
        {
            ((c) (adapterview)).c.delete(i);
        } else
        {
            ((c) (adapterview)).c.append(i, i);
        }
        a.a.notifyDataSetChanged();
    }

    ckListener(BulkMarkRead bulkmarkread)
    {
        a = bulkmarkread;
        super();
    }
}
