// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acf;
import acg;
import aei;
import aem;
import aen;
import aeu;
import afw;
import agw;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity

public class HiddenFolderSettings extends ReaderActivity
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final HiddenFolderSettings a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            i;
            JVM INSTR tableswitch 0 3: default 32
        //                       0 49
        //                       1 109
        //                       2 272
        //                       3 286;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            adapterview = (acg)adapterview.getAdapter();
            if (adapterview != null)
            {
                adapterview.notifyDataSetInvalidated();
            }
            return;
_L2:
            if (!aei.a().d.c("enable-hidden-folders"))
            {
                afw.a(a, 0x7f06024b, "unhide-code", new afw.a(this, adapterview) {

                    final AdapterView a;
                    final a b;

                    public final void a(boolean flag)
                    {
                        if (flag)
                        {
                            aei.a().d.a("enable-hidden-folders", true);
                            b.a.a(true);
                            acg acg1 = (acg)a.getAdapter();
                            if (acg1 != null)
                            {
                                acg1.notifyDataSetInvalidated();
                            }
                        }
                    }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
                });
            } else
            {
                aei.a().d.a("enable-hidden-folders", false);
                a.a(false);
            }
            continue; /* Loop/switch isn't completed */
_L3:
            view = aei.a().c.e();
            if (view != null && view.size() > 0)
            {
                int j = view.size();
                CharSequence acharsequence[] = new CharSequence[j];
                boolean aflag[] = new boolean[j];
                for (i = 0; i < j; i++)
                {
                    aem aem1 = (aem)view.get(i);
                    acharsequence[i] = aem1.b;
                    aflag[i] = aem1.c();
                }

                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a);
                builder.setTitle(a.getResources().getString(0x7f060207));
                builder.setMultiChoiceItems(acharsequence, aflag, new android.content.DialogInterface.OnMultiChoiceClickListener(this, view) {

                    final List a;
                    final a b;

                    public final void onClick(DialogInterface dialoginterface, int i, boolean flag)
                    {
                        dialoginterface = (aem)a.get(i);
                        dialoginterface.b(flag);
                        aen aen1 = aei.a().c;
                        aen.b(dialoginterface);
                    }

            
            {
                b = a1;
                a = list;
                super();
            }
                }).create().show();
            } else
            {
                Toast.makeText(a, 0x7f06015a, 0).show();
            }
            continue; /* Loop/switch isn't completed */
_L4:
            aei.a().d.d("hide-on-relaunch");
            continue; /* Loop/switch isn't completed */
_L5:
            aei.a().d.d("current-hidden-state");
            if (true) goto _L1; else goto _L6
_L6:
        }

        private a()
        {
            a = HiddenFolderSettings.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    public HiddenFolderSettings()
    {
    }

    final void a(boolean flag)
    {
        ListView listview = (ListView)findViewById(0x7f0c008d);
        for (int i = 1; i < 4; i++)
        {
            ((acf)listview.getAdapter().getItem(i)).e = flag;
        }

    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030050);
        bundle = (ListView)findViewById(0x7f0c008d);
        boolean flag = aei.a().d.c("enable-hidden-folders");
        ArrayList arraylist = new ArrayList();
        agw.a(arraylist, getResources(), 0x7f0600d8, 0x7f0600d9, "enable-hidden-folders", true);
        agw.a(arraylist, getResources().getString(0x7f060207), getResources().getString(0x7f060208), "folders-hidden", false, flag);
        agw.a(arraylist, getResources().getString(0x7f060117), getResources().getString(0x7f060118), "hide-on-relaunch", true, flag);
        agw.a(arraylist, getResources().getString(0x7f0600ab), getResources().getString(0x7f0600ac), "current-hidden-state", true, flag);
        bundle.setAdapter(new acg(this, arraylist));
        bundle.setOnItemClickListener(new a((byte)0));
    }
}
