// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Environment;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.SeekBar;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class agw
{
    public static interface a
    {

        public abstract void a(String s);
    }


    public static int a(String s, String s1)
    {
        s = s.substring(s1.length());
        int i;
        try
        {
            i = Integer.parseInt(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return -1;
        }
        return i;
    }

    public static String a(CharSequence charsequence)
    {
        String s = (String)charsequence;
        Resources resources = ComicReaderApp.a().getResources();
        int i;
        if (!Character.isDigit(charsequence.charAt(0)))
        {
            i = resources.getIdentifier(s, "string", ComicReaderApp.a().getPackageName());
        } else
        {
            i = -1;
        }
        charsequence = s;
        if (i > 0)
        {
            charsequence = resources.getString(i);
        }
        return charsequence;
    }

    public static void a(Context context, a a1)
    {
        CharSequence acharsequence[] = new CharSequence[5];
        acharsequence[0] = "prefSortByFilePath";
        acharsequence[1] = "prefSortAlphabetically";
        acharsequence[2] = "prefSortReverseAlphabetically";
        acharsequence[3] = "prefSortByAddedFirst";
        acharsequence[4] = "prefSortByAddedLast";
        context = new android.app.AlertDialog.Builder(context);
        context.setTitle(0x7f06022f);
        String s = aei.a().d.b("catalog-sort-order");
        context.setSingleChoiceItems(a(acharsequence), agv.a(acharsequence, s), new android.content.DialogInterface.OnClickListener(acharsequence, a1) {

            final CharSequence a[];
            final a b;

            public final void onClick(DialogInterface dialoginterface, int i)
            {
                String s1 = (String)a[i];
                aei.a().d.a("catalog-sort-order", s1);
                b.a(s1);
                dialoginterface.dismiss();
            }

            
            {
                a = acharsequence;
                b = a1;
                super();
            }
        }).create().show();
    }

    public static void a(Context context, String s, a a1)
    {
        CharSequence acharsequence[] = new CharSequence[3];
        acharsequence[0] = "prefAlwaysInclude";
        acharsequence[1] = "prefConditionallyInclude";
        acharsequence[2] = "prefDontInclude";
        context = new android.app.AlertDialog.Builder(context);
        context.setTitle(0x7f060125);
        String s1 = aei.a().d.b(s);
        context.setSingleChoiceItems(a(acharsequence), agv.a(acharsequence, s1), new android.content.DialogInterface.OnClickListener(acharsequence, s, a1) {

            final CharSequence a[];
            final String b;
            final a c;

            public final void onClick(DialogInterface dialoginterface, int i)
            {
                String s2 = (String)a[i];
                aei.a().d.a(b, s2);
                c.a(s2);
                dialoginterface.dismiss();
            }

            
            {
                a = acharsequence;
                b = s;
                c = a1;
                super();
            }
        }).create().show();
    }

    public static void a(Context context, boolean flag, a a1)
    {
        String s;
        CharSequence acharsequence[];
        String s1;
        byte byte0;
        if (flag)
        {
            s = "create-smb-sthumbnails";
        } else
        {
            s = "create-cloud-thumbnails";
        }
        if (flag)
        {
            byte0 = 3;
        } else
        {
            byte0 = 2;
        }
        acharsequence = new CharSequence[byte0];
        acharsequence[0] = "prefDontCreateThumbs";
        if (flag)
        {
            acharsequence[1] = "prefCreateThumbs";
        }
        acharsequence[acharsequence.length - 1] = "prefCreateThumbsInBackground";
        context = new android.app.AlertDialog.Builder(context);
        context.setTitle(0x7f0600a2);
        s1 = aei.a().d.b(s);
        context.setSingleChoiceItems(a(acharsequence), agv.a(acharsequence, s1), new android.content.DialogInterface.OnClickListener(acharsequence, s, a1) {

            final CharSequence a[];
            final String b;
            final a c;

            public final void onClick(DialogInterface dialoginterface, int i)
            {
                String s2 = (String)a[i];
                aei.a().d.a(b, s2);
                c.a(s2);
                dialoginterface.dismiss();
            }

            
            {
                a = acharsequence;
                b = s;
                c = a1;
                super();
            }
        }).create().show();
    }

    public static void a(AdapterView adapterview)
    {
        adapterview = (acg)adapterview.getAdapter();
        if (adapterview != null)
        {
            adapterview.notifyDataSetInvalidated();
        }
    }

    public static void a(ArrayList arraylist, Resources resources, int i, int j)
    {
        acf acf1 = new acf();
        acf1.a = resources.getString(i);
        acf1.b = resources.getString(j);
        arraylist.add(acf1);
    }

    public static void a(ArrayList arraylist, Resources resources, int i, int j, String s, boolean flag)
    {
        String s1 = resources.getString(i);
        boolean flag1;
        if (j != 0)
        {
            resources = resources.getString(j);
        } else
        {
            resources = null;
        }
        if (s.length() > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        a(arraylist, s1, ((String) (resources)), s, flag, flag1);
    }

    public static void a(ArrayList arraylist, String s, String s1, String s2, boolean flag, boolean flag1)
    {
        acf acf1 = new acf();
        acf1.a = s;
        acf1.b = s1;
        acf1.c = s2;
        acf1.d = flag;
        acf1.e = flag1;
        arraylist.add(acf1);
    }

    public static void a(List list)
    {
        String s1 = "";
        String s = s1;
        if (list != null)
        {
            s = s1;
            if (list.size() > 0)
            {
                s = aib.a(list, "#,#");
            }
        }
        aei.a().d.a("catalog-folders", s);
    }

    public static boolean a()
    {
        aeu aeu1 = aei.a().d;
        return aeu1.c("enable-hidden-folders") && aeu1.c("current-hidden-state");
    }

    public static boolean a(aeq aeq)
    {
        aeq = ael.b(aeq);
        if (aeq != null)
        {
            return aeq.c();
        } else
        {
            return false;
        }
    }

    public static CharSequence[] a(CharSequence acharsequence[])
    {
        CharSequence acharsequence1[] = new CharSequence[acharsequence.length];
        for (int i = 0; i < acharsequence.length; i++)
        {
            acharsequence1[i] = a(acharsequence[i]);
        }

        return acharsequence1;
    }

    public static List b()
    {
        ArrayList arraylist = new ArrayList();
        String s = aei.a().d.b("catalog-folders");
        Object obj = arraylist;
        if (s != null)
        {
            obj = arraylist;
            if (s.length() > 0)
            {
                obj = Arrays.asList(s.split("#,#"));
            }
        }
        return ((List) (obj));
    }

    public static void b(Context context, String s, a a1)
    {
        CharSequence acharsequence[] = new CharSequence[3];
        acharsequence[0] = "prefDontDownload";
        acharsequence[1] = "prefAddToQueue";
        acharsequence[2] = "prefAddAsPaused";
        context = new android.app.AlertDialog.Builder(context);
        context.setTitle(0x7f0600cc);
        String s1 = aei.a().d.b(s);
        context.setSingleChoiceItems(a(acharsequence), agv.a(acharsequence, s1), new android.content.DialogInterface.OnClickListener(acharsequence, s, a1) {

            final CharSequence a[];
            final String b;
            final a c;

            public final void onClick(DialogInterface dialoginterface, int i)
            {
                String s2 = (String)a[i];
                aei.a().d.a(b, s2);
                c.a(s2);
                dialoginterface.dismiss();
            }

            
            {
                a = acharsequence;
                b = s;
                c = a1;
                super();
            }
        }).create().show();
    }

    public static int c()
    {
        return (int)aei.a().d.a("max-image-memory", 12L) * 0x100000;
    }

    public static String d()
    {
label0:
        {
            Object obj;
label1:
            {
                obj = Environment.getExternalStorageDirectory();
                if (obj == null)
                {
                    break label0;
                }
                String s = agp.b(((File) (obj)).getAbsolutePath(), "/meanlabs/comicat/");
                File file = new File(s);
                if (!file.exists())
                {
                    file.mkdirs();
                }
                obj = s;
                if (android.os.Build.VERSION.SDK_INT <= 7)
                {
                    break label1;
                }
                if (file.exists())
                {
                    obj = s;
                    if (file.isDirectory())
                    {
                        break label1;
                    }
                }
                obj = s;
                if (ComicReaderApp.a().getExternalFilesDir(null) == null)
                {
                    obj = ComicReaderApp.a().getFilesDir().getAbsolutePath();
                }
            }
            return ((String) (obj));
        }
        return null;
    }

    public static boolean e()
    {
        return !"prefIndividualComics".equals(aei.a().d.b("shelf-mode"));
    }

    public static boolean f()
    {
        return "prefNestedFolders".equals(aei.a().d.b("shelf-mode"));
    }

    // Unreferenced inner class agw$1

/* anonymous class */
    public static final class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("orientation", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$10

/* anonymous class */
    public static final class _cls10
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("animation-speed", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$12

/* anonymous class */
    public static final class _cls12
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("view-mode", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$13

/* anonymous class */
    public static final class _cls13
        implements android.widget.SeekBar.OnSeekBarChangeListener
    {

        final Activity a;

        public final void onProgressChanged(SeekBar seekbar, int i, boolean flag)
        {
            int j = i;
            if (i == 0)
            {
                j = 1;
            }
            afl.a(a, j);
        }

        public final void onStartTrackingTouch(SeekBar seekbar)
        {
        }

        public final void onStopTrackingTouch(SeekBar seekbar)
        {
        }

            public 
            {
                a = activity;
                super();
            }
    }


    // Unreferenced inner class agw$14

/* anonymous class */
    public static final class _cls14
        implements android.widget.CompoundButton.OnCheckedChangeListener
    {

        final SeekBar a;

        public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            a.setEnabled(flag);
        }

            public 
            {
                a = seekbar;
                super();
            }
    }


    // Unreferenced inner class agw$15

/* anonymous class */
    public static final class _cls15
        implements android.content.DialogInterface.OnDismissListener
    {

        final afl a;
        final SeekBar b;
        final CheckBox c;
        final afw.a d;

        public final void onDismiss(DialogInterface dialoginterface)
        {
            a.c();
            int j = b.getProgress();
            int i = j;
            if (j == 0)
            {
                i = 1;
            }
            dialoginterface = aei.a().d;
            if (!c.isChecked())
            {
                i = 0;
            }
            dialoginterface.a("brightness-level", String.valueOf(i));
            if (d != null)
            {
                d.a(true);
            }
        }

            public 
            {
                a = afl1;
                b = seekbar;
                c = checkbox;
                d = a1;
                super();
            }
    }


    // Unreferenced inner class agw$17

/* anonymous class */
    public static final class _cls17
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("gridview-theme", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$18

/* anonymous class */
    public static final class _cls18
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("limit-touchzone", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$19

/* anonymous class */
    public static final class _cls19
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("start-in", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$2

/* anonymous class */
    public static final class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("sort-downloads-by", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$20

/* anonymous class */
    public static final class _cls20
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("open-position", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$21

/* anonymous class */
    public static final class _cls21
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("notify", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$22

/* anonymous class */
    public static final class _cls22
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            boolean flag = true;
            aeu aeu1 = aei.a().d;
            if (i != 1)
            {
                flag = false;
            }
            aeu1.a("right-to-left", flag);
            dialoginterface.dismiss();
        }

    }


    // Unreferenced inner class agw$4

/* anonymous class */
    public static final class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("transition-mode", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$5

/* anonymous class */
    public static final class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("two-page-scans", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$6

/* anonymous class */
    public static final class _cls6
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("swipe-senstivity", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$8

/* anonymous class */
    public static final class _cls8
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("shelf-mode", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }


    // Unreferenced inner class agw$9

/* anonymous class */
    public static final class _cls9
        implements android.content.DialogInterface.OnClickListener
    {

        final CharSequence a[];
        final a b;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            String s = (String)a[i];
            aei.a().d.a("on-the-fly-reading", s);
            b.a(s);
            dialoginterface.dismiss();
        }

            public 
            {
                a = acharsequence;
                b = a1;
                super();
            }
    }

}
