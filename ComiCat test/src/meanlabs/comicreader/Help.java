// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acg;
import agv;
import agw;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.util.ArrayList;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity, UserGuide

public class Help extends ReaderActivity
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final Help a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            switch (i)
            {
            default:
                return;

            case 0: // '\0'
                a.a(0x7f05000a, 0x7f060212);
                return;

            case 1: // '\001'
                a.a(0x7f050012, 0x7f06011d);
                return;

            case 2: // '\002'
                a.a(0x7f050013, 0x7f060246);
                return;

            case 3: // '\003'
                view = (new StringBuilder()).append(a.getString(0x7f06021a));
                String s;
                String s1;
                if (agv.g())
                {
                    adapterview = "https://play.google.com/store/apps/details?id=meanlabs.comicat";
                } else
                {
                    adapterview = "http://www.amazon.com/gp/product/B004UBB1HQ/";
                }
                adapterview = view.append(adapterview).toString();
                view = a;
                s = a.getString(0x7f06021b);
                s1 = a.getString(0x7f060219);
                try
                {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("text/plain");
                    intent.putExtra("android.intent.extra.SUBJECT", s);
                    intent.putExtra("android.intent.extra.TEXT", adapterview);
                    view.startActivity(Intent.createChooser(intent, s1));
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (AdapterView adapterview)
                {
                    adapterview.printStackTrace();
                }
                return;

            case 4: // '\004'
                agv.a(a);
                return;

            case 5: // '\005'
                view = a;
                break;
            }
            if (agv.g())
            {
                adapterview = "market://details?id=meanlabs.goldencat";
            } else
            {
                adapterview = "amzn://apps/android?p=meanlabs.goldencat";
            }
            agv.a(view, adapterview);
        }

        private a()
        {
            a = Help.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }


    public Help()
    {
    }

    final void a(int i, int j)
    {
        Intent intent = new Intent(this, meanlabs/comicreader/UserGuide);
        intent.putExtra("guide", i);
        intent.putExtra("title", getString(j));
        startActivity(intent);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030050);
        bundle = (ListView)findViewById(0x7f0c008d);
        ArrayList arraylist = new ArrayList();
        agw.a(arraylist, getResources(), 0x7f060212, 0x7f060114);
        agw.a(arraylist, getResources(), 0x7f06011d, 0x7f06011e);
        agw.a(arraylist, getResources(), 0x7f060246, 0x7f060247);
        agw.a(arraylist, getResources(), 0x7f060214, 0x7f060216);
        agw.a(arraylist, getResources(), 0x7f060099, 0x7f06009a);
        if (agv.g())
        {
            agw.a(arraylist, getResources(), 0x7f060248, 0x7f060249);
        }
        bundle.setAdapter(new acg(this, arraylist));
        bundle.setOnItemClickListener(new a((byte)0));
    }
}
