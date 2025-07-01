// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;

class ts extends AsyncTask
{

    static final boolean b;
    final sq a = new sq();
    private sx c;
    private tm d;
    private final tr e;

    public ts(tr tr1)
    {
        e = tr1;
    }

    private transient Void a()
    {
        try
        {
            d = e.a();
        }
        catch (sx sx1)
        {
            c = sx1;
        }
        return null;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        super.onPostExecute((Void)obj);
        if (d != null)
        {
            a.a(d);
            return;
        }
        if (c != null)
        {
            a.a(c);
            return;
        } else
        {
            obj = new sx("An error occured on the client during the operation.");
            a.a(((sx) (obj)));
            return;
        }
    }

    static 
    {
        boolean flag;
        if (!ts.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
