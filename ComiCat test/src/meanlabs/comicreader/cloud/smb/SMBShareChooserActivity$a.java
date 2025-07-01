// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.smb;

import act;
import aef;
import aei;
import aev;
import aew;
import agt;
import ahf;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;

// Referenced classes of package meanlabs.comicreader.cloud.smb:
//            SMBShareChooserActivity

public final class b extends AsyncTask
{

    Context a;
    ProgressDialog b;
    final SMBShareChooserActivity c;

    protected final Object doInBackground(Object aobj[])
    {
        Integer integer;
label0:
        {
            String as[] = (String[])aobj;
            aobj = new aev();
            aobj.c = as[0];
            aobj.d = as[0];
            aobj.b = "smb";
            aobj.e = as[1];
            aobj.f = as[2];
            aobj.g = as[3];
            integer = Integer.valueOf(aef.a(((aev) (aobj))));
            if (integer.intValue() == 0)
            {
                if (c.b)
                {
                    break label0;
                }
                if (aei.a().g.a(((aev) (aobj))))
                {
                    c.a = ((aev) (aobj));
                }
            }
            return integer;
        }
        c.a.e = ((aev) (aobj)).e;
        c.a.f = ((aev) (aobj)).f;
        c.a.g = ((aev) (aobj)).g;
        aobj = aei.a().g;
        aew.c(c.a);
        return integer;
    }

    protected final void onPostExecute(Object obj)
    {
        int j;
        int k;
        k = 0x7f060217;
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
        }
        j = k;
        ((Integer) (obj)).intValue();
        JVM INSTR tableswitch 1 3: default 136
    //                   1 169
    //                   2 139
    //                   3 163;
           goto _L1 _L2 _L3 _L4
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        j = k;
_L6:
        obj = Toast.makeText(a, j, 1);
        ((Toast) (obj)).setGravity(48, 0, 100);
        ((Toast) (obj)).show();
        return;
_L4:
        j = 0x7f060215;
        continue; /* Loop/switch isn't completed */
_L2:
        j = 0x7f06006d;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public (SMBShareChooserActivity smbsharechooseractivity, Context context)
    {
        c = smbsharechooseractivity;
        super();
        a = context;
        b = new ProgressDialog(a);
        b.setProgressStyle(1);
        b.setIndeterminate(true);
        b.setMessage(a.getString(0x7f06025b));
        b.setProgress(0);
        b.setCancelable(false);
        b.setCanceledOnTouchOutside(false);
        ahf.a(b);
        b.show();
    }
}
