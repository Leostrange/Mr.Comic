// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import aci;
import acs;
import act;
import add;
import ade;
import aei;
import aev;
import aew;
import afw;
import agv;
import ahf;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.CloudSyncSettings;
import meanlabs.comicreader.ReaderActivity;
import meanlabs.comicreader.utils.ConnectivityReceiver;

// Referenced classes of package meanlabs.comicreader.cloud:
//            ActiveDownloads

public class CloudSync extends ReaderActivity
    implements ade, android.widget.AdapterView.OnItemClickListener
{
    public final class a extends BaseAdapter
    {

        ArrayList a;
        final CloudSync b;

        public final void a()
        {
            a = new ArrayList();
            Object obj = new ArrayList(act.b().c);
            Collections.sort(((List) (obj)), new Comparator(this) {

                final a a;

                public final int compare(Object obj, Object obj1)
                {
                    obj = (acs)obj;
                    obj1 = (acs)obj1;
                    return ((acs) (obj)).k().compareTo(((acs) (obj1)).k());
                }

            
            {
                a = a1;
                super();
            }
            });
            acs acs1;
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); a.add(Integer.valueOf(acs1.a())))
            {
                acs1 = (acs)((Iterator) (obj)).next();
            }

        }

        public final boolean areAllItemsEnabled()
        {
            return false;
        }

        public final int getCount()
        {
            return a.size();
        }

        public final Object getItem(int i)
        {
            return a.get(i);
        }

        public final long getItemId(int i)
        {
            return (long)i;
        }

        public final View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            if (view == null)
            {
                viewgroup = b.getLayoutInflater().inflate(0x7f030028, null);
            }
            i = ((Integer)a.get(i)).intValue();
            Object obj = (TextView)viewgroup.findViewById(0x7f0c008f);
            ImageView imageview = (ImageView)viewgroup.findViewById(0x7f0c008e);
            TextView textview = (TextView)viewgroup.findViewById(0x7f0c0090);
            view = (TextView)viewgroup.findViewById(0x7f0c0091);
            acs acs1 = act.b().a(i);
            if (acs1 != null)
            {
                ((TextView) (obj)).setText(acs1.k());
                imageview.setImageResource(acs1.d());
                textview.setText(b.getString(0x7f06020b));
                obj = aei.a().g.a(i);
                if (obj != null)
                {
                    view.setText((new StringBuilder()).append(b.getString(0x7f060131)).append(" ").append(agv.a(b, ((aev) (obj)).k)).toString());
                }
            }
            return viewgroup;
        }

        public final boolean isEnabled(int i)
        {
            return !aci.a();
        }

        public a()
        {
            b = CloudSync.this;
            super();
            a();
        }
    }


    a a;

    public CloudSync()
    {
    }

    private void a(int i)
    {
        acs acs1 = act.b().a(i);
        if (acs1 != null)
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(acs1);
            b(arraylist);
        }
    }

    static void a(CloudSync cloudsync, int i)
    {
        cloudsync.a(i);
    }

    private static CharSequence[] a(List list)
    {
        CharSequence acharsequence[] = new CharSequence[list.size()];
        for (int i = 0; i < list.size(); i++)
        {
            acharsequence[i] = ((add)list.get(i)).a(null).c();
        }

        return acharsequence;
    }

    private void b(List list)
    {
        if (!aci.a())
        {
            if (ConnectivityReceiver.a().c)
            {
                (new aci(this, list)).execute(new Void[] {
                    null
                });
                return;
            } else
            {
                ahf.b(this, 0x7f060154);
                return;
            }
        } else
        {
            ahf.b(this, 0x7f06005a);
            return;
        }
    }

    private void c()
    {
        runOnUiThread(new Runnable() {

            final CloudSync a;

            public final void run()
            {
                a.a.a();
                a.a.notifyDataSetChanged();
            }

            
            {
                a = CloudSync.this;
                super();
            }
        });
    }

    public final void a(int i, boolean flag)
    {
        c();
        if (flag)
        {
            runOnUiThread(new Runnable(i) {

                final int a;
                final CloudSync b;

                public final void run()
                {
                    afw.a(b, b.getString(0x7f06007c), b.getString(0x7f06023d), 0x7f060239, 0x1040000, new afw.a(this) {

                        final _cls3 a;

                        public final void a(boolean flag)
                        {
                            if (flag)
                            {
                                CloudSync.a(a.b, a.a);
                            }
                        }

            
            {
                a = _pcls3;
                super();
            }
                    });
                }

            
            {
                b = CloudSync.this;
                a = i;
                super();
            }
            });
        }
    }

    public final void b(int i, boolean flag)
    {
        c();
    }

    public final void d(int i)
    {
        c();
    }

    public final void e(int i)
    {
        c();
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        int i = ((Integer)a.getItem(((android.widget.AdapterView.AdapterContextMenuInfo)menuitem.getMenuInfo()).position)).intValue();
        switch (menuitem.getItemId())
        {
        default:
            return false;

        case 2131493168: 
            afw.a(this, getString(0x7f0600b1), getString(0x7f0600b2), new afw.a(i) {

                final int a;
                final CloudSync b;

                public final void a(boolean flag)
                {
                    if (flag)
                    {
                        act.b().b(a);
                    }
                }

            
            {
                b = CloudSync.this;
                a = i;
                super();
            }
            });
            return true;

        case 2131493167: 
            act.b().a(i).a(this);
            return true;

        case 2131493134: 
            a(i);
            return true;

        case 2131493169: 
            menuitem = act.b().a(i);
            break;
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle(getString(0x7f06012b, new Object[] {
            menuitem.c()
        }));
        builder.setMessage(menuitem.e());
        builder.setCancelable(true);
        builder.setIcon(menuitem.d());
        builder.create().show();
        return true;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030029);
        a = new a();
        bundle = (ListView)findViewById(0x7f0c0092);
        bundle.setAdapter(a);
        registerForContextMenu(bundle);
        bundle.setOnItemClickListener(this);
        bundle.setEmptyView(findViewById(0x1020004));
        act.b().a = this;
        bundle = aei.a().g.a("box");
        if (bundle.size() <= 0) goto _L2; else goto _L1
_L1:
        bundle = bundle.iterator();
_L5:
        if (!bundle.hasNext()) goto _L2; else goto _L3
_L3:
        aev aev1 = (aev)bundle.next();
        if (aev1.g != null && aev1.g.length() != 0) goto _L5; else goto _L4
_L4:
        boolean flag = true;
_L7:
        if (flag)
        {
            afw.a(this, getString(0x7f060274), getString(0x7f06025a, new Object[] {
                getString(0x104000a), getString(0x7f060051)
            }), new afw.a() {

                final CloudSync a;

                public final void a(boolean flag1)
                {
                    if (flag1)
                    {
                        Object obj = aei.a().g.a("box");
                        if (((List) (obj)).size() > 0)
                        {
                            obj = ((List) (obj)).iterator();
                            do
                            {
                                if (!((Iterator) (obj)).hasNext())
                                {
                                    break;
                                }
                                aev aev2 = (aev)((Iterator) (obj)).next();
                                if (aev2.g == null || aev2.g.length() == 0)
                                {
                                    act.b().b(aev2.a);
                                }
                            } while (true);
                        }
                    }
                }

            
            {
                a = CloudSync.this;
                super();
            }
            });
        }
        return;
_L2:
        flag = false;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        view = getMenuInflater();
        contextmenu.setHeaderTitle(0x7f060168);
        contextmenuinfo = (Integer)a.getItem(((android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo).position);
        if (contextmenuinfo != null && act.b().a(contextmenuinfo.intValue()) != null)
        {
            view.inflate(0x7f0d0007, contextmenu);
            if (aci.a())
            {
                contextmenu.findItem(0x7f0c010e).setVisible(false);
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d0008, menu);
        return true;
    }

    protected void onDestroy()
    {
        act.b().a = null;
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (Integer)a.getItem(i);
        if (adapterview != null)
        {
            a(adapterview.intValue());
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131493172: 
            menuitem = act.b().c;
            if (menuitem.size() > 0)
            {
                b(menuitem);
                return true;
            } else
            {
                ahf.b(this, 0x7f060151);
                return true;
            }

        case 2131493170: 
            menuitem = act.b().b;
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
            builder.setTitle(0x7f060209);
            builder.setSingleChoiceItems(a(menuitem), 0, new android.content.DialogInterface.OnClickListener(menuitem) {

                final List a;
                final CloudSync b;

                public final void onClick(DialogInterface dialoginterface, int i)
                {
                    Object obj = act.b();
                    CloudSync cloudsync = b;
                    obj = ((act) (obj)).a(((add)a.get(i)).a());
                    if (obj != null)
                    {
                        ((add) (obj)).a(cloudsync, -1);
                    }
                    dialoginterface.dismiss();
                }

            
            {
                b = CloudSync.this;
                a = list;
                super();
            }
            }).create().show();
            return true;

        case 2131493128: 
            startActivity(new Intent(this, meanlabs/comicreader/CloudSyncSettings));
            return true;

        case 2131493171: 
            startActivity(new Intent(this, meanlabs/comicreader/cloud/ActiveDownloads));
            return true;
        }
    }

    protected void onResume()
    {
        super.onResume();
    }
}
