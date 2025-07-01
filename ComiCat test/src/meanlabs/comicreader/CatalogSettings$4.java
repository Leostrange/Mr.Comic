// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aei;
import aes;
import ahf;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseBooleanArray;
import android.widget.ListView;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            CatalogSettings

final class a
    implements android.content.ClickListener
{

    final List a;
    final CatalogSettings b;

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        SparseBooleanArray sparsebooleanarray = ((AlertDialog)dialoginterface).getListView().getCheckedItemPositions();
        if (sparsebooleanarray != null && sparsebooleanarray.size() > 0)
        {
            aes aes1 = aei.a().e;
            i = 0;
            while (i < a.size()) 
            {
                if (!sparsebooleanarray.get(i))
                {
                    continue;
                }
                String s = (String)a.get(i);
                Integer integer = (Integer)aes1.b.get(s);
                if (integer == null)
                {
                    continue;
                }
                boolean flag;
                if (aei.a().a.delete("exclusions", (new StringBuilder("exclusionid=")).append(integer).toString(), null) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    aes1.b.remove(s);
                }
                i++;
            }
            ahf.a(b, 0x7f0601f0);
        }
        dialoginterface.dismiss();
    }

    Listener(CatalogSettings catalogsettings, List list)
    {
        b = catalogsettings;
        a = list;
        super();
    }
}
