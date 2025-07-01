// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.database.DataSetObserver;
import bd;

// Referenced classes of package android.support.v4.view:
//            PagerTitleStrip, ViewPager

final class <init> extends DataSetObserver
    implements <init>, <init>
{

    final PagerTitleStrip a;
    private int b;

    public final void a(bd bd, bd bd1)
    {
        a.a(bd, bd1);
    }

    public final void onChanged()
    {
        float f = 0.0F;
        a.a(a.a.getCurrentItem(), a.a.getAdapter());
        if (PagerTitleStrip.a(a) >= 0.0F)
        {
            f = PagerTitleStrip.a(a);
        }
        a.a(a.a.getCurrentItem(), f, true);
    }

    public final void onPageScrollStateChanged(int i)
    {
        b = i;
    }

    public final void onPageScrolled(int i, float f, int j)
    {
        j = i;
        if (f > 0.5F)
        {
            j = i + 1;
        }
        a.a(j, f, false);
    }

    public final void onPageSelected(int i)
    {
        float f = 0.0F;
        if (b == 0)
        {
            a.a(a.a.getCurrentItem(), a.a.getAdapter());
            if (PagerTitleStrip.a(a) >= 0.0F)
            {
                f = PagerTitleStrip.a(a);
            }
            a.a(a.a.getCurrentItem(), f, true);
        }
    }

    private (PagerTitleStrip pagertitlestrip)
    {
        a = pagertitlestrip;
        super();
    }

    a(PagerTitleStrip pagertitlestrip, byte byte0)
    {
        this(pagertitlestrip);
    }
}
