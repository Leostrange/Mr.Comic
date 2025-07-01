// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.util.SparseIntArray;
import android.view.Window;
import java.util.Iterator;
import java.util.List;

public final class acm extends AsyncTask
{
    public static interface a
    {

        public abstract void a();
    }


    ProgressDialog a;
    a b;
    SparseIntArray c;
    List d;
    int e;
    Activity f;

    public acm(Activity activity, SparseIntArray sparseintarray, a a1)
    {
        b = a1;
        f = activity;
        c = sparseintarray;
        d = aei.a().b.f();
    }

    protected final Object doInBackground(Object aobj[])
    {
        aobj = d.iterator();
        do
        {
            if (!((Iterator) (aobj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (aobj)).next();
            e = e + 1;
            publishProgress(new String[] {
                aeq1.c
            });
            if (c.get(aeq1.a) != 0)
            {
                if (!aeq1.p())
                {
                    aeq1.b(true);
                }
            } else
            if (aeq1.p())
            {
                aeq1.b(false);
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
            a1.a();
        }
    }

    protected final void onPreExecute()
    {
        if (f != null)
        {
            String s = f.getString(0x7f0601c7);
            a = new ProgressDialog(f);
            a.setCancelable(false);
            a.setMessage(s);
            a.getWindow().setGravity(17);
            a.setProgressStyle(1);
            a.setIndeterminate(false);
            a.setMax(d.size());
            a.setProgress(0);
            a.setCanceledOnTouchOutside(false);
            ahf.a(a);
        }
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (String[])aobj;
        a.setMessage(((CharSequence) (aobj[0])));
        a.setProgress(e);
    }
}
