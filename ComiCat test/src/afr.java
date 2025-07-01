// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.Catalog;

public final class afr
    implements afu
{

    aem a;

    public afr(aem aem1)
    {
        a = aem1;
    }

    public final void a(Activity activity)
    {
        agm.a(activity, a.a);
    }

    public final void a(Catalog catalog)
    {
        aem aem1 = a;
        catalog.h.a(aem1.a);
    }

    public final void a(Catalog catalog, ContextMenu contextmenu)
    {
        boolean flag2 = false;
        boolean flag3 = false;
        Object obj = catalog.getMenuInflater();
        contextmenu.setHeaderTitle(0x7f060105);
        if (!a.f())
        {
            boolean flag;
            if (a.d > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ((MenuInflater) (obj)).inflate(0x7f0d000e, contextmenu);
            obj = contextmenu.findItem(0x7f0c0140);
            if (aei.a().d.c("enable-hidden-folders"))
            {
                ((MenuItem) (obj)).setVisible(true);
                int i;
                if (a.c())
                {
                    i = 0x7f06024e;
                } else
                {
                    i = 0x7f060146;
                }
                ((MenuItem) (obj)).setTitle(catalog.getString(i));
            } else
            {
                ((MenuItem) (obj)).setVisible(false);
            }
            catalog = contextmenu.findItem(0x7f0c013d);
            if (flag && !a.o())
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            catalog.setVisible(flag2);
            catalog = contextmenu.findItem(0x7f0c013e);
            if (flag && a.o())
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            catalog.setVisible(flag2);
            contextmenu.findItem(0x7f0c0120).setVisible(flag);
            contextmenu.findItem(0x7f0c0121).setVisible(flag);
            catalog = contextmenu.findItem(0x7f0c0122);
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
            catalog = contextmenu.findItem(0x7f0c0127);
            if (!a.d())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            catalog.setVisible(flag);
            contextmenu.findItem(0x7f0c0128).setVisible(a.d());
            if (a.d())
            {
                catalog = ael.a(a, false).iterator();
                flag = false;
                flag2 = flag3;
                while (catalog.hasNext()) 
                {
                    if (((aeq)catalog.next()).h.c(16))
                    {
                        flag = true;
                    } else
                    {
                        flag2 = true;
                    }
                }
                contextmenu.findItem(0x7f0c0109).setVisible(flag2);
                contextmenu.findItem(0x7f0c010a).setVisible(flag);
                return;
            } else
            {
                contextmenu.findItem(0x7f0c0109).setVisible(false);
                contextmenu.findItem(0x7f0c010a).setVisible(false);
                return;
            }
        }
        ((MenuInflater) (obj)).inflate(0x7f0d0001, contextmenu);
        catalog = ael.a(a, false).iterator();
        boolean flag1 = false;
        while (catalog.hasNext()) 
        {
            if (((aeq)catalog.next()).h.c(16))
            {
                flag2 = true;
            } else
            {
                flag1 = true;
            }
        }
        contextmenu.findItem(0x7f0c0109).setVisible(flag1);
        contextmenu.findItem(0x7f0c010a).setVisible(flag2);
    }

    public final boolean a(Catalog catalog, int i)
    {
        boolean flag;
        boolean flag1;
        flag = false;
        flag1 = true;
        i;
        JVM INSTR lookupswitch 12: default 112
    //                   2131493055: 761
    //                   2131493129: 396
    //                   2131493130: 549
    //                   2131493152: 118
    //                   2131493153: 184
    //                   2131493154: 325
    //                   2131493159: 693
    //                   2131493160: 761
    //                   2131493181: 383
    //                   2131493182: 383
    //                   2131493183: 270
    //                   2131493184: 704;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L2 _L9 _L9 _L10 _L11
_L1:
        flag = false;
_L13:
        return flag;
_L5:
        Object obj;
        obj = ael.a(a, false);
        flag = flag1;
        if (((List) (obj)).size() <= 0) goto _L13; else goto _L12
_L12:
        afw.a(catalog, catalog.getString(0x7f06004a), catalog.getString(0x7f06004b, new Object[] {
            Integer.valueOf(((List) (obj)).size())
        }), new afw.a(((List) (obj)), catalog) {

            final List a;
            final Catalog b;
            final afr c;

            public final void a(boolean flag2)
            {
                if (flag2)
                {
                    Iterator iterator1 = a.iterator();
                    do
                    {
                        if (!iterator1.hasNext())
                        {
                            break;
                        }
                        aeq aeq4 = (aeq)iterator1.next();
                        if (!aeq4.h.c(2))
                        {
                            agm.c(aeq4, true);
                        }
                    } while (true);
                    b.e();
                }
            }

            
            {
                c = afr.this;
                a = list;
                b = catalog;
                super();
            }
        });
        return true;
_L6:
        catalog = a;
        obj = ael.a(catalog, false);
        flag = flag1;
        if (obj == null) goto _L13; else goto _L14
_L14:
        flag = flag1;
        if (((List) (obj)).size() <= 0) goto _L13; else goto _L15
_L15:
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (obj)).next();
            if (!aeq1.p())
            {
                aeq1.b(true);
            }
        } while (true);
        catalog.h();
        agm.a(false);
        return true;
_L10:
        List list = ael.a(a, false);
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(a);
        (new acp(catalog, list, arraylist1)).execute(new Void[] {
            null
        });
        return true;
_L7:
        aem aem1 = a;
        afw.a a1 = new afw.a() {

            final afr a;

            public final void a(boolean flag2)
            {
                ael.a();
                agm.a(true);
            }

            
            {
                a = afr.this;
                super();
            }
        };
        File file = new File(aem1.j);
        afw.a(catalog, 0x7f0601e2, 0x7f0601e4, 0x7f0601e2, aem1.b, false, new afw._cls11(aem1, file, a1, catalog));
        return true;
_L9:
        agm.a(catalog, a.a);
        return true;
_L3:
        Object obj1 = new ArrayList();
        Iterator iterator = ael.a(a, false).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            aeq aeq2 = (aeq)iterator.next();
            if (aeq2.d() && !aeq2.h.c(16))
            {
                ((ArrayList) (obj1)).add(aeq2);
            }
        } while (true);
        if (((ArrayList) (obj1)).size() > 0)
        {
            obj1 = ((ArrayList) (obj1)).iterator();
            i = 0;
            do
            {
                if (!((Iterator) (obj1)).hasNext())
                {
                    break;
                }
                if (adh.a((aeq)((Iterator) (obj1)).next()))
                {
                    i++;
                }
            } while (true);
            ahf.a(catalog, catalog.getString(0x7f060091, new Object[] {
                Integer.valueOf(i)
            }));
            return true;
        } else
        {
            ahf.a(catalog, 0x7f06004f);
            return true;
        }
_L4:
        ArrayList arraylist = new ArrayList();
        Object obj4 = ael.a(a, false).iterator();
        do
        {
            if (!((Iterator) (obj4)).hasNext())
            {
                break;
            }
            aeq aeq3 = (aeq)((Iterator) (obj4)).next();
            if (aeq3.d() && aeq3.h.c(16))
            {
                arraylist.add(aeq3);
            }
        } while (true);
        long l = agv.a(arraylist);
        obj4 = catalog.getString(0x7f0600b5, new Object[] {
            Integer.valueOf(arraylist.size()), Build.MODEL, agv.a(l)
        });
        afw.a(catalog, catalog.getString(0x7f0601e1), ((String) (obj4)), new afw.a(catalog, arraylist) {

            final Catalog a;
            final ArrayList b;
            final afr c;

            public final void a(boolean flag2)
            {
                if (flag2)
                {
                    (new ack(a, b, new ack.a(this) {

                        final _cls3 a;

                        public final void a(int i)
                        {
                            ahf.a(a.a, a.a.getString(0x7f060092, new Object[] {
                                Integer.valueOf(i)
                            }));
                        }

            
            {
                a = _pcls3;
                super();
            }
                    })).execute(new Void[] {
                        null
                    });
                }
            }

            
            {
                c = afr.this;
                a = catalog;
                b = arraylist;
                super();
            }
        });
        return true;
_L8:
        agm.a(a, catalog, catalog);
        return true;
_L11:
        Object obj2 = a;
        if (!a.c())
        {
            flag = true;
        }
        ((aem) (obj2)).b(flag);
        obj2 = aei.a().c;
        aen.b(a);
        if (agw.a())
        {
            catalog.f();
            return true;
        } else
        {
            catalog.e();
            return true;
        }
_L2:
        List list1 = ael.a(a);
        Object obj3 = ael.a(a, true);
        android.app.AlertDialog.Builder builder;
        if (list1.size() > 0)
        {
            obj3 = catalog.getString(0x7f0600b9, new Object[] {
                a.b, Integer.valueOf(list1.size()), Integer.valueOf(((List) (obj3)).size()), Build.MODEL
            });
        } else
        {
            obj3 = catalog.getString(0x7f0600b7, new Object[] {
                a.b, Integer.valueOf(((List) (obj3)).size()), Build.MODEL
            });
        }
        builder = new android.app.AlertDialog.Builder(catalog);
        builder.setTitle(catalog.getString(0x7f0600b8)).setMessage(((CharSequence) (obj3))).setCancelable(false);
        builder.setPositiveButton(0x7f0600b8, new android.content.DialogInterface.OnClickListener(catalog) {

            final Catalog a;
            final afr b;

            public final void onClick(DialogInterface dialoginterface, int j)
            {
                boolean flag2 = agm.a(b.a, false);
                Catalog catalog1 = a;
                String s;
                if (flag2)
                {
                    s = a.getString(0x7f060093, new Object[] {
                        b.a.b
                    });
                } else
                {
                    s = a.getString(0x7f0600e3);
                }
                ahf.a(catalog1, s);
                dialoginterface.dismiss();
                ael.a();
                agm.a(true);
            }

            
            {
                b = afr.this;
                a = catalog;
                super();
            }
        });
        if (list1.size() > 0)
        {
            builder.setNeutralButton(0x7f0600bf, new android.content.DialogInterface.OnClickListener(catalog) {

                final Catalog a;
                final afr b;

                public final void onClick(DialogInterface dialoginterface, int j)
                {
                    boolean flag2 = agm.a(b.a, true);
                    Catalog catalog1 = a;
                    String s;
                    if (flag2)
                    {
                        s = a.getString(0x7f060104, new Object[] {
                            b.a.b
                        });
                    } else
                    {
                        s = a.getString(0x7f0600e3);
                    }
                    ahf.a(catalog1, s);
                    dialoginterface.dismiss();
                    ael.a();
                    agm.a(true);
                }

            
            {
                b = afr.this;
                a = catalog;
                super();
            }
            });
        }
        builder.setNegativeButton(0x1040000, new android.content.DialogInterface.OnClickListener() {

            final afr a;

            public final void onClick(DialogInterface dialoginterface, int j)
            {
                dialoginterface.cancel();
            }

            
            {
                a = afr.this;
                super();
            }
        });
        catalog = builder.create();
        agd.a(catalog);
        catalog.show();
        return true;
    }
}
