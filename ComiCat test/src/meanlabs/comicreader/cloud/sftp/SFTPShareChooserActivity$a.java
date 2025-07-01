// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.sftp;

import act;
import aec;
import aei;
import aev;
import aew;
import agt;
import ahf;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;
import qh;

// Referenced classes of package meanlabs.comicreader.cloud.sftp:
//            SFTPShareChooserActivity

public final class b extends AsyncTask
{

    Context a;
    ProgressDialog b;
    final SFTPShareChooserActivity c;

    protected final Object doInBackground(Object aobj[])
    {
        boolean flag = false;
        String as[] = (String[])aobj;
        aobj = new aev();
        aobj.c = as[0];
        aobj.d = as[0];
        aobj.b = "sftp";
        aobj.e = as[1];
        aobj.f = as[2];
        aobj.g = as[3];
        qh qh1 = aec.a(((aev) (aobj)).d, ((aev) (aobj)).e, ((aev) (aobj)).f, ((aev) (aobj)).g);
        int i;
        if (qh1 != null && qh1.g())
        {
            if (!c.b)
            {
                i = ((flag) ? 1 : 0);
                if (aei.a().g.a(((aev) (aobj))))
                {
                    c.a = ((aev) (aobj));
                    i = ((flag) ? 1 : 0);
                }
            } else
            {
                c.a.e = ((aev) (aobj)).e;
                c.a.f = ((aev) (aobj)).f;
                c.a.g = ((aev) (aobj)).g;
                aobj = aei.a().g;
                aew.c(c.a);
                i = ((flag) ? 1 : 0);
            }
        } else
        {
            i = -1;
        }
        return Integer.valueOf(i);
    }

    protected final void onPostExecute(Object obj)
    {
        boolean flag = true;
        obj = (Integer)obj;
        try
        {
            b.dismiss();
        }
        catch (Exception exception)
        {
            agt.a(exception);
        }
        if (((Integer) (obj)).intValue() == 0)
        {
            if (c.a != null)
            {
                obj = act.b();
                int i = c.a.a;
                if (c.b)
                {
                    flag = false;
                }
                ((act) (obj)).a(i, flag);
            } else
            {
                act.b().a(-1, false);
            }
            c.finish();
            return;
        } else
        {
            obj = Toast.makeText(a, 0x7f06027c, 1);
            ((Toast) (obj)).setGravity(48, 0, 100);
            ((Toast) (obj)).show();
            return;
        }
    }

    public (SFTPShareChooserActivity sftpsharechooseractivity, Context context)
    {
        c = sftpsharechooseractivity;
        super();
        a = context;
        b = new ProgressDialog(a);
        b.setProgressStyle(1);
        b.setIndeterminate(true);
        b.setMessage(a.getString(0x7f06028c));
        b.setProgress(0);
        b.setCancelable(false);
        b.setCanceledOnTouchOutside(false);
        ahf.a(b);
        b.show();
    }
}
