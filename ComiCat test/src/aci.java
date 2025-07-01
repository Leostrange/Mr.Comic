// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.view.Window;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ThumbnailService;
import meanlabs.comicreader.cloud.ActiveDownloads;

public final class aci extends AsyncTask
    implements adj.a
{
    final class a
    {

        acs a;
        boolean b;
        int c;
        int d;
        int e;
        final aci f;

        a()
        {
            f = aci.this;
            super();
            c = 0;
            d = 0;
            e = 0;
        }
    }


    static boolean k = false;
    long a;
    int b;
    List c;
    List d;
    Activity e;
    ProgressDialog f;
    int g;
    int h;
    int i;
    boolean j;

    public aci(Activity activity, List list)
    {
        a = 0L;
        b = 0;
        g = 0;
        h = 100;
        i = 0;
        j = false;
        e = activity;
        c = list;
        d = new ArrayList(c.size());
        h = 100 / c.size();
        activity = aei.a().b;
        b = aek.e();
    }

    public static boolean a()
    {
        return k;
    }

    public final void a(String s, int l)
    {
        i = g * h + (h * l) / 100;
        acs acs1 = (acs)c.get(g);
        publishProgress(new String[] {
            String.valueOf(acs1.a()), acs1.c(), s
        });
    }

    protected final Object doInBackground(Object aobj[])
    {
        for (aobj = c.iterator(); ((Iterator) (aobj)).hasNext();)
        {
            acs acs1 = (acs)((Iterator) (aobj)).next();
            if (acs1 != null && acs1.f())
            {
                publishProgress(new String[] {
                    String.valueOf(acs1.a()), acs1.k()
                });
                acu acu1 = new acu(acs1);
                acu1.n = this;
                a a1 = new a();
                a1.a = acs1;
                boolean flag = acu1.a();
                j = flag;
                a1.b = flag;
                a1.c = acu1.b();
                a1.d = acu1.c();
                a1.e = acu1.d();
                d.add(a1);
                long l = a;
                a = (long)a1.c + l;
                publishProgress(new String[] {
                    String.valueOf(acs1.a())
                });
            }
            g = g + 1;
        }

        return null;
    }

    protected final void onPostExecute(Object obj)
    {
        Iterator iterator;
        if (f != null)
        {
            f.setProgress(100);
            f.dismiss();
        }
        if (a > 0L)
        {
            aei.a().d.a("last-synced-id", String.valueOf(b));
        }
        ael.a();
        agm.a(true);
        ThumbnailService.a().a(true);
        obj = new StringBuilder();
        iterator = d.iterator();
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        a a1;
        Object obj1;
        a1 = (a)iterator.next();
        obj1 = e;
        int l;
        if (a1.b)
        {
            l = 0x7f060237;
        } else
        {
            l = 0x7f0600f2;
        }
        obj1 = ((Activity) (obj1)).getString(l);
        ((StringBuilder) (obj)).append(e.getString(0x7f060086, new Object[] {
            a1.a.k(), obj1, Integer.valueOf(a1.c), Integer.valueOf(a1.e), Integer.valueOf(a1.d)
        }));
          goto _L3
_L5:
        k = false;
        return;
_L2:
        try
        {
            (new android.app.AlertDialog.Builder(e)).setMessage(((StringBuilder) (obj)).toString()).setCancelable(true).setNegativeButton(0x7f06007b, null).setTitle(0x7f06007c).setNeutralButton(0x7f060045, new android.content.DialogInterface.OnClickListener() {

                final aci a;

                public final void onClick(DialogInterface dialoginterface, int i1)
                {
                    Intent intent = new Intent(a.e, meanlabs/comicreader/cloud/ActiveDownloads);
                    a.e.startActivity(intent);
                    dialoginterface.dismiss();
                }

            
            {
                a = aci.this;
                super();
            }
            }).create().show();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected final void onPreExecute()
    {
        k = true;
        if (e != null)
        {
            f = new ProgressDialog(e);
            f.setTitle(0x7f06007c);
            f.setCancelable(false);
            f.setMessage(e.getString(0x7f06007c));
            f.getWindow().setGravity(17);
            f.setProgressStyle(1);
            f.setIndeterminate(false);
            f.setMax(100);
            f.setProgress(0);
            f.setCanceledOnTouchOutside(false);
            ahf.a(f);
            f.show();
        }
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (String[])aobj;
        aobj.length;
        JVM INSTR tableswitch 1 3: default 32
    //                   1 141
    //                   2 80
    //                   3 33;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L4:
        (new StringBuilder("Progress is: ")).append(i);
        if (f != null)
        {
            f.setProgress(i);
            f.setMessage(((CharSequence) (aobj[2])));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        act.b().e(Integer.parseInt(((String) (aobj[0]))));
        if (f != null)
        {
            f.setTitle((new StringBuilder()).append(e.getString(0x7f06007c)).append(": ").append(((String) (aobj[1]))).toString());
            return;
        }
        if (true) goto _L1; else goto _L2
_L2:
        act.b().b(Integer.parseInt(((String) (aobj[0]))), j);
        return;
    }

}
