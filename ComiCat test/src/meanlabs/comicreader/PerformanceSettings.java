// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acg;
import aei;
import aeu;
import agv;
import agw;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.util.ArrayList;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity

public class PerformanceSettings extends ReaderActivity
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final PerformanceSettings a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            i;
            JVM INSTR tableswitch 0 2: default 28
        //                       0 45
        //                       1 238
        //                       2 252;
               goto _L1 _L2 _L3 _L4
_L1:
            adapterview = (acg)adapterview.getAdapter();
            if (adapterview != null)
            {
                adapterview.notifyDataSetInvalidated();
            }
            return;
_L2:
            long l1 = agv.b() / 10L + 3L;
            if (l1 <= 16L) goto _L6; else goto _L5
_L5:
            l = 16L;
_L8:
            int j = (int)(l - 3L);
            view = new CharSequence[j + 1];
            for (i = 0; i <= j; i++)
            {
                view[i] = (new StringBuilder()).append(String.valueOf(i + 3)).append(" MB").toString();
            }

            break; /* Loop/switch isn't completed */
_L6:
            l = l1;
            if (l1 < 6L)
            {
                l = 6L;
            }
            if (true) goto _L8; else goto _L7
_L7:
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a);
            builder.setTitle(a.getResources().getString(0x7f060149));
            int k = (int)aei.a().d.a("max-image-memory", 6L);
            i = k;
            if (k < 3)
            {
                i = 3;
            }
            builder.setSingleChoiceItems(view, i - 3, new android.content.DialogInterface.OnClickListener(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void onClick(DialogInterface dialoginterface, int i)
                {
                    aei.a().d.a("max-image-memory", String.valueOf(i + 3));
                    acg acg1 = (acg)a.getAdapter();
                    if (acg1 != null)
                    {
                        acg1.notifyDataSetInvalidated();
                    }
                    dialoginterface.dismiss();
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            }).create().show();
            continue; /* Loop/switch isn't completed */
_L3:
            aei.a().d.d("use-animation");
            continue; /* Loop/switch isn't completed */
_L4:
            aei.a().d.d("aggressive-caching");
            if (true) goto _L1; else goto _L9
_L9:
        }

        private a()
        {
            a = PerformanceSettings.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    public PerformanceSettings()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030050);
        bundle = (ListView)findViewById(0x7f0c008d);
        ArrayList arraylist = new ArrayList();
        agw.a(arraylist, getResources(), 0x7f060149, 0x7f06014a, "max-image-memory", false);
        agw.a(arraylist, getResources(), 0x7f060228, 0x7f060229, "use-animation", true);
        if (agv.c())
        {
            agw.a(arraylist, getResources(), 0x7f06004c, 0x7f06004d, "aggressive-caching", true);
        }
        bundle.setAdapter(new acg(this, arraylist));
        bundle.setOnItemClickListener(new a((byte)0));
    }
}
