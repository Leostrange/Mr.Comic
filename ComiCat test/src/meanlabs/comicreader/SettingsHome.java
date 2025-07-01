// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acg;
import aei;
import aeu;
import afw;
import agt;
import agu;
import agv;
import agw;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.io.BufferedWriter;
import java.util.ArrayList;
import meanlabs.comicreader.cloud.CloudSync;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity, GeneralSettings, ViewerSettings, CatalogSettings, 
//            HiddenFolderSettings, CloudSyncSettings

public class SettingsHome extends ReaderActivity
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final SettingsHome a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            switch (i)
            {
            default:
                return;

            case 0: // '\0'
                a.startActivity(new Intent(a, meanlabs/comicreader/GeneralSettings));
                return;

            case 2: // '\002'
                a.startActivity(new Intent(a, meanlabs/comicreader/ViewerSettings));
                return;

            case 1: // '\001'
                a.startActivity(new Intent(a, meanlabs/comicreader/CatalogSettings));
                return;

            case 4: // '\004'
                a.startActivity(new Intent(a, meanlabs/comicreader/cloud/CloudSync));
                return;

            case 3: // '\003'
                if (aei.a().d.c("enable-hidden-folders"))
                {
                    afw.a(a, new afw.a(this) {

                        final a a;

                        public final void a(boolean flag)
                        {
                            if (flag)
                            {
                                a.a.startActivity(new Intent(a.a, meanlabs/comicreader/HiddenFolderSettings));
                            }
                        }

            
            {
                a = a1;
                super();
            }
                    });
                    return;
                } else
                {
                    a.startActivity(new Intent(a, meanlabs/comicreader/HiddenFolderSettings));
                    return;
                }

            case 5: // '\005'
                a.startActivity(new Intent(a, meanlabs/comicreader/CloudSyncSettings));
                return;

            case 6: // '\006'
                adapterview = agt.a();
                view = a;
                break;
            }
            BufferedWriter bufferedwriter = ((agt) (adapterview)).a;
            if (bufferedwriter == null)
            {
                break MISSING_BLOCK_LABEL_247;
            }
            adapterview.a("********************* END OF LOG ***************************");
            ((agt) (adapterview)).a.flush();
            ((agt) (adapterview)).a.close();
            adapterview.a = null;
_L1:
            try
            {
                (new agu("support@meanlabs.com", "ComiCat Log", agv.a(((agt) (adapterview)).b))).a(view);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (AdapterView adapterview)
            {
                adapterview.printStackTrace();
            }
            return;
            Exception exception;
            exception;
            exception.printStackTrace();
              goto _L1
        }

        private a()
        {
            a = SettingsHome.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    public SettingsHome()
    {
    }

    private void a(ArrayList arraylist, int i, int j)
    {
        agw.a(arraylist, getResources(), i, j);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030050);
        bundle = (ListView)findViewById(0x7f0c008d);
        ArrayList arraylist = new ArrayList();
        a(arraylist, 0x7f06010f, 0x7f06010e);
        a(arraylist, 0x7f060071, 0x7f060070);
        a(arraylist, 0x7f060261, 0x7f06025f);
        a(arraylist, 0x7f0601c5, 0x7f0601c6);
        a(arraylist, 0x7f06007c, 0x7f060083);
        a(arraylist, 0x7f060084, 0x7f060085);
        if (agt.c)
        {
            a(arraylist, 0x7f06027a, 0x7f06027b);
        }
        bundle.setAdapter(new acg(this, arraylist));
        bundle.setOnItemClickListener(new a((byte)0));
    }
}
