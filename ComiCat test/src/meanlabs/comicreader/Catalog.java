// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acr;
import aei;
import aek;
import ael;
import aem;
import aen;
import aeq;
import aeu;
import afm;
import afo;
import afq;
import aft;
import afu;
import afw;
import afz;
import agb;
import agc;
import agm;
import agv;
import agw;
import agy;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBar;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity, ComicReaderApp, Viewer, CatalogSettings

public class Catalog extends ReaderActivity
    implements acr.a, afw.a
{
    public final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final Catalog a;

        public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            if (l1 != -1L)
            {
                adapterview = Catalog.a(a, view, i1);
                (new StringBuilder("Item found: ")).append(adapterview.l());
                adapterview.n().a(a);
            }
        }

        public a()
        {
            a = Catalog.this;
            super();
        }
    }


    static boolean l = true;
    FrameLayout a;
    public GridView b;
    public GridView c;
    Button d;
    LinearLayout e;
    Drawable f;
    afz g;
    public afq h;
    DrawerLayout i;
    afo j;
    long k;
    boolean m;

    public Catalog()
    {
        k = 0L;
        m = false;
    }

    private aft a(View view, int i1)
    {
        Object obj = null;
        aft aft1 = obj;
        if (view != null)
        {
            view = (agc)view.getTag();
            aft1 = obj;
            if (view != null)
            {
                aft1 = view.a();
            }
        }
        if (aft1 == null)
        {
            view = (afm)k().getAdapter();
            if (view != null)
            {
                return (aft)view.getItem(i1);
            }
        }
        return aft1;
    }

    static aft a(Catalog catalog, View view, int i1)
    {
        return catalog.a(view, i1);
    }

    private List a(List list)
    {
        Object obj = list;
        if (g.a())
        {
            String s = g.c.getText().toString().toLowerCase();
            obj = list;
            if (s.length() != 0)
            {
                obj = new ArrayList();
                boolean flag1 = g.d.isChecked();
                list = list.iterator();
                do
                {
                    if (!list.hasNext())
                    {
                        break;
                    }
                    aeq aeq1 = (aeq)list.next();
                    boolean flag;
                    if (flag1)
                    {
                        flag = aeq1.c.toLowerCase().startsWith((String)s);
                    } else
                    {
                        flag = aeq1.c.toLowerCase().contains(s);
                    }
                    if (flag)
                    {
                        ((List) (obj)).add(aeq1);
                    }
                } while (true);
            }
        }
        return ((List) (obj));
    }

    static void a(Catalog catalog)
    {
        agm.a(catalog, catalog);
    }

    private void b(List list)
    {
        GridView gridview = k();
        gridview.setAdapter(new agb(this, this, list, gridview, f));
    }

    private void g()
    {
        h.a(false);
    }

    private List h()
    {
label0:
        {
            Object obj = aei.a().b.f();
            if (obj == null || ((List) (obj)).size() == 0)
            {
                return null;
            }
            e.setVisibility(8);
            aem aem1 = h.a();
            Object obj1 = obj;
            if (aem1 == null)
            {
                break label0;
            }
            if (!agw.e() && aem1.a == 0)
            {
                obj1 = obj;
                if (!g.a())
                {
                    break label0;
                }
            }
            obj1 = new ArrayList();
            if (aem1.f())
            {
                if (aem1.a == 0)
                {
                    if (!g.a())
                    {
                        obj = obj1;
                    }
                } else
                {
                    obj = agy.a(((List) (obj)), aem1.a);
                }
            } else
            {
                obj = ael.a(((List) (obj)), aem1, false);
            }
            obj1 = a(((List) (obj)));
        }
        obj = ael.b(((List) (obj1)));
        ael.a(((List) (obj)), aei.a().d.b("catalog-sort-order"));
        return ((List) (obj));
    }

    private List i()
    {
        Object obj1;
        int i1;
        obj1 = null;
        i1 = h.b();
        if (!agw.f()) goto _L2; else goto _L1
_L1:
        if (g.a() || i1 > 0 && i1 < h.e.size()) goto _L4; else goto _L3
_L3:
        if (i1 != 0) goto _L6; else goto _L5
_L5:
        Object obj;
        obj = aei.a().c.f();
        if (obj == null || ((List) (obj)).size() == 0)
        {
            break MISSING_BLOCK_LABEL_536;
        }
        if (((List) (obj)).size() <= 1 && ((aem)((List) (obj)).get(0)).d == 0) goto _L8; else goto _L7
_L7:
        if (obj1 != null)
        {
            (new StringBuilder("Folder to display is: ")).append(((aem) (obj1)).a()).append(", \n ").append(((aem) (obj1)).j);
            obj = ael.b(aei.a().c.e(), ((aem) (obj1)), false);
        }
_L10:
        obj1 = obj;
        if (obj != null)
        {
            obj1 = obj;
            if (((List) (obj)).size() > 0)
            {
                obj = ael.a(new ArrayList(((java.util.Collection) (obj))));
                ael.b(((List) (obj)), aei.a().d.b("catalog-sort-order"));
                obj1 = obj;
                if (i1 == 0)
                {
                    obj1 = h;
                    ArrayList arraylist = new ArrayList(((afq) (obj1)).e.size());
                    aeu aeu1 = aei.a().d;
                    if (aeu1.a("showInbuiltFolder", 1))
                    {
                        arraylist.add(((afq) (obj1)).e.get(Integer.valueOf(-2)));
                    }
                    if (aeu1.a("showInbuiltFolder", 8))
                    {
                        arraylist.add(((afq) (obj1)).e.get(Integer.valueOf(-3)));
                    }
                    if (aeu1.a("showInbuiltFolder", 16))
                    {
                        arraylist.add(((afq) (obj1)).e.get(Integer.valueOf(-4)));
                    }
                    if (((afq) (obj1)).c(-6) && aeu1.a("showInbuiltFolder", 4))
                    {
                        arraylist.add(((afq) (obj1)).e.get(Integer.valueOf(-6)));
                    }
                    if (((afq) (obj1)).c(-5) && aeu1.a("showInbuiltFolder", 2))
                    {
                        arraylist.add(((afq) (obj1)).e.get(Integer.valueOf(-5)));
                    }
                    ((List) (obj)).addAll(0, arraylist);
                    obj1 = obj;
                }
            }
        }
        aem aem1;
        if (obj1 != null)
        {
            return ((List) (obj1));
        } else
        {
            return new ArrayList();
        }
_L8:
        obj = (aem)((List) (obj)).get(0);
_L11:
        aem1 = null;
        obj1 = obj;
        obj = aem1;
          goto _L7
_L6:
        obj1 = h.a();
        obj = null;
          goto _L7
_L2:
        if (i1 != 0) goto _L4; else goto _L9
_L9:
        obj = new ArrayList();
        obj1 = aei.a().c.e().iterator();
        while (((Iterator) (obj1)).hasNext()) 
        {
            aem1 = (aem)((Iterator) (obj1)).next();
            if (aem1.d > 0)
            {
                ((List) (obj)).add(aem1);
            }
        }
          goto _L10
_L4:
        obj = null;
          goto _L10
        obj = null;
          goto _L11
    }

    private List j()
    {
        Object obj;
        Object obj1;
        Object obj2;
        if (agw.e() && !g.a())
        {
            obj = i();
        } else
        {
            obj = null;
        }
        obj2 = h();
        if (obj == null)
        {
            obj = new ArrayList();
        }
        obj1 = obj2;
        if (obj2 == null)
        {
            obj1 = new ArrayList();
        }
        obj2 = new ArrayList(((List) (obj)).size() + ((List) (obj1)).size());
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); ((List) (obj2)).add((aem)((Iterator) (obj)).next())) { }
        for (Iterator iterator = ((List) (obj1)).iterator(); iterator.hasNext(); ((List) (obj2)).add((aeq)iterator.next())) { }
        return ((List) (obj2));
    }

    private GridView k()
    {
        if (m() && !g.a())
        {
            return b;
        } else
        {
            return c;
        }
    }

    private void l()
    {
        if (m() && !g.a())
        {
            b.setVisibility(0);
            c.setVisibility(8);
            return;
        } else
        {
            b.setVisibility(8);
            c.setVisibility(0);
            return;
        }
    }

    private boolean m()
    {
        return agw.e() && h.a().a == 0;
    }

    public final void a(boolean flag)
    {
        e();
    }

    protected final void a_()
    {
        e();
        if (!l) goto _L2; else goto _L1
_L1:
        l = false;
        if (!"prefLastIncompleteComic".equals(aei.a().d.b("start-in"))) goto _L2; else goto _L3
_L3:
        Object obj;
        obj = aei.a().d.b("prefLastIncompleteComic");
        aei.a().d.a("prefLastIncompleteComic", "");
        if (obj == null || ((String) (obj)).length() <= 0) goto _L2; else goto _L4
_L4:
        if (!((String) (obj)).startsWith("cmc_")) goto _L6; else goto _L5
_L5:
        int i1 = agw.a(((String) (obj)), "cmc_");
        if (i1 != -1)
        {
            obj = aei.a().b.a(i1);
            if (obj != null && (!agw.a() || !agw.a(((aeq) (obj)))))
            {
                agm.a(this, i1, false);
            }
        }
_L2:
        if (!m)
        {
            h.a(true);
        }
        m = false;
        return;
_L6:
        if (((String) (obj)).startsWith("fldr_"))
        {
            int j1 = agw.a(((String) (obj)), "fldr_");
            if (j1 != -1)
            {
                aem aem1 = aei.a().c.a(j1);
                if (aem1 != null && (!agw.a() || !aem1.c()))
                {
                    agm.a(this, j1);
                }
            }
        }
        if (true) goto _L2; else goto _L7
_L7:
    }

    protected final void b()
    {
        c();
        super.b();
    }

    public final void c()
    {
        boolean flag = false;
        LinearLayout linearlayout = e;
        aek aek1 = aei.a().b;
        int i1;
        if (aek1.b == null || aek1.b.size() == 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 != 0)
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 8;
        }
        linearlayout.setVisibility(i1);
        g();
        d();
    }

    public final void d()
    {
        b(j());
        l();
    }

    public final void e()
    {
        afm afm1 = (afm)k().getAdapter();
        h.c();
        if (afm1 != null)
        {
            afm1.a(j());
            afm1.notifyDataSetChanged();
            l();
            return;
        } else
        {
            b(j());
            l();
            return;
        }
    }

    public final void f()
    {
        c();
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if (i1 == 1)
        {
            c();
        }
    }

    public void onBackPressed()
    {
        boolean flag;
        boolean flag1;
        afz afz1 = g;
        flag1 = afz1.a();
        if (flag1)
        {
            afz1.b();
        }
        flag = flag1;
        if (!flag1)
        {
            flag = flag1;
            if (i.b())
            {
                i.c(0x800003);
                flag = true;
            }
        }
        flag1 = flag;
        if (flag) goto _L2; else goto _L1
_L1:
        flag1 = flag;
        if (!agw.e()) goto _L2; else goto _L3
_L3:
        if (!agw.f()) goto _L5; else goto _L4
_L4:
        long l1;
        aem aem1 = h.a();
        flag1 = flag;
        if (aem1.a != 0)
        {
            aem1 = ael.b(aem1);
            afq afq1 = h;
            int i1;
            if (aem1 != null)
            {
                i1 = aem1.a;
            } else
            {
                i1 = 0;
            }
            afq1.a(i1);
            flag1 = true;
        }
_L2:
        if (!flag1)
        {
            l1 = System.currentTimeMillis();
            if (l1 - k > 2500L)
            {
                break; /* Loop/switch isn't completed */
            }
            super.onBackPressed();
        }
        return;
_L5:
        flag1 = flag;
        if (h.b() != 0)
        {
            h.b(0);
            e();
            flag1 = true;
        }
        if (true) goto _L2; else goto _L6
_L6:
        k = l1;
        Toast toast = Toast.makeText(this, 0x7f0600ef, 0);
        toast.setGravity(17, 0, 0);
        toast.show();
        return;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        c();
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        Object obj = (android.widget.AdapterView.AdapterContextMenuInfo)menuitem.getMenuInfo();
        obj = a(((android.widget.AdapterView.AdapterContextMenuInfo) (obj)).targetView, ((android.widget.AdapterView.AdapterContextMenuInfo) (obj)).position);
        boolean flag;
        if (obj != null)
        {
            flag = ((aft) (obj)).n().a(this, menuitem.getItemId());
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return flag;
        } else
        {
            return super.onContextItemSelected(menuitem);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        m = true;
        acr.a(this);
        ComicReaderApp.a(this);
        setContentView(0x7f03003d);
        a = (FrameLayout)findViewById(0x7f0c00ba);
        b = (GridView)findViewById(0x7f0c00bb);
        c = (GridView)findViewById(0x7f0c00bc);
        d = (Button)findViewById(0x7f0c00be);
        e = (LinearLayout)findViewById(0x7f0c00bd);
        i = (DrawerLayout)findViewById(0x7f0c00b9);
        h = new afq(this);
        g();
        f = b.getSelector();
        n.setDisplayShowTitleEnabled(false);
        g = new afz(this, new afz.a() {

            final Catalog a;

            public final void a()
            {
                a.e();
            }

            public final void b()
            {
                a.e();
            }

            public final void c()
            {
                a.e();
            }

            
            {
                a = Catalog.this;
                super();
            }
        });
        j = new afo(this, i);
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final Catalog a;

            public final void onClick(View view)
            {
                Catalog.a(a);
            }

            
            {
                a = Catalog.this;
                super();
            }
        });
        registerForContextMenu(b);
        registerForContextMenu(c);
        b.setOnItemClickListener(new a());
        c.setOnItemClickListener(new a());
        bundle = getIntent();
        if (bundle.getAction() != null && bundle.getAction().equals("android.intent.action.VIEW"))
        {
            l = false;
            bundle = bundle.getData().getPath();
            if (bundle != null && bundle != "")
            {
                bundle = agv.d(bundle);
                Intent intent = new Intent(this, meanlabs/comicreader/Viewer);
                intent.putExtra("comicpath", bundle);
                startActivity(intent);
            }
        }
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        view = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
        view = a(((android.widget.AdapterView.AdapterContextMenuInfo) (view)).targetView, ((android.widget.AdapterView.AdapterContextMenuInfo) (view)).position);
        if (view != null)
        {
            view.n().a(this, contextmenu);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d0006, menu);
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            menu.findItem(0x7f0c012a).setVisible(false);
        }
        return true;
    }

    protected void onDestroy()
    {
        acr.a(null);
        ComicReaderApp.a(null);
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 16908332: 
            if (i.b())
            {
                i.c(0x800003);
                return true;
            } else
            {
                i.b(0x800003);
                return true;
            }

        case 2131493118: 
            startActivityForResult(new Intent(this, meanlabs/comicreader/CatalogSettings), 1);
            return true;

        case 2131493163: 
            agw.a(this, new agw.a() {

                final Catalog a;

                public final void a(String s)
                {
                    a.d();
                }

            
            {
                a = Catalog.this;
                super();
            }
            });
            return true;

        case 2131493162: 
            onSearchRequested();
            return true;

        case 2131493165: 
            agm.a(this, this);
            return true;

        case 2131493164: 
            afw.a(this);
            return true;

        case 2131493166: 
            afw.a(this);
            return true;
        }
    }

    public boolean onSearchRequested()
    {
        if (g.a())
        {
            g.b();
        } else
        {
            afz afz1 = g;
            afz1.a.startSupportActionMode(afz1);
        }
        return true;
    }

}
