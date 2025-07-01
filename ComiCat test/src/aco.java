// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.view.Window;
import java.io.File;

public final class aco extends AsyncTask
{
    public static interface a
    {

        public abstract void a(afa afa1, String s, boolean flag);

        public abstract void e();
    }


    aeq a;
    ProgressDialog b;
    a c;
    File d;
    boolean e;
    boolean f;
    String g;
    Activity h;
    afa i;
    long j;

    public aco(Activity activity, aeq aeq1, boolean flag, a a1)
    {
        long l = 0L;
        Object obj = null;
        super();
        f = false;
        h = null;
        i = null;
        j = 0L;
        a = aeq1;
        c = a1;
        h = activity;
        g = a.c;
        e = flag;
        activity = obj;
        if (a.d())
        {
            activity = adg.a(a.f);
        }
        if (activity != null)
        {
            l = ((adg) (activity)).b;
        }
        j = (int)l;
    }

    private String a(int k, int l)
    {
        String s = "";
        if (h != null)
        {
            Object obj = h;
            if (g != null)
            {
                s = g;
            } else
            {
                s = "";
            }
            obj = ((Activity) (obj)).getString(k, new Object[] {
                s
            });
            s = ((String) (obj));
            if (l != 0)
            {
                s = (new StringBuilder()).append(((String) (obj))).append(" (").append(String.valueOf(l)).append("%)").toString();
            }
        }
        return s;
    }

    static String a(aco aco1, int k)
    {
        return aco1.a(0x7f060065, k);
    }

    private void a()
    {
        if (h != null)
        {
            if (b != null && b.isShowing())
            {
                b.dismiss();
            }
            b = ProgressDialog.show(h, "", a(0x7f060163, 0), true, true);
            b.getWindow().setGravity(17);
            if (a.d() && !a.g())
            {
                b.setCanceledOnTouchOutside(false);
                b.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

                    final aco a;

                    public final void onCancel(DialogInterface dialoginterface)
                    {
                        a.b = null;
                        aco.a(a);
                    }

            
            {
                a = aco.this;
                super();
            }
                });
            }
            ahf.a(b);
        }
    }

    static void a(aco aco1)
    {
        try
        {
            aco1.cancel(true);
            if (aco1.c != null)
            {
                aco1.c.e();
            }
            aco1.cancel(true);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (aco aco1)
        {
            aco1.printStackTrace();
        }
    }

    static void a(aco aco1, Object aobj[])
    {
        aco1.publishProgress(aobj);
    }

    private void a(afa afa1)
    {
        if (b != null && b.isShowing())
        {
            b.dismiss();
        }
        if (f)
        {
            agm.a(false);
        }
        if (c != null)
        {
            c.a(afa1, a.d, e);
            return;
        } else
        {
            i = afa1;
            return;
        }
    }

    public final void a(Activity activity, a a1)
    {
        h = activity;
        c = a1;
        if (i != null)
        {
            a(i);
            return;
        } else
        {
            a();
            return;
        }
    }

    protected final Object doInBackground(Object aobj[])
    {
        if (a.d() && !a.g())
        {
            publishProgress(new String[] {
                a(0x7f060065, 0)
            });
        }
        d = agp.a(a, false, new acy() {

            final aco a;
            private long b;

            public final void a(int k, int l)
            {
                long l1 = 0L;
                b = b + (long)k;
                if (a.j > 0L)
                {
                    l1 = (b * 100L) / a.j;
                }
                aco.a(a, new String[] {
                    aco.a(a, (int)l1)
                });
            }

            public final void a(acw acw, String s)
            {
            }

            public final void a(acy.a a1)
            {
            }

            public final boolean a()
            {
                return true;
            }

            
            {
                a = aco.this;
                super();
                b = 0L;
            }
        });
        publishProgress(new String[] {
            a(0x7f060163, 0)
        });
        if (d != null)
        {
            aobj = new afa(d, true);
        } else
        {
            aobj = new afa();
        }
        if (((afa) (aobj)).c() && a.d() && !ahd.c(a.a))
        {
            a.b = ((afa) (aobj)).d();
            agm.a(((afa) (aobj)), a.a);
            Object obj = aei.a().b;
            aek.f(a);
            obj = ael.b(a);
            if (obj != null)
            {
                agm.a(((aem) (obj)), 0, 0);
            }
            f = true;
        }
        return ((Object) (aobj));
    }

    protected final void onPostExecute(Object obj)
    {
        a((afa)obj);
    }

    protected final void onPreExecute()
    {
        a();
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (String[])aobj;
        if (b != null && b.isShowing())
        {
            b.setMessage(((CharSequence) (aobj[0])));
        }
    }
}
