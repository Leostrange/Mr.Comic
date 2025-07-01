// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import afb;
import android.graphics.Bitmap;
import android.os.AsyncTask;

// Referenced classes of package meanlabs.comicreader.ui:
//            AsyncPageThumbView

final class a extends AsyncTask
{

    b a;
    afb b;
    final AsyncPageThumbView c;

    private transient Bitmap a(afb aafb[])
    {
        b = aafb[0];
        Object obj = null;
        try
        {
            Thread.sleep(15L);
        }
        // Misplaced declaration of an exception variable
        catch (afb aafb[])
        {
            aafb.printStackTrace();
        }
        aafb = obj;
        if (a.a(b))
        {
            b.b();
            aafb = obj;
            if (a.a(b))
            {
                aafb = b.a(AsyncPageThumbView.c, AsyncPageThumbView.d);
            }
        }
        if (b != a.a())
        {
            b = a.a();
        }
        return aafb;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a((afb[])aobj);
    }

    protected final void onPostExecute(Object obj)
    {
        obj = (Bitmap)obj;
        a.a(b, ((Bitmap) (obj)));
    }

    public (AsyncPageThumbView asyncpagethumbview,  )
    {
        c = asyncpagethumbview;
        super();
        a = ;
    }
}
