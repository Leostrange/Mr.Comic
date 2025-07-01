// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.method.DigitsKeyListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.DeleteMultipleFiles;

public final class afw
{
    public static interface a
    {

        public abstract void a(boolean flag);
    }

    public static interface b
    {

        public abstract void a(boolean flag, String s);
    }


    public static void a(Activity activity)
    {
        java.util.ArrayList arraylist = ael.c();
        ael.a(arraylist, "prefSortByFilePathEx");
        if (arraylist.size() == 0)
        {
            ahf.a(activity, 0x7f06015b);
            return;
        } else
        {
            long l = agv.a(arraylist);
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
            builder.setMessage(activity.getString(0x7f0600b5, new Object[] {
                Integer.valueOf(arraylist.size()), Build.MODEL, agv.a(l)
            })).setCancelable(true).setTitle(0x7f0600bd).setPositiveButton(0x1040013, new android.content.DialogInterface.OnClickListener(activity, arraylist) {

                final Activity a;
                final List b;

                public final void onClick(DialogInterface dialoginterface, int i)
                {
                    (new ack(a, b, new ack.a(this, dialoginterface) {

                        final DialogInterface a;
                        final _cls7 b;

                        public final void a(int i)
                        {
                            String s1 = b.a.getString(0x7f0601cf, new Object[] {
                                Integer.valueOf(i)
                            });
                            String s = s1;
                            if (i < b.b.size())
                            {
                                s = (new StringBuilder()).append(b.a.getString(0x7f0600e2)).append(" ").append(s1).toString();
                            }
                            ahf.a(b.a, s);
                            a.dismiss();
                        }

            
            {
                b = _pcls7;
                a = dialoginterface;
                super();
            }
                    })).execute(new Void[] {
                        null
                    });
                }

            
            {
                a = activity;
                b = list;
                super();
            }
            }).setNeutralButton(0x7f060135, new android.content.DialogInterface.OnClickListener(activity, arraylist) {

                final Activity a;
                final List b;

                public final void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                    DeleteMultipleFiles.a(a, b, 0x7f0600bd);
                }

            
            {
                a = activity;
                b = list;
                super();
            }
            }).setNegativeButton(0x1040009, new android.content.DialogInterface.OnClickListener() {

                public final void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.cancel();
                }

            });
            builder.create().show();
            return;
        }
    }

    public static void a(Context context)
    {
        Object obj = aei.a().b.f();
        String s;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        Object obj1;
        int i;
        int j;
        int k;
        int l;
        long l1;
        if (obj != null && ((List) (obj)).size() > 0)
        {
            l = ((List) (obj)).size();
            obj = ((List) (obj)).iterator();
            j = 0;
            l1 = 0L;
            i = 0;
            k = 0;
            while (((Iterator) (obj)).hasNext()) 
            {
                aeq aeq1 = (aeq)((Iterator) (obj)).next();
                File file = new File(aeq1.d);
                long l2 = l1;
                if (file.exists())
                {
                    l2 = l1 + file.length();
                }
                int i1 = j + aeq1.b;
                if (aeq1.h.c(1))
                {
                    j = aeq1.b;
                    i++;
                } else
                if (aeq1.j != -1)
                {
                    j = aeq1.j;
                } else
                if (aeq1.i != -1)
                {
                    j = aeq1.i;
                } else
                {
                    j = 0;
                }
                k = j + k;
                j = i1;
                l1 = l2;
            }
        } else
        {
            j = 0;
            l1 = 0L;
            i = 0;
            k = 0;
            l = 0;
        }
        obj = "1.0";
        s = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        obj = s;
_L2:
        obj1 = context.getString(0x7f060233, new Object[] {
            Integer.valueOf(l), agv.a(l1), Integer.valueOf(j), Integer.valueOf(i), Integer.valueOf(k)
        });
        s = ((String) (obj1));
        if (j > 0)
        {
            s = (new StringBuilder()).append(((String) (obj1))).append(context.getString(0x7f060234, new Object[] {
                agv.a(((double)k * 100D) / (double)j)
            })).toString();
        }
        obj1 = new android.app.AlertDialog.Builder(context);
        ((android.app.AlertDialog.Builder) (obj1)).setMessage(s).setCancelable(true).setTitle(context.getString(0x7f06008f, new Object[] {
            obj
        }));
        ((android.app.AlertDialog.Builder) (obj1)).create().show();
        return;
        namenotfoundexception;
        namenotfoundexception.getMessage();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(Context context, int i, int j, int k, String s, boolean flag, b b1)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        context = (TextView)LayoutInflater.from(context).inflate(0x7f030055, null);
        builder.setTitle(i).setView(context).setMessage(j).setCancelable(true).setPositiveButton(k, new android.content.DialogInterface.OnClickListener(context, flag, b1) {

            final TextView a;
            final boolean b;
            final b c;

            public final void onClick(DialogInterface dialoginterface, int l)
            {
                String s1 = a.getText().toString();
                if (s1.length() > 0 || b)
                {
                    c.a(true, s1);
                    dialoginterface.dismiss();
                }
            }

            
            {
                a = textview;
                b = flag;
                c = b1;
                super();
            }
        }).setNegativeButton(0x1040000, new android.content.DialogInterface.OnClickListener(b1) {

            final b a;

            public final void onClick(DialogInterface dialoginterface, int l)
            {
                a.a(false, null);
                dialoginterface.cancel();
            }

            
            {
                a = b1;
                super();
            }
        });
        b1 = builder.create();
        context.setText(s);
        context.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener(b1) {

            final AlertDialog a;

            public final void onFocusChange(View view, boolean flag1)
            {
                a.getWindow().setSoftInputMode(5);
            }

            
            {
                a = alertdialog;
                super();
            }
        });
        b1.show();
    }

    public static void a(Context context, int i, String s, a a1)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        context = (TextView)LayoutInflater.from(context).inflate(0x7f030055, null);
        context.setInputType(146);
        context.setKeyListener(new DigitsKeyListener());
        builder.setTitle(0x7f060179).setView(context).setMessage(i).setCancelable(false).setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener(context, s, a1) {

            final TextView a;
            final String b;
            final a c;

            public final void onClick(DialogInterface dialoginterface, int j)
            {
                String s1 = a.getText().toString();
                aei.a().d.a(b, s1);
                c.a(true);
                dialoginterface.dismiss();
            }

            
            {
                a = textview;
                b = s;
                c = a1;
                super();
            }
        }).setNegativeButton(0x1040000, new android.content.DialogInterface.OnClickListener(a1) {

            final a a;

            public final void onClick(DialogInterface dialoginterface, int j)
            {
                a.a(false);
                dialoginterface.cancel();
            }

            
            {
                a = a1;
                super();
            }
        });
        s = builder.create();
        context.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener(s) {

            final AlertDialog a;

            public final void onFocusChange(View view, boolean flag)
            {
                a.getWindow().setSoftInputMode(5);
            }

            
            {
                a = alertdialog;
                super();
            }
        });
        s.show();
    }

    public static void a(Context context, a a1)
    {
        a1 = new ace(context, a1);
        a1.a = context.getString(0x7f0600dd);
        a1.b = 0x7f060128;
        a1.c = "unhide-code";
        a1.d = true;
        a1.show();
    }

    public static void a(Context context, String s, String s1)
    {
        (new android.app.AlertDialog.Builder(context)).setMessage(s1).setTitle(s).setCancelable(true).create().show();
    }

    public static void a(Context context, String s, String s1, int i, int j, a a1)
    {
        context = new android.app.AlertDialog.Builder(context);
        context.setTitle(s).setMessage(s1).setCancelable(false).setPositiveButton(i, new android.content.DialogInterface.OnClickListener(a1) {

            final a a;

            public final void onClick(DialogInterface dialoginterface, int k)
            {
                dialoginterface.dismiss();
                a.a(true);
            }

            
            {
                a = a1;
                super();
            }
        }).setNegativeButton(j, new android.content.DialogInterface.OnClickListener(a1) {

            final a a;

            public final void onClick(DialogInterface dialoginterface, int k)
            {
                dialoginterface.cancel();
                a.a(false);
            }

            
            {
                a = a1;
                super();
            }
        });
        context = context.create();
        agd.a(context);
        context.show();
    }

    public static void a(Context context, String s, String s1, a a1)
    {
        a(context, s, s1, 0x104000a, 0x1040000, a1);
    }

    // Unreferenced inner class afw$1

/* anonymous class */
    static final class _cls1
        implements b
    {

        final String a;
        final File b;
        final String c;
        final aeq d;
        final a e;
        final Context f;

        public final void a(boolean flag, String s)
        {
            if (flag)
            {
                s = s.trim();
                if (!s.equals(a))
                {
                    s = new File(b.getParent(), (new StringBuilder()).append(s).append('.').append(c).toString());
                    Context context;
                    if (b.renameTo(s))
                    {
                        d.d = s.getPath();
                        d.c = afa.a(s.getName());
                        d.k = agm.a(d.d);
                        aek aek1 = aei.a().b;
                        flag = aek.d(d);
                    } else
                    {
                        flag = false;
                    }
                    e.a(flag);
                    context = f;
                    if (flag)
                    {
                        s = f.getString(0x7f06008e, new Object[] {
                            s.getName()
                        });
                    } else
                    {
                        s = f.getString(0x7f0600e7);
                    }
                    ahf.a(context, s);
                }
            }
        }

            
            {
                a = s;
                b = file;
                c = s1;
                d = aeq1;
                e = a1;
                f = context;
                super();
            }
    }


    // Unreferenced inner class afw$11

/* anonymous class */
    static final class _cls11
        implements b
    {

        final aem a;
        final File b;
        final a c;
        final Context d;

        public final void a(boolean flag, String s)
        {
            if (flag)
            {
                Object obj3 = s.trim();
                if (!((String) (obj3)).equals(a.b))
                {
                    s = new File(b.getParent(), ((String) (obj3)));
                    Object obj = a.j;
                    if (b.renameTo(s))
                    {
                        List list = ael.a(a);
                        Object obj1 = ael.a(a, true);
                        Object obj2 = aei.a().b;
                        obj2 = aei.a().c;
                        obj2 = s.getPath();
                        a.j = s.getPath();
                        a.b = ((String) (obj3));
                        flag = aen.d(a);
                        obj3 = list.iterator();
                        do
                        {
                            if (!((Iterator) (obj3)).hasNext())
                            {
                                break;
                            }
                            aem aem1 = (aem)((Iterator) (obj3)).next();
                            if (a.a != aem1.a)
                            {
                                aem1.j = aem1.j.replace(((CharSequence) (obj)), ((CharSequence) (obj2)));
                                aen.d(aem1);
                            }
                        } while (true);
                        aeq aeq1;
                        for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); aek.d(aeq1))
                        {
                            aeq1 = (aeq)((Iterator) (obj1)).next();
                            aeq1.d = aeq1.d.replace(((CharSequence) (obj)), ((CharSequence) (obj2)));
                        }

                    } else
                    {
                        flag = false;
                    }
                    c.a(flag);
                    obj = d;
                    if (flag)
                    {
                        s = d.getString(0x7f060107, new Object[] {
                            s.getName()
                        });
                    } else
                    {
                        s = d.getString(0x7f0600e8);
                    }
                    ahf.a(((Context) (obj)), s);
                }
            }
        }

            
            {
                a = aem1;
                b = file;
                c = a1;
                d = context;
                super();
            }
    }


    // Unreferenced inner class afw$15

/* anonymous class */
    static final class _cls15
        implements android.content.DialogInterface.OnClickListener
    {

        final a a;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            a.a(false);
            dialoginterface.cancel();
        }

            
            {
                a = a1;
                super();
            }
    }


    // Unreferenced inner class afw$16

/* anonymous class */
    static final class _cls16
        implements android.content.DialogInterface.OnClickListener
    {

        final aeq a;
        final Context b;
        final a c;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            boolean flag = agm.a(a, true);
            Context context = b;
            if (flag)
            {
                i = 0x7f06008a;
            } else
            {
                i = 0x7f0600e2;
            }
            ahf.a(context, i);
            ael.a();
            c.a(flag);
            dialoginterface.dismiss();
        }

            
            {
                a = aeq1;
                b = context;
                c = a1;
                super();
            }
    }


    // Unreferenced inner class afw$2

/* anonymous class */
    public static final class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            aei.a().d.a("should-prompt-again", false);
            dialoginterface.cancel();
        }

    }


    // Unreferenced inner class afw$3

/* anonymous class */
    public static final class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
        }

    }


    // Unreferenced inner class afw$4

/* anonymous class */
    public static final class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        final Context a;

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            aei.a().d.a("should-prompt-again", false);
            dialoginterface.dismiss();
            Context context = a;
            if (agv.g())
            {
                dialoginterface = (new StringBuilder("market://details?id=")).append(ComicReaderApp.a().getPackageName()).toString();
            } else
            {
                dialoginterface = (new StringBuilder("amzn://apps/android?p=")).append(ComicReaderApp.a().getPackageName()).toString();
            }
            agv.a(context, dialoginterface);
        }

            public 
            {
                a = context;
                super();
            }
    }

}
