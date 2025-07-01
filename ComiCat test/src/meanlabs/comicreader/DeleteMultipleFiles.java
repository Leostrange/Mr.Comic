// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import ack;
import acs;
import act;
import aei;
import aek;
import ael;
import aeq;
import afw;
import agv;
import ahd;
import ahf;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity

public class DeleteMultipleFiles extends ReaderActivity
{
    public final class a extends BaseAdapter
    {

        Activity a;
        ArrayList b;
        ArrayList c;
        SparseArray d;
        final DeleteMultipleFiles e;

        public final void a()
        {
            for (int i = 0; i < b.size(); i++)
            {
                Integer integer = (Integer)b.get(i);
                if (integer.intValue() > 0)
                {
                    d.append(integer.intValue(), integer);
                }
            }

        }

        public final boolean areAllItemsEnabled()
        {
            return false;
        }

        public final int getCount()
        {
            return b.size();
        }

        public final Object getItem(int i)
        {
            return b.get(i);
        }

        public final long getItemId(int i)
        {
            return (long)((Integer)b.get(i)).intValue();
        }

        public final View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            if (view == null)
            {
                viewgroup = a.getLayoutInflater().inflate(0x7f03003f, null);
            }
            Integer integer = (Integer)b.get(i);
            if (integer.intValue() > 0)
            {
                viewgroup.findViewById(0x7f0c00a1).setVisibility(8);
                viewgroup.findViewById(0x7f0c00a2).setVisibility(0);
                aeq aeq1 = aei.a().b.a(integer.intValue());
                ((TextView)viewgroup.findViewById(0x7f0c00c4)).setText(aeq1.c);
                ((TextView)viewgroup.findViewById(0x7f0c00c5)).setText(agv.c(ael.a(aeq1)));
                ((TextView)viewgroup.findViewById(0x7f0c00c6)).setText(agv.a((new File(aeq1.d)).length()));
                TextView textview = (TextView)viewgroup.findViewById(0x7f0c00c7);
                String s = "";
                view = s;
                if (aeq1.d())
                {
                    acs acs1 = act.b().a(aeq1.g);
                    view = s;
                    if (acs1 != null)
                    {
                        view = acs1.k();
                    }
                }
                textview.setText(view);
                ((ImageView)viewgroup.findViewById(0x7f0c00c2)).setImageBitmap(ahd.a(aeq1.a, false));
                view = (ImageView)viewgroup.findViewById(0x7f0c00c3);
                if (d.get(integer.intValue()) != null)
                {
                    i = 0x7f020073;
                } else
                {
                    i = 0x7f020066;
                }
                view.setImageResource(i);
                return viewgroup;
            } else
            {
                viewgroup.findViewById(0x7f0c00a1).setVisibility(0);
                viewgroup.findViewById(0x7f0c00a2).setVisibility(8);
                i = -integer.intValue();
                view = (String)c.get(Integer.valueOf(i).intValue() - 1);
                ((TextView)viewgroup.findViewById(0x7f0c00a1)).setText(view);
                return viewgroup;
            }
        }

        public final boolean isEnabled(int i)
        {
            return getItemId(i) > 0L;
        }

        public a(Activity activity, ArrayList arraylist, ArrayList arraylist1, boolean flag)
        {
            e = DeleteMultipleFiles.this;
            super();
            a = activity;
            b = arraylist;
            c = arraylist1;
            d = new SparseArray();
            if (flag)
            {
                a();
            }
        }
    }


    boolean a;
    a b;

    public DeleteMultipleFiles()
    {
    }

    private void a(int i)
    {
        Button button = (Button)findViewById(0x7f0c00bf);
        if (i == 0)
        {
            button.setText(0x7f0600b0);
            button.setEnabled(false);
            return;
        } else
        {
            button.setEnabled(true);
            button.setText((new StringBuilder()).append(getString(0x7f0600b0)).append('(').append(i).append(')').toString());
            return;
        }
    }

    public static void a(Activity activity, ArrayList arraylist, ArrayList arraylist1, boolean flag, int i)
    {
        Intent intent = new Intent(activity, meanlabs/comicreader/DeleteMultipleFiles);
        intent.putExtra("selectall", flag);
        intent.putExtra("warn", true);
        intent.putExtra("title", activity.getString(i));
        intent.putIntegerArrayListExtra("comiclist", arraylist);
        intent.putStringArrayListExtra("headers", arraylist1);
        activity.startActivity(intent);
    }

    public static void a(Activity activity, List list, int i)
    {
        ArrayList arraylist = new ArrayList(list.size());
        for (list = list.iterator(); list.hasNext(); arraylist.add(Integer.valueOf(((aeq)list.next()).a))) { }
        a(activity, arraylist, null, true, i);
    }

    static void a(DeleteMultipleFiles deletemultiplefiles, int i)
    {
        deletemultiplefiles.a(i);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03003e);
        bundle = getIntent();
        a = bundle.getBooleanExtra("warn", false);
        Object obj = bundle.getStringExtra("title");
        if (obj != null)
        {
            setTitle(((CharSequence) (obj)));
        }
        b = new a(this, bundle.getIntegerArrayListExtra("comiclist"), bundle.getStringArrayListExtra("headers"), bundle.getBooleanExtra("selectall", false));
        bundle = (ListView)findViewById(0x7f0c00c0);
        bundle.setAdapter(b);
        bundle.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final DeleteMultipleFiles a;

            public final void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = a.b;
                view = (Integer)((a) (adapterview)).b.get(i);
                if (((a) (adapterview)).d.get(view.intValue()) != null)
                {
                    ((a) (adapterview)).d.remove(view.intValue());
                } else
                {
                    ((a) (adapterview)).d.append(view.intValue(), view);
                }
                DeleteMultipleFiles.a(a, a.b.d.size());
                a.b.notifyDataSetChanged();
            }

            
            {
                a = DeleteMultipleFiles.this;
                super();
            }
        });
        bundle = (Button)findViewById(0x7f0c0074);
        obj = (Button)findViewById(0x7f0c00bf);
        bundle.setOnClickListener(new android.view.View.OnClickListener() {

            final DeleteMultipleFiles a;

            public final void onClick(View view)
            {
                a.finish();
            }

            
            {
                a = DeleteMultipleFiles.this;
                super();
            }
        });
        ((Button) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final DeleteMultipleFiles a;

            public final void onClick(View view)
            {
                view = a.b;
                Object obj2 = new ArrayList();
                for (int i = 0; i < ((a) (view)).d.size(); i++)
                {
                    ((ArrayList) (obj2)).add(Integer.valueOf(((a) (view)).d.keyAt(i)));
                }

                view = new ArrayList(((ArrayList) (obj2)).size());
                Object obj1 = aei.a().b;
                obj2 = ((ArrayList) (obj2)).iterator();
                do
                {
                    if (!((Iterator) (obj2)).hasNext())
                    {
                        break;
                    }
                    aeq aeq1 = ((aek) (obj1)).a(((Integer)((Iterator) (obj2)).next()).intValue());
                    if (aeq1 != null)
                    {
                        view.add(aeq1);
                    }
                } while (true);
                obj1 = new afw.a(this, view) {

                    final ArrayList a;
                    final _cls3 b;

                    public final void a(boolean flag)
                    {
                        if (flag)
                        {
                            (new ack(b.a, a, new ack.a(this) {

                                final _cls1 a;

                                public final void a(int i)
                                {
                                    String s1 = a.b.a.getString(0x7f060092, new Object[] {
                                        Integer.valueOf(i)
                                    });
                                    String s = s1;
                                    if (i < a.a.size())
                                    {
                                        s = (new StringBuilder()).append(a.b.a.getString(0x7f0600e2)).append(" ").append(s1).toString();
                                    }
                                    ahf.a(a.b.a, s);
                                    a.b.a.finish();
                                }

            
            {
                a = _pcls1;
                super();
            }
                            })).execute(new Void[] {
                                null
                            });
                        }
                    }

            
            {
                b = _pcls3;
                a = arraylist;
                super();
            }
                };
                if (a.a)
                {
                    long l = agv.a(view);
                    view = a.getString(0x7f0600b5, new Object[] {
                        Integer.valueOf(view.size()), Build.MODEL, agv.a(l)
                    });
                    afw.a(a, (String)a.getTitle(), view, ((afw.a) (obj1)));
                    return;
                } else
                {
                    ((afw.a) (obj1)).a(true);
                    return;
                }
            }

            
            {
                a = DeleteMultipleFiles.this;
                super();
            }
        });
        a(b.d.size());
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d000f, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        int i = menuitem.getItemId();
        if (i == 0x7f0c010c)
        {
            b.a();
            b.notifyDataSetChanged();
            a(b.d.size());
            return true;
        }
        if (i == 0x7f0c010d)
        {
            b.d.clear();
            b.notifyDataSetChanged();
            a(b.d.size());
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
