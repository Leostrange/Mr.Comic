// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;

public final class acq extends AsyncTask
{

    private Activity a;
    private ProgressDialog b;

    public acq(Activity activity)
    {
        a = activity;
        b = new ProgressDialog(a);
        b.setProgressStyle(1);
        b.setMessage(a.getText(0x7f060282));
        b.setTitle(0x7f060282);
        b.setIndeterminate(true);
        b.setCancelable(false);
        b.setCanceledOnTouchOutside(false);
        ahf.a(b);
        b.show();
    }

    protected final volatile Object doInBackground(Object aobj[])
    {
        return null;
    }

    protected final void onPostExecute(Object obj)
    {
        try
        {
            b.dismiss();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        agm.a(true);
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        aobj = (String[])aobj;
        b.setMessage(a.getString(0x7f0601c9, new Object[] {
            aobj[0]
        }));
    }
}
