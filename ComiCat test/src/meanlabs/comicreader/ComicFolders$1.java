// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import android.view.View;
import android.widget.AdapterView;
import java.util.HashMap;

// Referenced classes of package meanlabs.comicreader:
//            ComicFolders

final class a
    implements android.widget.temClickListener
{

    final ComicFolders a;

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = ComicFolders.a(a);
        view = (String)adapterview.getItem(i);
        if (view != null)
        {
            if (((getItem) (adapterview)).c.get(view) != null)
            {
                ((c) (adapterview)).c.remove(view);
            } else
            {
                ((c) (adapterview)).c.put(view, Boolean.valueOf(true));
            }
        }
        ComicFolders.a(a).notifyDataSetChanged();
    }

    ckListener(ComicFolders comicfolders)
    {
        a = comicfolders;
        super();
    }
}
