// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import java.util.ArrayList;

public final class afs
{
    final class a
    {

        public String a;
        public String b;
        final afs c;

        a(String s, String s1)
        {
            c = afs.this;
            super();
            a = s;
            b = s1;
        }
    }


    Activity a;

    public afs(Activity activity)
    {
        a = activity;
    }

    public final void a(android.content.DialogInterface.OnClickListener onclicklistener)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new a("swipe-for-page-turn", a.getString(0x7f0601b8)));
        arraylist.add(new a("tap-for-page-turn", a.getString(0x7f0601b9)));
        arraylist.add(new a("doubletap-for-page-fitting", a.getString(0x7f060196)));
        arraylist.add(new a("press-and-hold-for-seek", a.getString(0x7f0601aa)));
        arraylist.add(new a("no-swipe-on-zoom", a.getString(0x7f0600c2)));
        arraylist.add(new a("press-and-hold-for-menu", a.getString(0x7f06027f)));
        arraylist.add(new a("left-edge-swipe-for-settings", a.getString(0x7f060281)));
        arraylist.add(new a("right-edge-swipe-for-tools", a.getString(0x7f0601f6)));
        arraylist.add(new a("left-press-and-hold-for-prefs", a.getString(0x7f060134)));
        arraylist.add(new a("right-press-and-hold-for-tools", a.getString(0x7f0601f7)));
        arraylist.add(new a("use-volume-controls", a.getString(0x7f060258)));
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
        builder.setTitle(0x7f060242);
        builder.setMultiChoiceItems(acharsequence, aflag, new android.content.DialogInterface.OnMultiChoiceClickListener(arraylist, aeu1) {

            final ArrayList a;
            final aeu b;
            final afs c;

            public final void onClick(DialogInterface dialoginterface, int j, boolean flag)
            {
                dialoginterface = (a)a.get(j);
                b.a(((a) (dialoginterface)).a, flag);
            }

            
            {
                c = afs.this;
                a = arraylist;
                b = aeu1;
                super();
            }
        });
        builder.setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener(onclicklistener) {

            final android.content.DialogInterface.OnClickListener a;
            final afs b;

            public final void onClick(DialogInterface dialoginterface, int j)
            {
                if (a != null)
                {
                    a.onClick(dialoginterface, j);
                }
                dialoginterface.dismiss();
            }

            
            {
                b = afs.this;
                a = onclicklistener;
                super();
            }
        });
        builder.create().show();
    }
}
