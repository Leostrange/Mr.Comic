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
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import meanlabs.comicreader.ReaderActivity;
import qh;

public class SFTPShareChooserActivity extends ReaderActivity
{
    public final class a extends AsyncTask
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

        public a(Context context)
        {
            c = SFTPShareChooserActivity.this;
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


    aev a;
    boolean b;

    public SFTPShareChooserActivity()
    {
    }

    static void a(SFTPShareChooserActivity sftpsharechooseractivity, String s, String s1, String s2, String s3)
    {
        if (s == null || s.length() == 0)
        {
            ahf.a(sftpsharechooseractivity, 0x7f06021c);
            return;
        } else
        {
            (sftpsharechooseractivity. new a(sftpsharechooseractivity)).execute(new String[] {
                s, s1, s2, s3
            });
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001b);
        int i = getIntent().getIntExtra("serviecid", -1);
        if (i != -1)
        {
            b = true;
            a = aei.a().g.a(i);
            if (a != null)
            {
                findViewById(0x7f0c006c).setEnabled(false);
                ahf.a(this, 0x7f0c006c, a.d);
                ahf.a(this, 0x7f0c006e, a.e);
                ahf.a(this, 0x7f0c0070, a.f);
                ahf.a(this, 0x7f0c0072, a.g);
            }
        }
        ((Button)findViewById(0x7f0c0075)).setOnClickListener(new android.view.View.OnClickListener() {

            final SFTPShareChooserActivity a;

            public final void onClick(View view)
            {
                view = ahf.a(a, 0x7f0c006c);
                String s = ahf.a(a, 0x7f0c006e);
                String s1 = ahf.a(a, 0x7f0c0070);
                String s2 = ahf.a(a, 0x7f0c0072);
                SFTPShareChooserActivity.a(a, view, s, s1, s2);
            }

            
            {
                a = SFTPShareChooserActivity.this;
                super();
            }
        });
        ((Button)findViewById(0x7f0c0074)).setOnClickListener(new android.view.View.OnClickListener() {

            final SFTPShareChooserActivity a;

            public final void onClick(View view)
            {
                a.finish();
            }

            
            {
                a = SFTPShareChooserActivity.this;
                super();
            }
        });
    }
}
