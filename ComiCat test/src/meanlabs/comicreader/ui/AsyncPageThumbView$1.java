// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import afb;
import android.graphics.Bitmap;

// Referenced classes of package meanlabs.comicreader.ui:
//            AsyncPageThumbView

final class a
    implements a
{

    final AsyncPageThumbView a;

    public final afb a()
    {
        return a.a;
    }

    public final void a(afb afb, Bitmap bitmap)
    {
        if (bitmap != null && a.a == afb)
        {
            AsyncPageThumbView.a(a, bitmap);
        }
    }

    public final boolean a(afb afb)
    {
        return a.isShown() && a.getVisibility() == 0 && a.a == afb;
    }

    (AsyncPageThumbView asyncpagethumbview)
    {
        a = asyncpagethumbview;
        super();
    }
}
