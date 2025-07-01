// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.utils;

import aei;
import aeu;
import agg;
import agh;
import agi;
import agj;
import ahc;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public final class ComicImageView extends ImageView
    implements agg.b, Runnable
{

    public agg a;
    public agg.b b;
    public long c;

    public ComicImageView(Context context)
    {
        super(context);
    }

    public ComicImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ComicImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public final void a()
    {
        if (a != null && a.n)
        {
            a.n = false;
        }
    }

    public final void a(agg agg1, int i, boolean flag)
    {
        a = null;
        b.a(agg1, i, flag);
    }

    public final boolean b()
    {
        return a != null && a.n;
    }

    public final agg getCurrentAnimation()
    {
        char c1 = '\226';
        aeu aeu1 = aei.a().d;
        String s = aeu1.b("transition-mode");
        boolean flag = "prefFast".equals(aeu1.b("animation-speed"));
        if ("prefTransitionCurl".equals(s))
        {
            if (flag)
            {
                c1 = 'd';
            }
            return new agh(this, c1);
        }
        if ("prefTransitionShift".equals(s))
        {
            if (!flag)
            {
                c1 = '\372';
            }
            return new agi(this, c1);
        }
        if (!flag)
        {
            c1 = '\372';
        }
        return new agj(this, c1);
    }

    protected final void onDraw(Canvas canvas)
    {
        if (!b())
        {
            Object obj = (BitmapDrawable)getDrawable();
            if (obj != null)
            {
                obj = ((BitmapDrawable) (obj)).getBitmap();
                if (obj != null && !((Bitmap) (obj)).isRecycled())
                {
                    super.onDraw(canvas);
                }
            }
            return;
        } else
        {
            a.a(canvas);
            return;
        }
    }

    public final void run()
    {
        if (ahc.b() - c >= 0x3a980L)
        {
            setKeepScreenOn(false);
        }
        postDelayed(this, 60000L);
    }

    public final void setImageBitmap(Bitmap bitmap)
    {
        super.setImageBitmap(bitmap);
        c = ahc.b();
        if (!getKeepScreenOn())
        {
            setKeepScreenOn(true);
        }
        if (bitmap != null && bitmap.isRecycled())
        {
            super.setImageBitmap(null);
        }
    }
}
