// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.view.Window;
import java.util.Iterator;
import java.util.List;

public final class ack extends AsyncTask
{
    public static interface a
    {

        public abstract void a(int i);
    }


    ProgressDialog a;
    a b;
    List c;
    int d;
    int e;
    Activity f;

    public ack(Activity activity, List list, a a1)
    {
        e = 0;
        b = a1;
        f = activity;
        c = list;
    }

    protected final Object doInBackground(Object aobj[])
    {
        aobj = c.iterator();
        do
        {
            if (!((Iterator) (aobj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (aobj)).next();
            d = d + 1;
            publishProgress(new String[] {
                aeq1.c
            });
            if (agm.a(aeq1, true))
            {
                e = e + 1;
            }
        } while (true);
        return Boolean.valueOf(true);
    }

    protected final void onPostExecute(Object obj)
    {
        obj = (Boolean)obj;
        a.dismiss();
        ael.a();
        agm.a(true);
        if (b != null)
        {
            a a1 = b;
            ((Boolean) (obj)).booleanValue();
            a1.a(e);
        }
    }

    protected final void onPreExecute()
    {
        if (f != null)
        {
            String s = f.getString(0x7f0600c0);
            a = new ProgressDialog(f);
            a.setCancelable(false);
            a.setMessage(s);
            a.getWindow().setGravity(17);
            a.setProgressStyle(1);
            a.setIndeterminate(false);
            a.setMax(c.size());
            a.setProgress(0);
            a.setCanceledOnTouchOutside(false);
            ahf.a(a);
        }
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (String[])aobj;
        a.setMessage(((CharSequence) (aobj[0])));
        a.setProgress(d);
    }
}
