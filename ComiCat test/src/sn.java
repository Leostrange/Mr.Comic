// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.Iterator;

public class sn extends AsyncTask
{
    public static interface a
    {

        public abstract void a(Object obj);

        public abstract void a(tf tf1);
    }

    final class b
        implements Runnable
    {

        static final boolean a;
        final sn b;
        private final Object c;

        public final void run()
        {
            for (Iterator iterator = sn.a(b).iterator(); iterator.hasNext(); ((a)iterator.next()).a(c)) { }
        }

        static 
        {
            boolean flag;
            if (!sn.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        public b(Object obj)
        {
            b = sn.this;
            super();
            if (!a && obj == null)
            {
                throw new AssertionError();
            } else
            {
                c = obj;
                return;
            }
        }
    }

    final class c
        implements Runnable
    {

        static final boolean a;
        final sn b;
        private final tf c;

        public final void run()
        {
            for (Iterator iterator = sn.a(b).iterator(); iterator.hasNext(); ((a)iterator.next()).a(c)) { }
        }

        static 
        {
            boolean flag;
            if (!sn.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        public c(tf tf1)
        {
            b = sn.this;
            super();
            c = tf1;
        }
    }


    static final boolean b;
    public final ArrayList a = new ArrayList();
    private final ArrayList c = new ArrayList();
    private final sm d;

    private sn(sm sm1)
    {
        if (!b && sm1 == null)
        {
            throw new AssertionError();
        } else
        {
            d = sm1;
            return;
        }
    }

    private transient Runnable a()
    {
        Object obj;
        try
        {
            obj = d.a();
        }
        catch (tf tf1)
        {
            return new c(tf1);
        }
        return new b(obj);
    }

    static ArrayList a(sn sn1)
    {
        return sn1.a;
    }

    public static sn a(sm sm1)
    {
        return new sn(sm1);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        obj = (Runnable)obj;
        super.onPostExecute(obj);
        ((Runnable) (obj)).run();
    }

    protected void onProgressUpdate(Object aobj[])
    {
        for (aobj = c.iterator(); ((Iterator) (aobj)).hasNext(); ((Iterator) (aobj)).next()) { }
    }

    static 
    {
        boolean flag;
        if (!sn.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
