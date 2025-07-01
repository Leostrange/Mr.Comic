// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import java.io.File;

public final class adb extends AsyncTask
{

    acy a;
    acv b;
    long c;
    long d;
    long e;
    String f;
    acw g;
    acy.a h;

    public adb(acv acv1, acy acy1)
    {
        f = null;
        g = acw.b;
        h = acy.a.a;
        a = acy1;
        b = acv1;
    }

    static void a(adb adb1, Object aobj[])
    {
        adb1.publishProgress(aobj);
    }

    protected final Object doInBackground(Object aobj[])
    {
        c = b.h.length();
        if (c > (long)b.a.e)
        {
            agz.a(b.h);
            c = 0L;
        }
        if (c != (long)b.a.e) goto _L2; else goto _L1
_L1:
        aobj = acy.a.b;
_L6:
        h = ((acy.a) (aobj));
_L4:
        return h;
_L2:
        boolean flag;
        e = System.currentTimeMillis();
        flag = b.b.a(b.a.b, b.h.getAbsolutePath(), new acy() {

            final adb a;

            public final void a(int i, int j)
            {
                long l = 0L;
                adb adb1 = a;
                adb1.d = adb1.d + (long)i;
                long l1 = (long)Math.ceil((System.currentTimeMillis() - a.e) / 1000L);
                if (l1 != 0L)
                {
                    l = a.d / l1;
                }
                i = (int)l;
                l = a.c;
                l1 = a.d;
                adb.a(a, new Integer[] {
                    Integer.valueOf((int)(l + l1)), Integer.valueOf(i)
                });
            }

            public final void a(acw acw1, String s)
            {
                adb adb1 = a;
                if (s == null)
                {
                    s = "Network Error.";
                }
                adb1.f = s;
                adb1.g = acw1;
                adb1.h = acy.a.c;
                (new StringBuilder("Server Error code: ")).append(acw1.a).append(", message: ").append(adb1.f);
            }

            public final void a(acy.a a1)
            {
                a.h = a1;
            }

            public final boolean a()
            {
                return a.a.a();
            }

            
            {
                a = adb.this;
                super();
            }
        });
        if (h != acy.a.a) goto _L4; else goto _L3
_L3:
        if (flag)
        {
            aobj = acy.a.b;
        } else
        {
            aobj = acy.a.c;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected final void onPostExecute(Object obj)
    {
        obj = (acy.a)obj;
        if (obj == acy.a.c)
        {
            a.a(g, f);
        }
        a.a(((acy.a) (obj)));
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (Integer[])aobj;
        a.a(((Integer) (aobj[0])).intValue(), ((Integer) (aobj[1])).intValue());
    }
}
