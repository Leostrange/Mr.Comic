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
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import meanlabs.comicreader.ReaderActivity;

public class SMBShareChooserActivity extends ReaderActivity
{
    public final class a extends AsyncTask
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
        //                       1 169
        //                       2 139
        //                       3 163;
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

        public a(Context context)
        {
            c = SMBShareChooserActivity.this;
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


    aev a;
    boolean b;

    public SMBShareChooserActivity()
    {
    }

    static void a(SMBShareChooserActivity smbsharechooseractivity, String s, String s1, String s2, String s3)
    {
        if (s == null || s.length() == 0)
        {
            ahf.a(smbsharechooseractivity, 0x7f06021c);
            return;
        } else
        {
            (smbsharechooseractivity. new a(smbsharechooseractivity)).execute(new String[] {
                s, s1, s2, s3
            });
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001c);
        int i = getIntent().getIntExtra("serviecid", -1);
        if (i != -1)
        {
            b = true;
            a = aei.a().g.a(i);
            if (a != null)
            {
                bundle = a.d.replace("smb://", "");
                findViewById(0x7f0c0076).setEnabled(false);
                ahf.a(this, 0x7f0c0076, bundle);
                ahf.a(this, 0x7f0c0077, a.e);
                ahf.a(this, 0x7f0c0070, a.f);
                ahf.a(this, 0x7f0c0072, a.g);
            }
        }
        ((Button)findViewById(0x7f0c0075)).setOnClickListener(new android.view.View.OnClickListener() {

            final SMBShareChooserActivity a;

            public final void onClick(View view)
            {
                Object obj = ahf.a(a, 0x7f0c0076);
                view = ((View) (obj));
                if (!((String) (obj)).startsWith("smb://"))
                {
                    view = (new StringBuilder("smb://")).append(((String) (obj))).toString();
                }
                obj = view;
                if (!view.endsWith("/"))
                {
                    obj = (new StringBuilder()).append(view).append("/").toString();
                }
                view = ahf.a(a, 0x7f0c0077);
                String s = ahf.a(a, 0x7f0c0070);
                String s1 = ahf.a(a, 0x7f0c0072);
                SMBShareChooserActivity.a(a, ((String) (obj)), view, s, s1);
            }

            
            {
                a = SMBShareChooserActivity.this;
                super();
            }
        });
        ((Button)findViewById(0x7f0c0074)).setOnClickListener(new android.view.View.OnClickListener() {

            final SMBShareChooserActivity a;

            public final void onClick(View view)
            {
                a.finish();
            }

            
            {
                a = SMBShareChooserActivity.this;
                super();
            }
        });
    }
}
