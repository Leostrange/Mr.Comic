// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class acl extends AsyncTask
{
    public static interface a
    {

        public abstract void a(HashMap hashmap);
    }


    Activity a;
    a b;
    HashMap c;
    ProgressDialog d;

    public acl(Activity activity, a a1)
    {
        c = new HashMap();
        a = activity;
        b = a1;
        d = new ProgressDialog(activity);
        d.setProgressStyle(1);
        d.setIndeterminate(false);
        d.setMessage(activity.getString(0x7f0600fd));
        d.setMax(5);
        d.setProgress(0);
        d.setCancelable(false);
        d.setCanceledOnTouchOutside(false);
        ahf.a(d);
    }

    protected final Object doInBackground(Object aobj[])
    {
        HashMap hashmap = new HashMap();
        aeq aeq1;
        for (Iterator iterator = ael.d().iterator(); iterator.hasNext(); ((ArrayList) (aobj)).add(aeq1))
        {
            aeq1 = (aeq)iterator.next();
            Integer integer = Integer.valueOf((int)(new File(aeq1.d)).length());
            ArrayList arraylist = (ArrayList)hashmap.get(integer);
            aobj = arraylist;
            if (arraylist == null)
            {
                aobj = new ArrayList();
                hashmap.put(integer, ((Object) (aobj)));
            }
        }

        publishProgress(new Integer[] {
            Integer.valueOf(1)
        });
        HashMap hashmap1 = new HashMap();
        Iterator iterator1 = hashmap.entrySet().iterator();
        int i = 0;
        while (iterator1.hasNext()) 
        {
            aobj = (ArrayList)((java.util.Map.Entry)iterator1.next()).getValue();
            if (((ArrayList) (aobj)).size() > 1)
            {
                Iterator iterator2 = ((ArrayList) (aobj)).iterator();
                while (iterator2.hasNext()) 
                {
                    aeq aeq2 = (aeq)iterator2.next();
                    aobj = ago.a(aeq2.d);
                    Object obj;
                    ArrayList arraylist1;
                    if (aobj != null)
                    {
                        aobj = ago.a(((byte []) (aobj)));
                    } else
                    {
                        aobj = null;
                    }
                    arraylist1 = (ArrayList)hashmap1.get(((Object) (aobj)));
                    obj = arraylist1;
                    if (arraylist1 == null)
                    {
                        obj = new ArrayList();
                        hashmap1.put(((Object) (aobj)), obj);
                    }
                    ((ArrayList) (obj)).add(aeq2);
                }
            }
            publishProgress(new Integer[] {
                Integer.valueOf(Math.round((3F * (float)i) / (float)hashmap.size()) + 1)
            });
            i++;
        }
        publishProgress(new Integer[] {
            Integer.valueOf(4)
        });
        aobj = hashmap1.entrySet().iterator();
        do
        {
            if (!((Iterator) (aobj)).hasNext())
            {
                break;
            }
            obj = (java.util.Map.Entry)((Iterator) (aobj)).next();
            if (((ArrayList)((java.util.Map.Entry) (obj)).getValue()).size() > 1)
            {
                c.put(((java.util.Map.Entry) (obj)).getKey(), ((java.util.Map.Entry) (obj)).getValue());
            }
        } while (true);
        publishProgress(new Integer[] {
            Integer.valueOf(5)
        });
        return null;
    }

    protected final void onPostExecute(Object obj)
    {
        try
        {
            d.dismiss();
            b.a(c);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
    }

    protected final void onPreExecute()
    {
        d.show();
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (Integer[])aobj;
        d.setProgress(((Integer) (aobj[0])).intValue());
    }
}
