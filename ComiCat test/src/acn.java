// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.view.Window;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class acn extends AsyncTask
{
    public static interface a
    {

        public abstract void a(boolean flag);
    }


    ProgressDialog a;
    a b;
    File c;
    File d;
    Collection e;
    ArrayList f;
    int g;
    Activity h;

    public acn(Activity activity, String s, String s1, a a1)
    {
        b = a1;
        h = activity;
        c = new File(s);
        d = new File(s1);
        g = 0;
        e = new ArrayList();
        f = new ArrayList();
        activity = act.b().c.iterator();
        do
        {
            if (!activity.hasNext())
            {
                break;
            }
            s = new File(((acs)activity.next()).h());
            if (s.exists() && s.isDirectory())
            {
                if (!f.contains(s))
                {
                    f.add(s);
                }
                e.addAll(ahk.a(s));
            }
        } while (true);
    }

    protected final Object doInBackground(Object aobj[])
    {
        aobj = e.iterator();
        do
        {
            if (!((Iterator) (aobj)).hasNext())
            {
                break;
            }
            Object obj1 = (File)((Iterator) (aobj)).next();
            g = g + 1;
            publishProgress(new String[] {
                ((File) (obj1)).getName()
            });
            Object obj = new File(((File) (obj1)).getAbsolutePath().replace(c.getAbsolutePath(), d.getAbsolutePath()));
            if (agp.a(((File) (obj1)), ((File) (obj))))
            {
                obj1 = aei.a().b.b(((File) (obj1)).getAbsolutePath());
                if (obj1 != null)
                {
                    obj1.d = ((File) (obj)).getAbsolutePath();
                    obj = aei.a().b;
                    aek.d(((aeq) (obj1)));
                }
            }
        } while (true);
        aobj = f.iterator();
        do
        {
            if (!((Iterator) (aobj)).hasNext())
            {
                break;
            }
            File file = (File)((Iterator) (aobj)).next();
            if (file.exists() && ahk.a(file).isEmpty())
            {
                ahk.b(file);
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
            b.a(((Boolean) (obj)).booleanValue());
        }
    }

    protected final void onPreExecute()
    {
        if (h != null)
        {
            String s = h.getString(0x7f0600c0);
            a = new ProgressDialog(h);
            a.setCancelable(false);
            a.setMessage(s);
            a.getWindow().setGravity(17);
            a.setProgressStyle(1);
            a.setIndeterminate(false);
            a.setMax(e.size());
            a.setProgress(0);
            a.setCanceledOnTouchOutside(false);
            ahf.a(a);
            a.show();
        }
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (String[])aobj;
        a.setMessage(((CharSequence) (aobj[0])));
        a.setProgress(g);
    }
}
