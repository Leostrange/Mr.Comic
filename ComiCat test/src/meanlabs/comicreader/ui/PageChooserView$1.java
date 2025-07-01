// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.Gallery;

// Referenced classes of package meanlabs.comicreader.ui:
//            PageChooserView

final class a
    implements Runnable
{

    final android.widget.ClickListener a;
    final PageChooserView b;

    public final void run()
    {
        b.b.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final PageChooserView._cls1 a;

            public final void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                int j = (int)((long)a.b.d.c * l);
                a.a.onItemClick(adapterview, view, i, j);
            }

            
            {
                a = PageChooserView._cls1.this;
                super();
            }
        });
    }

    ener(PageChooserView pagechooserview, android.widget.ClickListener clicklistener)
    {
        b = pagechooserview;
        a = clicklistener;
        super();
    }
}
