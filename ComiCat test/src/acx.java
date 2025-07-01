// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class acx extends BaseAdapter
{
    public final class a
    {

        public acv a;
        public View b;
        final acx c;

        public a(acv acv1)
        {
            c = acx.this;
            super();
            a = acv1;
            b = null;
        }
    }

    final class b extends acv
    {

        final acx k;

        public final void i()
        {
        }

        public b(String s)
        {
            k = acx.this;
            super(null);
            c = s;
        }
    }

    public final class c
    {

        public TextView a;
        public RelativeLayout b;
        public ImageView c;
        public TextView d;
        public TextView e;
        public TextView f;
        public TextView g;
        public ProgressBar h;
        final acx i;

        public c(View view)
        {
            i = acx.this;
            super();
            a = (TextView)view.findViewById(0x7f0c00a1);
            b = (RelativeLayout)view.findViewById(0x7f0c00a2);
            c = (ImageView)view.findViewById(0x7f0c00a3);
            d = (TextView)view.findViewById(0x7f0c0044);
            e = (TextView)view.findViewById(0x7f0c00a4);
            f = (TextView)view.findViewById(0x7f0c00a5);
            g = (TextView)view.findViewById(0x7f0c00a7);
            h = (ProgressBar)view.findViewById(0x7f0c00a6);
        }
    }


    protected Activity a;
    protected List b;

    public acx(Activity activity, List list)
    {
        a = activity;
        b = new ArrayList(list.size());
        a(list);
    }

    private void a(c c1, int i, int j)
    {
        TextView textview = c1.e;
        Activity activity = a;
        String s = agv.a(j);
        if (i <= 0)
        {
            c1 = a.getString(0x7f06024c);
        } else
        {
            c1 = agv.a(i);
        }
        textview.setText(activity.getString(0x7f0600ce, new Object[] {
            s, c1
        }));
    }

    private void a(List list, String s)
    {
        b b1 = new b(s);
        b1.a = null;
        b1.c = s;
        list.add(b1);
    }

    private String b(int i)
    {
        int j;
        int k;
        k = 0x7f060262;
        j = k;
        static final class _cls4
        {

            static final int a[];

            static 
            {
                a = new int[acv.a.a().length];
                try
                {
                    a[acv.a.f - 1] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[acv.a.e - 1] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[acv.a.d - 1] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[acv.a.g - 1] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[acv.a.b - 1] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[acv.a.c - 1] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[acv.a.h - 1] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls4.a[i - 1];
        JVM INSTR tableswitch 1 7: default 56
    //                   1 58
    //                   2 67
    //                   3 73
    //                   4 79
    //                   5 85
    //                   6 91
    //                   7 97;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        j = k;
_L10:
        return a.getString(j);
_L3:
        j = 0x7f0600df;
        continue; /* Loop/switch isn't completed */
_L4:
        j = 0x7f060175;
        continue; /* Loop/switch isn't completed */
_L5:
        j = 0x7f0600d1;
        continue; /* Loop/switch isn't completed */
_L6:
        j = 0x7f06006b;
        continue; /* Loop/switch isn't completed */
_L7:
        j = 0x7f060096;
        continue; /* Loop/switch isn't completed */
_L8:
        j = 0x7f0601c7;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private List b(List list)
    {
        ArrayList arraylist = new ArrayList();
        list = list.iterator();
        int j;
        for (int i = 0; list.hasNext(); i = j)
        {
            acv acv1 = (acv)list.next();
            j = i;
            if (acv1.c.charAt(0) != i)
            {
                char c1 = acv1.c.charAt(0);
                a(arraylist, String.valueOf(c1).toUpperCase());
                j = c1;
            }
            arraylist.add(acv1);
        }

        return arraylist;
    }

    private List c(List list)
    {
        ArrayList arraylist = new ArrayList();
        int i = acv.a.a;
        for (list = list.iterator(); list.hasNext();)
        {
            acv acv1 = (acv)list.next();
            int j = i;
            if (acv1.e != i)
            {
                j = acv1.e;
                a(arraylist, b(j));
            }
            arraylist.add(acv1);
            i = j;
        }

        return arraylist;
    }

    private List d(List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        int i = -1;
        while (iterator.hasNext()) 
        {
            acv acv1 = (acv)iterator.next();
            int j = i;
            if (acv1.a.c != i)
            {
                j = acv1.a.c;
                list = act.b().a(j);
                if (list != null)
                {
                    list = list.k();
                } else
                {
                    list = "";
                }
                a(arraylist, list);
            }
            arraylist.add(acv1);
            i = j;
        }
        return arraylist;
    }

    public final a a(int i)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1.a.a != null && a1.a.a.a == i)
            {
                return a1;
            }
        }

        return null;
    }

    public final void a(c c1, int i, int j, int k, int l)
    {
        if (j > 0)
        {
            if (l == acv.a.c)
            {
                i = j;
            }
            a(c1, j, i);
            int i1 = (int)(((long)i * 100L) / (long)j);
            c1.h.setProgress(i1);
            i = j - i;
            String s = "";
            if (i > 0)
            {
                Object obj = (new StringBuilder()).append(a.getString(0x7f0601d8)).append(": ").append(agv.a(i)).toString();
                s = ((String) (obj));
                if (l == acv.a.g)
                {
                    s = ((String) (obj));
                    if (k > 0)
                    {
                        c1.f.setText(a.getString(0x7f0600cf, new Object[] {
                            agv.a(k)
                        }));
                        obj = (new StringBuilder()).append(((String) (obj))).append(", ").append(a.getString(0x7f060240)).append(": ");
                        i /= k;
                        s = " Sec";
                        double d2 = i;
                        double d1 = d2;
                        if (d2 > 60D)
                        {
                            d1 = Math.ceil(d2 / 60D);
                            s = " Min";
                        }
                        d2 = d1;
                        if (d1 > 60D)
                        {
                            d2 = Math.ceil(d1 / 60D);
                            s = " Hr";
                        }
                        s = ((StringBuilder) (obj)).append((new StringBuilder()).append(String.valueOf((int)d2)).append(s).toString()).toString();
                    }
                }
            }
            c1.g.setText(s);
            return;
        }
        ProgressBar progressbar = c1.h;
        if (l == acv.a.c)
        {
            i = 100;
        } else
        {
            i = 0;
        }
        progressbar.setProgress(i);
        c1.g.setText("");
    }

    public final void a(c c1, acv acv1)
    {
        TextView textview = c1.f;
        String s = b(acv1.e);
        c1 = s;
        if (acv1.e == acv.a.e)
        {
            c1 = s;
            if (acv1.f != null)
            {
                c1 = s;
                if (acv1.f.length() > 0)
                {
                    c1 = (new StringBuilder()).append(s).append(": ").append(acv1.f).toString();
                }
            }
        }
        textview.setText(c1);
    }

    public final void a(List list)
    {
        Object obj;
        b.clear();
        list = new ArrayList(list);
        obj = aei.a().d.b("sort-downloads-by");
        if ("prefSortByDownloadStatus".equals(obj))
        {
            Collections.sort(list, new Comparator() {

                final acx a;

                public final int compare(Object obj1, Object obj2)
                {
                    int j = 1000;
                    byte byte0 = 100;
                    obj1 = (acv)obj1;
                    obj2 = (acv)obj2;
                    char c1;
                    int i;
                    if (((acv) (obj1)).e == acv.a.g)
                    {
                        c1 = '\u03E8';
                    } else
                    {
                        c1 = '\0';
                    }
                    i = c1;
                    if (((acv) (obj1)).e != acv.a.c)
                    {
                        int k;
                        if (((acv) (obj1)).a.d())
                        {
                            i = 100;
                        } else
                        {
                            i = 0;
                        }
                        i = c1 + i;
                    }
                    k = ((acv) (obj1)).e;
                    if (((acv) (obj2)).e == acv.a.g)
                    {
                        c1 = j;
                    } else
                    {
                        c1 = '\0';
                    }
                    j = c1;
                    if (((acv) (obj2)).e != acv.a.c)
                    {
                        if (((acv) (obj2)).a.d())
                        {
                            j = byte0;
                        } else
                        {
                            j = 0;
                        }
                        j = c1 + j;
                    }
                    return (j + (((acv) (obj2)).e - 1)) - (i + (k - 1));
                }

            
            {
                a = acx.this;
                super();
            }
            });
            break MISSING_BLOCK_LABEL_52;
        } else
        {
            if ("prefSortAlphabetically".equals(obj))
            {
                Collections.sort(list, new Comparator() {

                    final acx a;

                    public final int compare(Object obj1, Object obj2)
                    {
                        obj1 = (acv)obj1;
                        obj2 = (acv)obj2;
                        return ((acv) (obj1)).c.compareToIgnoreCase(((acv) (obj2)).c);
                    }

            
            {
                a = acx.this;
                super();
            }
                });
            } else
            if ("prefSortByService".equals(obj))
            {
                Collections.sort(list, new Comparator() {

                    final acx a;

                    public final volatile int compare(Object obj1, Object obj2)
                    {
                        obj1 = (acv)obj1;
                        obj2 = (acv)obj2;
                        return ((acv) (obj1)).a.c - ((acv) (obj2)).a.c;
                    }

            
            {
                a = acx.this;
                super();
            }
                });
            }
            continue;
        }
        do
        {
            obj = aei.a().d.b("sort-downloads-by");
            if ("prefSortByDownloadStatus".equals(obj))
            {
                list = c(list);
            } else
            if ("prefSortAlphabetically".equals(obj))
            {
                list = b(list);
            } else
            {
                list = d(list);
            }
            for (list = list.iterator(); list.hasNext(); b.add(new a(((acv) (obj)))))
            {
                obj = (acv)list.next();
            }

            notifyDataSetChanged();
            return;
        } while (true);
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
        if (i < b.size())
        {
            return ((a)b.get(i)).a;
        } else
        {
            return null;
        }
    }

    public final long getItemId(int i)
    {
        acv acv1 = (acv)getItem(i);
        if (acv1 != null && acv1.a != null)
        {
            return (long)((a)b.get(i)).a.a.a;
        } else
        {
            return -1L;
        }
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        acv acv1 = ((a)b.get(i)).a;
        viewgroup = view;
        if (view == null)
        {
            viewgroup = a.getLayoutInflater().inflate(0x7f030032, null);
            viewgroup.setTag(new c(viewgroup));
        }
        if (viewgroup != null)
        {
            Object obj = (c)viewgroup.getTag();
            if (acv1.a != null)
            {
                ((c) (obj)).a.setVisibility(8);
                ((c) (obj)).b.setVisibility(0);
                ((c) (obj)).d.setText(acv1.c.toUpperCase());
                ImageView imageview;
                if (acv1.a.h != 0)
                {
                    view = ahd.a(acv1.a.h, aft.a.b, false);
                } else
                {
                    view = null;
                }
                imageview = ((c) (obj)).c;
                if (view == null)
                {
                    view = ahd.b();
                }
                imageview.setImageBitmap(view);
                a(((c) (obj)), acv1.a.e, acv1.d);
                a(((c) (obj)), acv1);
                a(((c) (obj)), acv1.d, acv1.a.e, -1, acv1.e);
            } else
            {
                ((c) (obj)).a.setVisibility(0);
                ((c) (obj)).b.setVisibility(8);
                ((c) (obj)).a.setText(acv1.c);
            }
            view = b.iterator();
            do
            {
                if (!view.hasNext())
                {
                    break;
                }
                obj = (a)view.next();
                if (((a) (obj)).b != viewgroup || ((a) (obj)).a.a == acv1.a)
                {
                    continue;
                }
                obj.b = null;
                break;
            } while (true);
            ((a)b.get(i)).b = viewgroup;
        }
        return viewgroup;
    }

    public final boolean isEnabled(int i)
    {
        boolean flag1 = false;
        acv acv1 = (acv)getItem(i);
        boolean flag = flag1;
        if (acv1 != null)
        {
            flag = flag1;
            if (acv1.a != null)
            {
                if (acv1.e != acv.a.h)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            }
        }
        return flag;
    }
}
