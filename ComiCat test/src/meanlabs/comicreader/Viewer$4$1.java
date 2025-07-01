// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aei;
import aeq;
import aeu;
import agv;
import ahf;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.CheckBox;
import java.util.ArrayList;
import meanlabs.comicreader.utils.ComicImageView;

// Referenced classes of package meanlabs.comicreader:
//            ComicReaderApp, Viewer

final class a
    implements Runnable
{

    final create a;

    public final void run()
    {
label0:
        {
            Catalog catalog = ComicReaderApp.d();
            if (!agv.g())
            {
                android.app..Builder builder;
                boolean flag;
                if (!agv.a())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag)
                {
                    break label0;
                }
            }
            if (aei.a().d.c("should-prompt-again") && aei.a().d.a("comic-since-prompt", 0L) > 15L)
            {
                aei.a().d.a("comic-since-prompt", "0");
                builder = new android.app..Builder(catalog);
                builder.setTitle(0x7f0601cb).setMessage(catalog.getString(0x7f0601ca)).setCancelable(true).setPositiveButton(0x1040013, new >(catalog)).setNeutralButton(0x7f060132, new >()).setNegativeButton(0x7f06014d, new >());
                builder.create().show();
            }
        }
    }

    ImageView(ImageView imageview)
    {
        a = imageview;
        super();
    }

    // Unreferenced inner class meanlabs/comicreader/Viewer$4

/* anonymous class */
    final class Viewer._cls4
        implements android.content.DialogInterface.OnClickListener
    {

        final CheckBox a;
        final ArrayList b;
        final aeq c;
        final aeq d;
        final Viewer e;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.dismiss();
            if (a.isChecked() && Viewer.f(e).b != null)
            {
                Viewer.f(e).b.b(true);
                ahf.a(e, e.getString(0x7f06008c, new Object[] {
                    Viewer.f(e).b.c
                }));
            }
            dialoginterface = ((CharSequence)b.get(i)).toString();
            if (dialoginterface.equals(Viewer.j()))
            {
                if (ComicReaderApp.d() != null)
                {
                    Viewer.i(e).postDelayed(new Viewer._cls4._cls1(this), 50L);
                }
                e.finish();
            } else
            {
                if (dialoginterface.startsWith(Viewer.k()))
                {
                    Viewer.a(e, c);
                    return;
                }
                if (dialoginterface.startsWith(Viewer.l()))
                {
                    Viewer.a(e, d);
                    return;
                }
            }
        }

            
            {
                e = viewer;
                a = checkbox;
                b = arraylist;
                c = aeq1;
                d = aeq2;
                super();
            }
    }

}
