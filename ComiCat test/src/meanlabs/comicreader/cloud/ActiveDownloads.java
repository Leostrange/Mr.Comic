// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import acv;
import acx;
import ada;
import adf;
import aei;
import aep;
import aer;
import aet;
import aeu;
import afw;
import agm;
import agv;
import agw;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.CloudSyncSettings;
import meanlabs.comicreader.ReaderActivity;
import meanlabs.comicreader.utils.ConnectivityReceiver;

// Referenced classes of package meanlabs.comicreader.cloud:
//            DownloaderService

public class ActiveDownloads extends ReaderActivity
    implements adf
{

    acx a;
    ListView b;
    DownloaderService c;

    public ActiveDownloads()
    {
    }

    static void a(ActiveDownloads activedownloads)
    {
        activedownloads.c();
    }

    static void a(ActiveDownloads activedownloads, int i)
    {
        if (activedownloads.a.isEnabled(i))
        {
            acv acv1 = (acv)activedownloads.a.getItem(i);
            if (acv1 != null)
            {
                if (acv1.e == acv.a.c && acv1.a.h > 0)
                {
                    agm.a(activedownloads, acv1.a.h, false);
                } else
                if (acv1.e == acv.a.d || acv1.e == acv.a.e)
                {
                    activedownloads.c.b(acv1);
                    return;
                }
            }
        }
    }

    static void b(ActiveDownloads activedownloads)
    {
        activedownloads.d();
    }

    private void c()
    {
        b.post(new Runnable() {

            final ActiveDownloads a;

            public final void run()
            {
                a.a.a(a.c.b());
                ActiveDownloads.b(a);
            }

            
            {
                a = ActiveDownloads.this;
                super();
            }
        });
    }

    private void d()
    {
        if (a != null)
        {
            Object obj = ConnectivityReceiver.a();
            TextView textview = (TextView)findViewById(0x7f0c0069);
            Object obj1 = c.b();
            long l = 0L;
            int k;
            long l1;
            if (((List) (obj1)).size() > 0)
            {
                obj1 = ((List) (obj1)).iterator();
                int i = 0;
                do
                {
                    l1 = l;
                    k = i;
                    if (!((Iterator) (obj1)).hasNext())
                    {
                        break;
                    }
                    acv acv1 = (acv)((Iterator) (obj1)).next();
                    if (acv1.e != acv.a.c && acv1.e != acv.a.h)
                    {
                        l += acv1.a.e;
                        i++;
                    }
                } while (true);
            } else
            {
                k = 0;
                l1 = l;
            }
            int j;
            if (((ConnectivityReceiver) (obj)).c() == meanlabs.comicreader.utils.ConnectivityReceiver.a.a)
            {
                j = 0x7f0601c0;
            } else
            {
                j = 0x7f0601c1;
            }
            obj = getString(j);
            if (k > 0)
            {
                obj = (new StringBuilder()).append(((String) (obj))).append(" ").append(getString(0x7f0600d3, new Object[] {
                    Integer.valueOf(k), agv.a(l1)
                })).toString();
            } else
            {
                obj = (new StringBuilder()).append(((String) (obj))).append(" ").append(getString(0x7f060155)).toString();
            }
            textview.setText(((CharSequence) (obj)));
        }
    }

    public final void a(int i)
    {
        c();
    }

    public final void a(int i, int j)
    {
        acx acx1 = a;
        acx.a a1 = acx1.a(i);
        if (a1 != null && a1.b != null)
        {
            acx1.a((acx.c)a1.b.getTag(), a1.a);
        }
        d();
        c();
    }

    public final void a(int i, int j, int k)
    {
        acx acx1 = a;
        acx.a a1 = acx1.a(i);
        if (a1 == null || a1.b == null)
        {
            return;
        } else
        {
            acx1.a((acx.c)a1.b.getTag(), j, a1.a.a.e, k, a1.a.e);
            return;
        }
    }

    public final void a(acv acv1)
    {
        c();
    }

    public final void a_()
    {
        if (c != null)
        {
            c.a = this;
        }
        c();
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        Object obj = (android.widget.AdapterView.AdapterContextMenuInfo)menuitem.getMenuInfo();
        obj = (acv)a.getItem(((android.widget.AdapterView.AdapterContextMenuInfo) (obj)).position);
        if (obj == null)
        {
            return false;
        }
        if (c == null)
        {
            return false;
        }
        int i = menuitem.getItemId();
        if (i == 0x7f0c0139)
        {
            c.c(((acv) (obj)));
            return true;
        }
        if (i == 0x7f0c0027)
        {
            c.b(((acv) (obj)));
            return true;
        }
        if (i == 0x7f0c0074)
        {
            menuitem = getString(0x1040000);
            afw.a(this, menuitem, getString(0x7f060235, new Object[] {
                menuitem
            }), new afw.a(((acv) (obj))) {

                final acv a;
                final ActiveDownloads b;

                public final void a(boolean flag)
                {
                    if (flag)
                    {
                        b.c.a(a, false);
                    }
                }

            
            {
                b = ActiveDownloads.this;
                a = acv1;
                super();
            }
            });
            return true;
        }
        if (i == 0x7f0c013a)
        {
            afw.a(this, getString(0x7f060067), getString(0x7f060068), new afw.a(((acv) (obj))) {

                final acv a;
                final ActiveDownloads b;

                public final void a(boolean flag)
                {
                    if (flag)
                    {
                        b.c.a(a, false);
                        aei.a().h.a(a.a.b, a.a.c, 2);
                    }
                }

            
            {
                b = ActiveDownloads.this;
                a = acv1;
                super();
            }
            });
            return true;
        }
        if (i == 0x7f0c0136)
        {
            DownloaderService.d(((acv) (obj)));
            return true;
        }
        if (i == 0x7f0c013b)
        {
            menuitem = ((acv) (obj)).a.f;
            menuitem.a = ((aet) (menuitem)).a ^ 0x80;
            menuitem = aei.a().f;
            aer.a(((acv) (obj)).a);
            c.b.a();
            c();
            return true;
        }
        if (i == 0x7f0c011d)
        {
            agm.a(this, ((acv) (obj)).a.h, false);
            return true;
        }
        if (i == 0x7f0c0137)
        {
            c.e(((acv) (obj)));
            return true;
        } else
        {
            return super.onContextItemSelected(menuitem);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001a);
        b = (ListView)findViewById(0x7f0c006a);
        c = DownloaderService.a();
        bundle = c.b();
        if (bundle == null)
        {
            bundle = new ArrayList();
        }
        a = new acx(this, bundle);
        b.setAdapter(a);
        b.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ActiveDownloads a;

            public final void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                ActiveDownloads.a(a, i);
            }

            
            {
                a = ActiveDownloads.this;
                super();
            }
        });
        b.setEmptyView(findViewById(0x1020004));
        d();
        c.a = this;
        registerForContextMenu(b);
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        boolean flag3;
label0:
        {
            flag3 = true;
            boolean flag2 = true;
            super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
            view = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
            view = (acv)a.getItem(((android.widget.AdapterView.AdapterContextMenuInfo) (view)).position);
            if (view != null)
            {
                contextmenuinfo = getMenuInflater();
                if (view.g())
                {
                    break label0;
                }
                contextmenuinfo.inflate(0x7f0d000c, contextmenu);
                contextmenu.setHeaderTitle(0x7f0600cd);
                boolean flag;
                if (((acv) (view)).e != acv.a.d && ((acv) (view)).e != acv.a.e)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                contextmenu.findItem(0x7f0c0139).setVisible(flag);
                contextmenuinfo = contextmenu.findItem(0x7f0c0027);
                if (!flag)
                {
                    flag = flag2;
                } else
                {
                    flag = false;
                }
                contextmenuinfo.setVisible(flag);
                if (((acv) (view)).a.d())
                {
                    contextmenu.findItem(0x7f0c013b).setTitle(0x7f060210);
                }
            }
            return;
        }
        contextmenuinfo.inflate(0x7f0d000a, contextmenu);
        contextmenu.setHeaderTitle(0x7f0600cd);
        contextmenuinfo = contextmenu.findItem(0x7f0c011d);
        boolean flag1;
        if (((acv) (view)).a.h > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        contextmenuinfo.setVisible(flag1);
        contextmenu = contextmenu.findItem(0x7f0c0136);
        if (((acv) (view)).e == acv.a.e)
        {
            flag1 = flag3;
        } else
        {
            flag1 = false;
        }
        contextmenu.setVisible(flag1);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d0000, menu);
        return true;
    }

    protected void onDestroy()
    {
        if (c != null)
        {
            c.a = null;
        }
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        int i = menuitem.getItemId();
        if (i == 0x7f0c0108)
        {
            startActivity(new Intent(this, meanlabs/comicreader/CloudSyncSettings));
            return true;
        }
        if (i == 0x7f0c0101)
        {
            menuitem = getString(0x7f060173);
            afw.a(this, menuitem, getString(0x7f060235, new Object[] {
                menuitem
            }), new afw.a() {

                final ActiveDownloads a;

                public final void a(boolean flag)
                {
                    DownloaderService downloaderservice;
                    if (!flag)
                    {
                        break MISSING_BLOCK_LABEL_74;
                    }
                    downloaderservice = a.c;
                    downloaderservice.b.b = true;
                    for (Iterator iterator = downloaderservice.b().iterator(); iterator.hasNext(); downloaderservice.c((acv)iterator.next())) { }
                    break MISSING_BLOCK_LABEL_66;
                    Exception exception;
                    exception;
                    downloaderservice.b.b = false;
                    throw exception;
                    downloaderservice.b.b = false;
                }

            
            {
                a = ActiveDownloads.this;
                super();
            }
            });
            return true;
        }
        if (i == 0x7f0c0103)
        {
            menuitem = getString(0x7f060066);
            afw.a(this, menuitem, getString(0x7f060235, new Object[] {
                menuitem
            }), new afw.a() {

                final ActiveDownloads a;

                public final void a(boolean flag)
                {
                    DownloaderService downloaderservice;
                    if (!flag)
                    {
                        break MISSING_BLOCK_LABEL_82;
                    }
                    downloaderservice = a.c;
                    downloaderservice.b.b = true;
                    for (Iterator iterator = (new ArrayList(downloaderservice.b())).iterator(); iterator.hasNext(); downloaderservice.a((acv)iterator.next(), false)) { }
                    break MISSING_BLOCK_LABEL_74;
                    Exception exception;
                    exception;
                    downloaderservice.b.b = false;
                    throw exception;
                    downloaderservice.b.b = false;
                }

            
            {
                a = ActiveDownloads.this;
                super();
            }
            });
            return true;
        }
        if (i == 0x7f0c0102)
        {
            c.c();
            return true;
        }
        if (i == 0x7f0c0106)
        {
            c.d();
            return true;
        }
        if (i == 0x7f0c0107)
        {
            menuitem = new agw.a() {

                final ActiveDownloads a;

                public final void a(String s1)
                {
                    ActiveDownloads.a(a);
                }

            
            {
                a = ActiveDownloads.this;
                super();
            }
            };
            CharSequence acharsequence[] = new CharSequence[3];
            acharsequence[0] = "prefSortByService";
            acharsequence[1] = "prefSortByDownloadStatus";
            acharsequence[2] = "prefSortAlphabetically";
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
            builder.setTitle(0x7f060230);
            String s = aei.a().d.b("sort-downloads-by");
            builder.setSingleChoiceItems(agw.a(acharsequence), agv.a(acharsequence, s), new agw._cls2(acharsequence, menuitem)).create().show();
            return true;
        }
        if (i == 0x7f0c0104)
        {
            c.e();
            return true;
        }
        if (i == 0x7f0c0105)
        {
            menuitem = getString(0x7f0601db);
            afw.a(this, menuitem, getString(0x7f060235, new Object[] {
                menuitem
            }), new afw.a() {

                final ActiveDownloads a;

                public final void a(boolean flag)
                {
                    DownloaderService downloaderservice;
                    if (!flag)
                    {
                        break MISSING_BLOCK_LABEL_103;
                    }
                    downloaderservice = a.c;
                    downloaderservice.b.b = true;
                    Iterator iterator = (new ArrayList(downloaderservice.b())).iterator();
_L2:
                    acv acv1;
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break MISSING_BLOCK_LABEL_95;
                        }
                        acv1 = (acv)iterator.next();
                        if (!acv1.g())
                        {
                            break MISSING_BLOCK_LABEL_85;
                        }
                        downloaderservice.e(acv1);
                    } while (true);
                    Exception exception;
                    exception;
                    downloaderservice.b.b = false;
                    throw exception;
                    downloaderservice.a(acv1, true);
                    if (true) goto _L2; else goto _L1
_L1:
                    downloaderservice.b.b = false;
                }

            
            {
                a = ActiveDownloads.this;
                super();
            }
            });
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onPause()
    {
        if (c != null)
        {
            c.a = null;
        }
        super.onPause();
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        boolean flag;
        if (a.getCount() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        menu.findItem(0x7f0c0101).setEnabled(flag);
        menu.findItem(0x7f0c0102).setEnabled(flag);
        menu.findItem(0x7f0c0103).setEnabled(flag);
        menu.findItem(0x7f0c0105).setEnabled(flag);
        menu.findItem(0x7f0c0104).setEnabled(flag);
        return true;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("restarted", true);
    }
}
