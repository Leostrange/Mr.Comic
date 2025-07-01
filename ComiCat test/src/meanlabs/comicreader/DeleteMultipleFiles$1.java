// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import android.util.SparseArray;
import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;

// Referenced classes of package meanlabs.comicreader:
//            DeleteMultipleFiles

final class a
    implements android.widget.kListener
{

    final DeleteMultipleFiles a;

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = a.b;
        view = (Integer)((a) (adapterview)).b.get(i);
        if (((b) (adapterview)).d.get(view.intValue()) != null)
        {
            ((d) (adapterview)).d.remove(view.intValue());
        } else
        {
            ((d) (adapterview)).d.append(view.intValue(), view);
        }
        DeleteMultipleFiles.a(a, a.b.d.size());
        a.b.notifyDataSetChanged();
    }

    ner(DeleteMultipleFiles deletemultiplefiles)
    {
        a = deletemultiplefiles;
        super();
    }
}
