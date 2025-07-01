// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acg;
import ach;
import acl;
import acp;
import acq;
import adh;
import aei;
import aek;
import ael;
import aen;
import aeq;
import aet;
import afw;
import agw;
import ahf;
import ahh;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipFile;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity, DeleteMultipleFiles, BulkMarkRead

public class CatalogTools extends ReaderActivity
    implements ahh.a
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final CatalogTools a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            switch (i)
            {
            case 8: // '\b'
            default:
                return;

            case 0: // '\0'
                adapterview = a;
                adapterview.startActivity(new Intent(adapterview, meanlabs/comicreader/BulkMarkRead));
                return;

            case 1: // '\001'
                afw.a(a);
                return;

            case 2: // '\002'
                a.d();
                return;

            case 3: // '\003'
                adapterview = a;
                (new acl(adapterview, adapterview. new acl.a() {

                    final CatalogTools a;

                    public final void a(HashMap hashmap)
                    {
                        if (hashmap.size() > 0)
                        {
                            ArrayList arraylist = new ArrayList();
                            ArrayList arraylist1 = new ArrayList();
                            CatalogTools.a(a, hashmap, arraylist, arraylist1);
                            DeleteMultipleFiles.a(a, arraylist, arraylist1, false, 0x7f0600d5);
                            return;
                        } else
                        {
                            ahf.a(a, 0x7f060156);
                            return;
                        }
                    }

            
            {
                a = CatalogTools.this;
                super();
            }
                })).execute(new Void[] {
                    null
                });
                return;

            case 4: // '\004'
                a.e();
                return;

            case 5: // '\005'
                a.f();
                return;

            case 6: // '\006'
                a.c();
                return;

            case 7: // '\007'
                CatalogTools.a(a);
                return;

            case 9: // '\t'
                CatalogTools.b(a);
                return;

            case 10: // '\n'
                CatalogTools.c(a);
                break;
            }
        }

        private a()
        {
            a = CatalogTools.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    ahh a;

    public CatalogTools()
    {
    }

    static void a(CatalogTools catalogtools)
    {
        (new acp(catalogtools, aei.a().b.f(), aei.a().c.e())).execute(new Void[] {
            null
        });
    }

    static void a(CatalogTools catalogtools, HashMap hashmap, List list, List list1)
    {
        for (hashmap = hashmap.entrySet().iterator(); hashmap.hasNext();)
        {
            Object obj = (ArrayList)((java.util.Map.Entry)hashmap.next()).getValue();
            list1.add(catalogtools.getString(0x7f0600d6, new Object[] {
                Integer.valueOf(((ArrayList) (obj)).size())
            }));
            list.add(Integer.valueOf(-list1.size()));
            obj = ((ArrayList) (obj)).iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                list.add(Integer.valueOf(((aeq)((Iterator) (obj)).next()).a));
            }
        }

    }

    static void b(CatalogTools catalogtools)
    {
        File file1 = Environment.getDataDirectory();
        File file = file1;
        if (!file1.canWrite())
        {
            File file2 = Environment.getRootDirectory();
            file = file2;
            if (!file2.canWrite())
            {
                file = catalogtools.getApplicationContext().getFilesDir();
            }
        }
        (new ach(catalogtools, (new StringBuilder()).append(file.getPath()).append("/comicat.bak").toString())).execute(new Void[] {
            null
        });
    }

    private boolean b(String s)
    {
        if ((new ZipFile(new File(s))).getEntry("database") == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        (new acq(this)).execute(new Void[] {
            null
        });
        return true;
        s;
        s.printStackTrace();
        return false;
    }

    static void c(CatalogTools catalogtools)
    {
        afw.a(catalogtools, catalogtools.getString(0x7f060282), catalogtools.getString(0x7f060284), catalogtools. new afw.a() {

            final CatalogTools a;

            public final void a(boolean flag)
            {
                if (flag)
                {
                    a.a = ahh.a(null, null);
                    a.a.show(a.getSupportFragmentManager(), null);
                }
            }

            
            {
                a = CatalogTools.this;
                super();
            }
        });
    }

    public final void a(String s)
    {
        a.dismiss();
        if (s != null && !b(s))
        {
            ahf.a(this, 0x7f060280);
        }
    }

    public final void c()
    {
        Object obj = ael.f();
        Object obj1 = ael.c();
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        if (((List) (obj1)).size() > 0)
        {
            arraylist1.add(getString(0x7f0601ce));
            arraylist.add(Integer.valueOf(-arraylist1.size()));
            ael.a(((List) (obj1)), "prefSortByFilePathEx");
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); arraylist.add(Integer.valueOf(((aeq)((Iterator) (obj1)).next()).a))) { }
        }
        if (((List) (obj)).size() > 0)
        {
            arraylist1.add(getString(0x7f0601d9));
            arraylist.add(Integer.valueOf(-arraylist1.size()));
            ael.a(((List) (obj)), "prefSortByFilePathEx");
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(Integer.valueOf(((aeq)((Iterator) (obj)).next()).a))) { }
        }
        (new acl(this, new acl.a(arraylist, arraylist1) {

            final ArrayList a;
            final ArrayList b;
            final CatalogTools c;

            public final void a(HashMap hashmap)
            {
                if (hashmap.size() > 0 || a.size() > 0)
                {
                    CatalogTools.a(c, hashmap, a, b);
                    DeleteMultipleFiles.a(c, a, b, false, 0x7f06010b);
                    return;
                } else
                {
                    ahf.a(c, 0x7f060157);
                    return;
                }
            }

            
            {
                c = CatalogTools.this;
                a = arraylist;
                b = arraylist1;
                super();
            }
        })).execute(new Void[] {
            null
        });
    }

    public final void d()
    {
        Object obj = aei.a().b.f();
        ael.a(((List) (obj)), "prefSortByFilePathEx");
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (obj)).next();
            if (!aeq1.d() || aeq1.h.c(16))
            {
                arraylist.add(Integer.valueOf(aeq1.a));
            }
        } while (true);
        DeleteMultipleFiles.a(this, arraylist, null, false, 0x7f0600ba);
    }

    public final void e()
    {
        Object obj1 = aei.a().b.f();
        Object obj = new ArrayList();
        obj1 = ((List) (obj1)).iterator();
        do
        {
            if (!((Iterator) (obj1)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (obj1)).next();
            if (aeq1.d() && !aeq1.g() && aeq1.h.c(2))
            {
                ((ArrayList) (obj)).add(aeq1);
            }
        } while (true);
        if (((ArrayList) (obj)).size() == 0)
        {
            ahf.a(this, 0x7f06015c);
            return;
        }
        obj = ((ArrayList) (obj)).iterator();
        int i = 0;
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            if (adh.a((aeq)((Iterator) (obj)).next()))
            {
                i++;
            }
        } while (true);
        ahf.a(this, getString(0x7f060091, new Object[] {
            Integer.valueOf(i)
        }));
    }

    public final void f()
    {
        ArrayList arraylist = ael.f();
        ael.a(arraylist, "prefSortByFilePathEx");
        if (arraylist.size() > 0)
        {
            DeleteMultipleFiles.a(this, arraylist, 0x7f0601de);
            return;
        } else
        {
            ahf.a(this, 0x7f060152);
            return;
        }
    }

    public final void g()
    {
        a.dismiss();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030050);
        bundle = (ListView)findViewById(0x7f0c008d);
        ArrayList arraylist = new ArrayList();
        agw.a(arraylist, getResources(), 0x7f060144, 0x7f060145);
        agw.a(arraylist, getResources(), 0x7f0600bd, 0x7f0600be);
        agw.a(arraylist, getResources(), 0x7f0600ba, 0x7f0600bb);
        agw.a(arraylist, getResources(), 0x7f0600fb, 0x7f0600fc);
        agw.a(arraylist, getResources(), 0x7f060063, 0x7f060064);
        agw.a(arraylist, getResources(), 0x7f0601de, 0x7f0601df);
        agw.a(arraylist, getResources(), 0x7f06010b, 0x7f06010c);
        agw.a(arraylist, getResources(), 0x7f0601d6, 0x7f0601d7);
        bundle.setAdapter(new acg(this, arraylist));
        bundle.setOnItemClickListener(new a((byte)0));
    }
}
