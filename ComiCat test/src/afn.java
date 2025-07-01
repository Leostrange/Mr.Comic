// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import java.io.File;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.ui.PageChooserView;

public final class afn
    implements afu
{

    aeq a;

    public afn(aeq aeq1)
    {
        a = aeq1;
    }

    public final void a(Activity activity)
    {
        agm.a(activity, a.a, false);
    }

    public final void a(Catalog catalog)
    {
        agm.a(catalog, a.a, false);
    }

    public final void a(Catalog catalog, ContextMenu contextmenu)
    {
        boolean flag1 = true;
        catalog.getMenuInflater().inflate(0x7f0d0004, contextmenu);
        contextmenu.setHeaderTitle(0x7f06008d);
        if (a.h.c(1))
        {
            contextmenu.findItem(0x7f0c0121).setTitle(0x7f060148);
        }
        contextmenu.findItem(0x7f0c011e).setVisible(a.b());
        contextmenu.findItem(0x7f0c011f).setVisible(a.b());
        if (a.h.c(2))
        {
            contextmenu.findItem(0x7f0c0120).setTitle(0x7f0601dd);
        }
        catalog = contextmenu.findItem(0x7f0c0122);
        boolean flag;
        if (!a.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        catalog.setVisible(flag);
        catalog = contextmenu.findItem(0x7f0c00bf);
        if (!a.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        catalog.setVisible(flag);
        catalog = contextmenu.findItem(0x7f0c0123);
        if (!a.d() || a.g())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        catalog.setVisible(flag);
        catalog = contextmenu.findItem(0x7f0c0126);
        if (!a.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        catalog.setVisible(flag);
        catalog = contextmenu.findItem(0x7f0c0127);
        if (!a.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        catalog.setVisible(flag);
        catalog = contextmenu.findItem(0x7f0c0124);
        if (a.d() && !a.h.c(16))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        catalog.setVisible(flag);
        catalog = contextmenu.findItem(0x7f0c0125);
        if (a.d() && a.h.c(16))
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        catalog.setVisible(flag);
        contextmenu.findItem(0x7f0c0128).setVisible(a.d());
    }

    public final boolean a(Catalog catalog, int i)
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        flag2 = false;
        flag = false;
        flag1 = true;
        i;
        JVM INSTR lookupswitch 13: default 124
    //                   2131493055: 515
    //                   2131493149: 202
    //                   2131493150: 216
    //                   2131493151: 230
    //                   2131493152: 130
    //                   2131493153: 164
    //                   2131493154: 265
    //                   2131493155: 346
    //                   2131493156: 382
    //                   2131493157: 413
    //                   2131493158: 427
    //                   2131493159: 477
    //                   2131493160: 603;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14
_L1:
        flag = false;
_L16:
        return flag;
_L6:
        aeq aeq1 = a;
        if (!a.h.c(2))
        {
            flag = true;
        }
        agm.c(aeq1, flag);
        catalog.e();
        return true;
_L7:
        aeq aeq2 = a;
        flag = flag2;
        if (!a.h.c(1))
        {
            flag = true;
        }
        aeq2.b(flag);
        catalog.e();
        return true;
_L3:
        agm.a(catalog, a.a, false);
        return true;
_L4:
        agm.a(catalog, a.a, true);
        return true;
_L5:
        aeq aeq3 = a;
        aeq3.i = -1;
        aek aek1 = aei.a().b;
        aek.c(aeq3);
        catalog.e();
        ahf.a(catalog, 0x7f06005c);
        return true;
_L8:
        aeq aeq4 = a;
        File file = new File(aeq4.d);
        String s = agv.a(file.getName());
        String s1 = file.getName();
        s1 = s1.substring(0, s1.lastIndexOf('.'));
        afw.a(catalog, 0x7f0601e3, 0x7f0601e4, 0x7f0601e3, s1, false, new afw._cls1(s1, file, s, aeq4, catalog, catalog));
        return true;
_L9:
        (new aco(catalog, a, false, new aco.a(catalog) {

            final Catalog a;
            final afn b;

            public final void a(afa afa, String s2, boolean flag3)
            {
                s2 = (PageChooserView)a.getLayoutInflater().inflate(0x7f030048, null);
                android.app.AlertDialog.Builder builder1 = new android.app.AlertDialog.Builder(a);
                builder1.setView(s2);
                builder1.setCancelable(true);
                builder1.setTitle(0x7f060074);
                builder1.setOnCancelListener(new android.content.DialogInterface.OnCancelListener(this, s2, afa) {

                    final PageChooserView a;
                    final afa b;
                    final _cls1 c;

                    public final void onCancel(DialogInterface dialoginterface)
                    {
                        a.a();
                        b.a();
                    }

            
            {
                c = _pcls1;
                a = pagechooserview;
                b = afa1;
                super();
            }
                });
                s2.a(afa, new android.widget.AdapterView.OnItemClickListener(this, afa, builder1.show(), s2) {

                    final afa a;
                    final AlertDialog b;
                    final PageChooserView c;
                    final _cls1 d;

                    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
                    {
                        adapterview = agm.a(a.a((int)l));
                        ahd.a(d.b.a.a, adapterview);
                        d.b.a.h.a(64);
                        adapterview = aei.a().b;
                        aek.b(d.b.a);
                        adapterview = ael.b(d.b.a);
                        if (adapterview != null)
                        {
                            agm.a(adapterview, 0, 0);
                        }
                        agm.a(false);
                        b.dismiss();
                        c.a();
                        a.a();
                    }

            
            {
                d = _pcls1;
                a = afa1;
                b = alertdialog;
                c = pagechooserview;
                super();
            }
                });
            }

            public final void e()
            {
            }

            
            {
                b = afn.this;
                a = catalog;
                super();
            }
        })).execute(new Void[] {
            null
        });
        return true;
_L10:
        adh.a(a);
        ahf.a(catalog, catalog.getString(0x7f060091, new Object[] {
            Integer.valueOf(1)
        }));
        return true;
_L11:
        agm.a(a, true);
        ael.b();
        return true;
_L12:
        catalog = a;
        if (aei.a().e.a(((aeq) (catalog)).d) && aei.a().b.g(catalog))
        {
            agm.a(agv.c(((aeq) (catalog)).d), -1);
        }
        ael.b();
        return true;
_L13:
        Object obj;
        obj = a;
        obj = aei.a().c.a(agv.c(((aeq) (obj)).d));
        flag = flag1;
        if (obj == null) goto _L16; else goto _L15
_L15:
        agm.a(((aem) (obj)), catalog, catalog);
        return true;
_L2:
        aeq aeq5 = a;
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(catalog);
        builder.setMessage(catalog.getString(0x7f0600b3, new Object[] {
            aeq5.c, Build.MODEL
        })).setCancelable(false).setPositiveButton(0x1040013, new afw._cls16(aeq5, catalog, catalog)).setNegativeButton(0x1040009, new afw._cls15(catalog));
        builder.create().show();
        return true;
_L14:
        agm.b(a, true);
        ael.b();
        if (true) goto _L1; else goto _L17
_L17:
    }
}
