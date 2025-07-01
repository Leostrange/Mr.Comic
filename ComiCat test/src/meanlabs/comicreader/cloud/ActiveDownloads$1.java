// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package meanlabs.comicreader.cloud:
//            ActiveDownloads

final class a
    implements android.widget.ClickListener
{

    final ActiveDownloads a;

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ActiveDownloads.a(a, i);
    }

    r(ActiveDownloads activedownloads)
    {
        a = activedownloads;
        super();
    }
}
