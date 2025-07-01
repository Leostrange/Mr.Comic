// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import java.util.ArrayList;

public final class afv
{
    final class a
    {

        public String a;
        public String b;
        final afv c;

        a(String s, String s1)
        {
            c = afv.this;
            super();
            a = s;
            b = s1;
        }
    }


    Activity a;

    public afv(Activity activity)
    {
        a = activity;
    }

    public final void a(android.content.DialogInterface.OnClickListener onclicklistener)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new a("page-navigation-rtl", a.getString(0x7f0601fd)));
        arraylist.add(new a("double-page-rtl", a.getString(0x7f0601fb)));
        arraylist.add(new a("start-from-tr", a.getString(0x7f060244)));
        CharSequence acharsequence[] = new CharSequence[arraylist.size()];
        boolean aflag[] = new boolean[arraylist.size()];
        aeu aeu1 = aei.a().d;
        for (int i = 0; i < arraylist.size(); i++)
        {
            a a1 = (a)arraylist.get(i);
            acharsequence[i] = a1.b;
            aflag[i] = aeu1.c(a1.a);
        }

        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a);
        builder.setTitle(0x7f060141);
        builder.setMultiChoiceItems(acharsequence, aflag, new android.content.DialogInterface.OnMultiChoiceClickListener(arraylist, aeu1) {

            final ArrayList a;
            final aeu b;
            final afv c;

            public final void onClick(DialogInterface dialoginterface, int j, boolean flag)
            {
                dialoginterface = (a)a.get(j);
                b.a(((a) (dialoginterface)).a, flag);
            }

            
            {
                c = afv.this;
                a = arraylist;
                b = aeu1;
                super();
            }
        });
        builder.setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener(onclicklistener) {

            final android.content.DialogInterface.OnClickListener a;
            final afv b;

            public final void onClick(DialogInterface dialoginterface, int j)
            {
                if (a != null)
                {
                    a.onClick(dialoginterface, j);
                }
                dialoginterface.dismiss();
            }

            
            {
                b = afv.this;
                a = onclicklistener;
                super();
            }
        });
        builder.create().show();
    }
}
