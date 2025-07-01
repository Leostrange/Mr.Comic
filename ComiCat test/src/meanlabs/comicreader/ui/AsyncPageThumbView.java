// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import afb;
import agl;
import ahd;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.lang.ref.SoftReference;
import meanlabs.comicreader.ComicReaderApp;

public class AsyncPageThumbView extends ImageView
{
    static interface a
    {

        public abstract afb a();

        public abstract void a(afb afb1, Bitmap bitmap);

        public abstract boolean a(afb afb1);
    }

    final class b extends AsyncTask
    {

        a a;
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

        public b(a a1)
        {
            c = AsyncPageThumbView.this;
            super();
            a = a1;
        }
    }


    static final int c = (int)ComicReaderApp.a().getResources().getDimension(0x7f07007f) - 4;
    static final int d = (int)ComicReaderApp.a().getResources().getDimension(0x7f07007e) - 4;
    afb a;
    SoftReference b;

    public AsyncPageThumbView(Context context)
    {
        super(context);
        b = null;
    }

    public AsyncPageThumbView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = null;
    }

    public AsyncPageThumbView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = null;
    }

    static void a(AsyncPageThumbView asyncpagethumbview, Bitmap bitmap)
    {
        asyncpagethumbview.setPageBitmap(bitmap);
    }

    private void setPageBitmap(Bitmap bitmap)
    {
        Bitmap bitmap2 = agl.b(bitmap, c, d);
        Bitmap bitmap1;
        if (bitmap2 != null)
        {
            bitmap1 = bitmap2;
        } else
        {
            bitmap1 = bitmap;
        }
        b = new SoftReference(bitmap1);
        if (bitmap2 != null && bitmap2 != bitmap)
        {
            bitmap.recycle();
        }
        setImageBitmap((Bitmap)b.get());
    }

    public void setPage(afb afb1)
    {
        a = afb1;
        setImageBitmap(ahd.b());
        if (b != null && b.get() != null)
        {
            ((Bitmap)b.get()).recycle();
            b = null;
        }
        afb1 = new b(new a() {

            final AsyncPageThumbView a;

            public final afb a()
            {
                return a.a;
            }

            public final void a(afb afb2, Bitmap bitmap)
            {
                if (bitmap != null && a.a == afb2)
                {
                    AsyncPageThumbView.a(a, bitmap);
                }
            }

            public final boolean a(afb afb2)
            {
                return a.isShown() && a.getVisibility() == 0 && a.a == afb2;
            }

            
            {
                a = AsyncPageThumbView.this;
                super();
            }
        });
        try
        {
            afb1.execute(new afb[] {
                a
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (afb afb1)
        {
            afb1.printStackTrace();
        }
    }

    public void setPageSync(afb afb1)
    {
        a = afb1;
        if (b != null && b.get() != null)
        {
            ((Bitmap)b.get()).recycle();
            b = null;
        }
        afb1 = a.a(c, d);
        if (afb1 != null)
        {
            setPageBitmap(afb1);
            afb1.recycle();
            return;
        } else
        {
            setImageBitmap(ahd.b());
            return;
        }
    }

}
