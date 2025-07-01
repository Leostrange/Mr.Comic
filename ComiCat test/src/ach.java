// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.List;

public final class ach extends AsyncTask
{

    private Activity a;
    private ProgressDialog b;
    private String c;

    public ach(Activity activity, String s)
    {
        a = activity;
        c = s;
        b = new ProgressDialog(a);
        b.setProgressStyle(1);
        b.setMessage(a.getText(0x7f0601c7));
        b.setTitle(0x7f060272);
        b.setIndeterminate(true);
        b.setCancelable(false);
        b.setCanceledOnTouchOutside(false);
        ahf.a(b);
        b.show();
    }

    private transient Integer a()
    {
        int i;
        ahg ahg1 = new ahg(c);
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        try
        {
            obj = aei.a();
            ahg1.a("database", new ByteArrayInputStream(((aei) (obj)).c()));
            ahg1.a("comic_thumbs");
            obj1 = ((aei) (obj)).b.f();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return Integer.valueOf(-1);
        }
        i = 0;
_L4:
        if (i >= ((List) (obj1)).size()) goto _L2; else goto _L1
_L1:
        obj3 = (aeq)((List) (obj1)).get(i);
        if (((aeq) (obj3)).d() && ahd.c(((aeq) (obj3)).a))
        {
            obj2 = ahd.b(((aeq) (obj3)).a, true);
            obj3 = ahd.b(((aeq) (obj3)).a, false);
            ahg1.a(new File(((String) (obj2))));
            ahg1.a(new File(((String) (obj3))));
        }
          goto _L3
_L2:
        ahg1.a("Folder_thumbs");
        obj = ((aei) (obj)).c.e();
        i = 0;
_L5:
        if (i < ((List) (obj)).size())
        {
            obj2 = (aem)((List) (obj)).get(i);
            if (((aem) (obj2)).d() && ahd.b(((aem) (obj2)).a))
            {
                obj1 = ahd.d(((aem) (obj2)).a, true);
                obj2 = ahd.d(((aem) (obj2)).a, false);
                ahg1.a(new File(((String) (obj1))));
                ahg1.a(new File(((String) (obj2))));
            }
            break MISSING_BLOCK_LABEL_287;
        }
        ahg1.a();
        return Integer.valueOf(0);
_L3:
        i++;
          goto _L4
        i++;
          goto _L5
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        try
        {
            b.dismiss();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
    }

    protected final volatile void onProgressUpdate(Object aobj[])
    {
    }
}
