// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acg;
import aei;
import aeu;
import afw;
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

public final class GeneralSettings extends ReaderActivity
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final GeneralSettings a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            i;
            JVM INSTR tableswitch 0 7: default 48
        //                       0 49
        //                       1 143
        //                       2 242
        //                       3 294
        //                       4 48
        //                       5 310
        //                       6 501
        //                       7 517;
               goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7 _L8
_L1:
            return;
_L2:
            Object obj = a;
            adapterview = new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    agw.a(a);
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            };
            view = new CharSequence[2];
            view[0] = "prefCatalog";
            view[1] = "prefLastIncompleteComic";
            obj = new android.app.AlertDialog.Builder(((android.content.Context) (obj)));
            ((android.app.AlertDialog.Builder) (obj)).setTitle(0x7f060231);
            String s = aei.a().d.b("start-in");
            ((android.app.AlertDialog.Builder) (obj)).setSingleChoiceItems(agw.a(view), agv.a(view, s), new agw._cls19(view, adapterview)).create().show();
            return;
_L3:
            Object obj1 = a;
            adapterview = new agw.a(this, adapterview) {

                final AdapterView a;
                final a b;

                public final void a(String s)
                {
                    agw.a(a);
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            };
            view = new CharSequence[3];
            view[0] = "prefLastReadPage";
            view[1] = "prefBookmark";
            view[2] = "prefStart";
            obj1 = new android.app.AlertDialog.Builder(((android.content.Context) (obj1)));
            ((android.app.AlertDialog.Builder) (obj1)).setTitle(0x7f060164);
            String s1 = aei.a().d.b("open-position");
            ((android.app.AlertDialog.Builder) (obj1)).setSingleChoiceItems(agw.a(view), agv.a(view, s1), new agw._cls20(view, adapterview)).create().show();
            return;
_L4:
            if (!aei.a().d.c("password-protect"))
            {
                afw.a(a, 0x7f060172, "unlock-code", new afw.a(this, adapterview) {

                    final AdapterView a;
                    final a b;

                    public final void a(boolean flag)
                    {
                        if (flag)
                        {
                            aei.a().d.a("password-protect", true);
                            agw.a(a);
                        }
                    }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
                });
                return;
            } else
            {
                aei.a().d.a("password-protect", false);
                agw.a(adapterview);
                return;
            }
_L5:
            aei.a().d.d("show-reading-history");
            agw.a(adapterview);
            return;
_L6:
            long l1 = agv.b() / 10L + 3L;
            if (l1 <= 24L) goto _L10; else goto _L9
_L9:
            l = 24L;
_L12:
            int j = (int)(l - 3L);
            view = new CharSequence[j + 1];
            for (i = 0; i <= j; i++)
            {
                view[i] = (new StringBuilder()).append(String.valueOf(i + 3)).append(" MB").toString();
            }

            break; /* Loop/switch isn't completed */
_L10:
            l = l1;
            if (l1 < 6L)
            {
                l = 6L;
            }
            if (true) goto _L12; else goto _L11
_L11:
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
                    agw.a(a);
                    dialoginterface.dismiss();
                }

            
            {
                b = a1;
                a = adapterview;
                super();
            }
            }).create().show();
            return;
_L7:
            aei.a().d.d("use-fast-page-split");
            agw.a(adapterview);
            return;
_L8:
            aei.a().d.d("aggressive-caching");
            agw.a(adapterview);
            return;
        }

        private a()
        {
            a = GeneralSettings.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    public GeneralSettings()
    {
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030050);
        bundle = (ListView)findViewById(0x7f0c008d);
        ArrayList arraylist = new ArrayList();
        agw.a(arraylist, getResources(), 0x7f060231, 0, "start-in", false);
        agw.a(arraylist, getResources(), 0x7f060164, 0, "open-position", false);
        agw.a(arraylist, getResources(), 0x7f06016e, 0x7f06016f, "password-protect", true);
        agw.a(arraylist, getResources(), 0x7f060222, 0x7f060223, "show-reading-history", true);
        agw.a(arraylist, getResources(), 0x7f060177, 0, "", false);
        agw.a(arraylist, getResources(), 0x7f060149, 0x7f06014a, "max-image-memory", false);
        agw.a(arraylist, getResources(), 0x7f060253, 0x7f060254, "use-fast-page-split", true);
        if (agv.c())
        {
            agw.a(arraylist, getResources(), 0x7f06004c, 0x7f06004d, "aggressive-caching", true);
        }
        bundle.setAdapter(new acg(this, arraylist));
        bundle.setOnItemClickListener(new a((byte)0));
    }
}
