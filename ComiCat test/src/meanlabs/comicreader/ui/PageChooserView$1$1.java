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
    implements android.widget.ickListener
{

    final er.onItemClick a;

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        int j = (int)((long)a.a.d.a * l);
        a.a.onItemClick(adapterview, view, i, j);
    }

    er(er er)
    {
        a = er;
        super();
    }

    // Unreferenced inner class meanlabs/comicreader/ui/PageChooserView$1

/* anonymous class */
    final class PageChooserView._cls1
        implements Runnable
    {

        final android.widget.AdapterView.OnItemClickListener a;
        final PageChooserView b;

        public final void run()
        {
            b.b.setOnItemClickListener(new PageChooserView._cls1._cls1(this));
        }

            
            {
                b = pagechooserview;
                a = onitemclicklistener;
                super();
            }
    }

}
