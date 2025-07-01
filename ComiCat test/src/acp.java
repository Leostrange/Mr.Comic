// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public final class acp extends AsyncTask
{

    int a;
    List b;
    List c;
    private Activity d;
    private ProgressDialog e;

    public acp(Activity activity, List list, List list1)
    {
        a = 0;
        d = activity;
        b = list;
        c = list1;
        e = new ProgressDialog(d);
        e.setProgressStyle(1);
        e.setMessage(d.getText(0x7f0601c7));
        e.setTitle(0x7f0601d6);
        e.setProgress(0);
        e.setMax(b.size() + c.size());
        e.setCancelable(false);
        e.setCanceledOnTouchOutside(false);
        ahf.a(e);
        e.show();
    }

    private transient Integer a()
    {
        Iterator iterator = b.iterator();
        while (iterator.hasNext()) 
        {
            aeq aeq1 = (aeq)iterator.next();
            boolean flag;
            if (!aeq1.d() || aeq1.g())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag && !aeq1.h.c(64))
            {
                try
                {
                    afa afa1 = new afa(new File(aeq1.d), false);
                    if (afa1.b())
                    {
                        agm.a(afa1, aeq1.a);
                        afa1.a();
                    }
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
            }
            publishProgress(new String[] {
                aeq1.c
            });
            a = a + 1;
        }
        for (Iterator iterator1 = c.iterator(); iterator1.hasNext();)
        {
            aem aem1 = (aem)iterator1.next();
            ahd.a(aem1);
            publishProgress(new String[] {
                aem1.b
            });
            a = a + 1;
        }

        return null;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        try
        {
            e.dismiss();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        agm.a(false);
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (String[])aobj;
        e.setProgress(a);
        e.setMessage(d.getString(0x7f0601c9, new Object[] {
            aobj[0]
        }));
    }
}
