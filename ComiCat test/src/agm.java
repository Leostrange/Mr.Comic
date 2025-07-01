// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteStatement;
import android.graphics.Bitmap;
import android.os.Environment;
import android.util.Log;
import android.widget.GridView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.ComicFolders;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.Viewer;

public final class agm
{
    public static final class a
    {

        public int a;
        public int b;

        public a()
        {
            b = 0;
        }
    }

    static final class b extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        public static final int d;
        private static final int e[];

        public static int[] a()
        {
            return (int[])e.clone();
        }

        static 
        {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = (new int[] {
                a, b, c, d
            });
        }
    }

    public static final class c extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        public static final int d;
        public static final int e;
        private static final int f[];

        static 
        {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = (new int[] {
                a, b, c, d, e
            });
        }
    }


    public static a a(File file, String s, int i, adc adc1)
    {
        return a(file, afa.a(s), false, i, adc1, null);
    }

    public static a a(File file, String s, boolean flag, int i, adc adc1, aer.a a1)
    {
        boolean flag1;
        int j;
        boolean flag3;
        a a2 = new a();
        a2.a = c.b;
        afa afa1;
        Object obj;
        Object obj1;
        aeq aeq1;
        boolean flag2;
        if (a1 != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (adc1 != null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (file == null) goto _L2; else goto _L1
_L1:
        if (!file.exists()) goto _L2; else goto _L3
_L3:
        afa1 = new afa(file, false);
        if (afa1.b()) goto _L5; else goto _L4
_L4:
        a2.a = c.b;
_L6:
        if (afa1 != null)
        {
            try
            {
                afa1.a();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                if (file != null)
                {
                    file = file.getPath();
                } else
                if (adc1 != null)
                {
                    file = adc1.b();
                } else
                {
                    file = "";
                }
                Log.e("Sync Catalog Task", (new StringBuilder("Error processing file: ")).append(file).toString(), s);
                a2.a = c.b;
                return a2;
            }
            return a2;
        } else
        {
            return a2;
        }
_L5:
label0:
        {
            if (afa1.d() != 0)
            {
                break label0;
            }
            a2.a = c.c;
        }
          goto _L6
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        obj = adc1.b();
_L7:
        if (!agv.a(((String) (obj))).toLowerCase().equals("zip") || afa1.d() >= 2)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        a2.a = c.c;
          goto _L6
        obj = file.getPath();
          goto _L7
        obj = a(afa1);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        a2.a = c.d;
          goto _L6
_L28:
        if (!flag2 || file == null) goto _L9; else goto _L8
_L8:
        flag3 = aib.a(file.getPath(), adc1.b());
_L27:
        aeq1 = new aeq();
        if (flag2 && !flag1 && !flag3) goto _L11; else goto _L10
_L10:
        obj1 = file.getPath();
_L24:
        aeq1.d = ((String) (obj1));
        aeq1.c = s;
        if (afa1 == null)
        {
            break MISSING_BLOCK_LABEL_931;
        }
        j = afa1.d();
_L29:
        aeq1.b = j;
        if (!flag1 && !flag2) goto _L13; else goto _L12
_L12:
        if (!flag2) goto _L15; else goto _L14
_L14:
        s = adc1.b();
_L25:
        aeq1.e = s;
        if (!flag2) goto _L17; else goto _L16
_L16:
        s = adg.a(adc1.c(), adc1.f());
_L26:
        aeq1.f = s;
_L13:
        aeq1.g = i;
        aeq1.h.a(8, flag2);
        s = aeq1.h;
        if (flag1 || flag3)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        s.a(16, flag3);
        if (afa1 == null || !flag)
        {
            break MISSING_BLOCK_LABEL_531;
        }
        if (!aei.a().d.c("fix-file-extn"))
        {
            break MISSING_BLOCK_LABEL_531;
        }
        if (afa1.a != null)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_531;
        }
        afa1.a();
        obj1 = afa1.a;
        s = file.getAbsolutePath();
        obj1 = (new StringBuilder()).append(s.substring(0, s.lastIndexOf('.') + 1)).append(((String) (obj1))).toString();
        if (file.renameTo(new File(((String) (obj1)))))
        {
            s = ((String) (obj1));
        }
        aeq1.d = s;
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_549;
        }
        aeq1.k = a(aeq1.d);
        s = aei.a().b;
        flag1 = false;
        ((aek) (s)).a.clearBindings();
        obj1 = ((aek) (s)).a;
        ((SQLiteStatement) (obj1)).bindLong(1, aeq1.h.a);
        ((SQLiteStatement) (obj1)).bindLong(2, aeq1.j);
        ((SQLiteStatement) (obj1)).bindLong(3, aeq1.i);
        ((SQLiteStatement) (obj1)).bindLong(4, aeq1.b);
        ((SQLiteStatement) (obj1)).bindString(5, aeq1.c);
        ((SQLiteStatement) (obj1)).bindString(6, aeq1.d);
        ((SQLiteStatement) (obj1)).bindString(7, aeq1.e);
        ((SQLiteStatement) (obj1)).bindString(8, aeq1.f);
        ((SQLiteStatement) (obj1)).bindLong(9, aeq1.g);
        ((SQLiteStatement) (obj1)).bindString(10, aeq1.k);
        ((SQLiteStatement) (obj1)).bindLong(11, aeq1.l);
        aeq1.a = (int)((aek) (s)).a.executeInsert();
        if (aeq1.a != -1)
        {
            ((aek) (s)).b.add(aeq1);
        }
        if (aeq1.a != -1)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i == 0) goto _L19; else goto _L18
_L18:
        if (obj == null) goto _L21; else goto _L20
_L20:
        ahd.a(aeq1.a, ((Bitmap) (obj)));
          goto _L21
_L19:
        if (flag1) goto _L23; else goto _L22
_L22:
        a2.a = c.e;
          goto _L6
_L11:
        obj1 = adc1.b();
          goto _L24
_L15:
        s = a1.d;
          goto _L25
_L17:
        s = adg.a(a1.b, a1.e);
          goto _L26
_L23:
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_843;
        }
        a1.h = aeq1.a;
        a2.a = c.a;
        a2.b = aeq1.a;
          goto _L6
_L9:
        flag3 = false;
          goto _L27
_L2:
        obj = null;
        afa1 = null;
          goto _L28
_L21:
        flag1 = true;
          goto _L19
        j = -1;
          goto _L29
    }

    private static Bitmap a(afa afa1)
    {
        Bitmap bitmap1 = null;
        int i = 0;
        do
        {
            afb afb1 = afa1.a(i);
            Bitmap bitmap = bitmap1;
            if (afb1 != null)
            {
                bitmap = a(afb1);
                bitmap1 = bitmap;
                if (bitmap != null)
                {
                    break;
                }
            }
            int j = i + 1;
            bitmap1 = bitmap;
            if (j >= afa1.d())
            {
                break;
            }
            bitmap1 = bitmap;
            i = j;
            if (j < 3)
            {
                continue;
            }
            bitmap1 = bitmap;
            break;
        } while (true);
        return bitmap1;
    }

    public static Bitmap a(afb afb1)
    {
        if (afb1.f() == 2 && aei.a().d.c("use-right-cover-as-thumbnail"))
        {
            afb1.d();
        }
        return afb1.c();
    }

    public static String a(String s)
    {
        String s1 = "";
        File file = new File(s);
        s = s1;
        if (file.exists())
        {
            s = (new StringBuilder()).append(file.getName()).append('@').append(file.length()).toString();
        }
        return s;
    }

    public static void a()
    {
        if (ComicReaderApp.d() == null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        Catalog catalog = ComicReaderApp.d();
        catalog;
        JVM INSTR monitorenter ;
        Catalog catalog1;
        agb agb1;
        catalog1 = ComicReaderApp.d();
        agb1 = (agb)catalog1.b.getAdapter();
        if (agb1 == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        agb1.notifyDataSetChanged();
        agb1.a();
        catalog1.b.setAdapter(agb1);
        agb1 = (agb)catalog1.c.getAdapter();
        if (agb1 == null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        agb1.notifyDataSetChanged();
        agb1.a();
        catalog1.c.setAdapter(agb1);
        catalog;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        catalog;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(int i)
    {
        Object obj = aei.a().b;
        aen aen1 = aei.a().c;
        Object obj1 = ael.a(i);
        if (((List) (obj1)).size() > 0)
        {
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); adh.a((aeq)((Iterator) (obj1)).next(), false, false, ((aek) (obj)))) { }
        }
        obj = ael.b(i);
        ael.b(((List) (obj)), "prefSortByFilePath");
        Collections.reverse(((List) (obj)));
        obj1 = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj1)).hasNext())
            {
                break;
            }
            aem aem2 = (aem)((Iterator) (obj1)).next();
            if (aem2.d())
            {
                String s = aem2.a();
                Object obj2 = aei.a().b.f();
                ArrayList arraylist = new ArrayList();
                obj2 = ((List) (obj2)).iterator();
                do
                {
                    if (!((Iterator) (obj2)).hasNext())
                    {
                        break;
                    }
                    aeq aeq1 = (aeq)((Iterator) (obj2)).next();
                    if (s.equalsIgnoreCase(agv.c(aeq1.d)))
                    {
                        arraylist.add(aeq1);
                    }
                } while (true);
                if (!a(aem2, arraylist.size() - aem2.d, 0))
                {
                    aem2.j = aem2.a();
                    aem2.c = -1;
                    aem2.f.b(2);
                    aen.b(aem2);
                }
            }
        } while (true);
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aem aem1 = (aem)((Iterator) (obj)).next();
            if (aen1.a(aem1.a) != null)
            {
                ahd.a(aem1);
            }
        } while (true);
        ael.b();
    }

    public static void a(aem aem1, Activity activity, acr.a a1)
    {
        int i = ael.a(aem1, true).size();
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        builder.setMessage(activity.getString(0x7f0600ec, new Object[] {
            aem1.j, Integer.valueOf(i)
        })).setCancelable(true).setNegativeButton(0x1040000, null).setTitle(0x7f0600eb).setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener(aem1, a1) {

            final aem a;
            final acr.a b;

            public final void onClick(DialogInterface dialoginterface, int j)
            {
                aem aem2 = a;
                aeq aeq1;
                for (Iterator iterator = ael.a(aem2, true).iterator(); iterator.hasNext(); aei.a().b.g(aeq1))
                {
                    aeq1 = (aeq)iterator.next();
                }

                aen aen1 = aei.a().c;
                aem aem3;
                for (Iterator iterator1 = ael.a(aem2).iterator(); iterator1.hasNext(); aen.a(aem3, true))
                {
                    aem3 = (aem)iterator1.next();
                    (new StringBuilder("Deleting Folder: ")).append(aem3.j);
                }

                aen.a(aem2, true);
                aei.a().e.a(aem2.j);
                ael.a();
                dialoginterface.dismiss();
                b.f();
            }

            
            {
                a = aem1;
                b = a1;
                super();
            }
        });
        builder.create().show();
    }

    public static void a(Activity activity, int i)
    {
        Intent intent = new Intent(activity, meanlabs/comicreader/Viewer);
        intent.putExtra("seriesid", i);
        activity.startActivity(intent);
    }

    public static void a(Activity activity, int i, boolean flag)
    {
        Intent intent = new Intent(activity, meanlabs/comicreader/Viewer);
        intent.putExtra("comicid", i);
        intent.putExtra("prefBookmark", flag);
        activity.startActivity(intent);
    }

    public static void a(Activity activity, acr.a a1)
    {
        String s;
        int j;
        boolean flag;
        flag = aei.a().d.a("app-state-flags", 4);
        aei.a().d.a(4);
        j = b.a;
        s = Environment.getExternalStorageState();
        if (!"shared".equals(s)) goto _L2; else goto _L1
_L1:
        int i = b.b;
_L11:
        if (i == b.a) goto _L4; else goto _L3
_L3:
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        static final class _cls4
        {

            static final int a[];

            static 
            {
                a = new int[b.a().length];
                try
                {
                    a[b.b - 1] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[b.c - 1] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[b.d - 1] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls4.a[i - 1];
        JVM INSTR tableswitch 1 3: default 100
    //                   1 244
    //                   2 252
    //                   3 260;
           goto _L5 _L6 _L7 _L8
_L5:
        i = 0;
_L9:
        if (i != 0)
        {
            s = ComicReaderApp.a().getResources().getString(i);
        } else
        {
            s = "";
        }
        builder.setMessage(activity.getString(0x7f06014c, new Object[] {
            s
        })).setCancelable(true).setNegativeButton(0x1040000, null).setTitle(0x7f06023b).setPositiveButton(0x104000a, new android.content.DialogInterface.OnClickListener(activity, a1) {

            final Activity a;
            final acr.a b;

            public final void onClick(DialogInterface dialoginterface, int k)
            {
                agm.b(a, b);
            }

            
            {
                a = activity;
                b = a1;
                super();
            }
        });
        builder.create().show();
        return;
_L2:
        if ("nofs".equals(s) || "unmountable".equals(s))
        {
            i = b.c;
        } else
        {
            i = j;
            if ("checking".equals(s))
            {
                i = j;
                if ("unmounted".equals(s))
                {
                    i = b.d;
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L6:
        i = 0x7f06006f;
          goto _L9
_L7:
        i = 0x7f06006e;
          goto _L9
_L8:
        i = 0x7f060160;
          goto _L9
_L4:
        String s1 = aei.a().d.b("catalog-folders");
        if (!flag && s1.length() == 0)
        {
            afw.a(activity, activity.getString(0x7f060138), activity.getString(0x7f0600ff), 0x7f060205, 0x7f06009d, new afw.a(activity, a1) {

                final Activity a;
                final acr.a b;

                public final void a(boolean flag1)
                {
                    if (flag1)
                    {
                        Intent intent = new Intent(a, meanlabs/comicreader/ComicFolders);
                        intent.putExtra("warn", false);
                        ComicFolders.a = new meanlabs.comicreader.ComicFolders.a(this) {

                            final _cls3 a;

                            public final void c()
                            {
                                agm.b(a.a, a.b);
                            }

            
            {
                a = _pcls3;
                super();
            }
                        };
                        a.startActivity(intent);
                        return;
                    } else
                    {
                        agm.b(a, b);
                        return;
                    }
                }

            
            {
                a = activity;
                b = a1;
                super();
            }
            });
            return;
        }
        b(activity, a1);
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public static void a(String s, int i)
    {
        s = aei.a().c.a(s);
        if (s != null)
        {
            a(((aem) (s)), i, 0);
        }
    }

    public static void a(boolean flag)
    {
        if (ComicReaderApp.d() == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        Catalog catalog = ComicReaderApp.d();
        catalog;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        ComicReaderApp.d().c();
_L2:
        catalog;
        JVM INSTR monitorexit ;
        return;
        ComicReaderApp.d().e();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        catalog;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static boolean a(aem aem1, int i, int j)
    {
        boolean flag = false;
        (new StringBuilder("Fixing folder: ")).append(aem1.j);
        aem1.d = aem1.d + i;
        aem1.e = aem1.e + j;
        if (aem1.d == 0 && aem1.e == 0)
        {
            (new StringBuilder("Fixing folder deleting: ")).append(aem1.j);
            aen aen1 = aei.a().c;
            flag = aen.a(aem1, true);
        } else
        {
            if (i != 0 || j != 0)
            {
                aen aen2 = aei.a().c;
                aen.b(aem1);
            }
            ahd.d(aem1.a);
            ahd.a(aem1);
            aem1 = ael.b(aem1);
            if (aem1 != null)
            {
                a(aem1, 0, 0);
                return false;
            }
        }
        return flag;
    }

    public static boolean a(aem aem1, boolean flag)
    {
        for (Iterator iterator = ael.a(aem1, flag).iterator(); iterator.hasNext();)
        {
            aeq aeq1 = (aeq)iterator.next();
            if (!aeq1.d())
            {
                a(aeq1, false);
            } else
            {
                b(aeq1, false);
            }
        }

        aen aen1 = aei.a().c;
        if (flag)
        {
            Iterator iterator1 = ael.a(aem1).iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                aem aem2 = (aem)iterator1.next();
                if (agz.a(aem2.a()) || aem2.d())
                {
                    aen.a(aem2, false);
                }
            } while (true);
        }
        agz.a(aem1.a());
        return aen.a(aem1, true);
    }

    public static boolean a(aeq aeq1, boolean flag)
    {
        boolean flag2;
label0:
        {
            boolean flag1;
label1:
            {
                boolean flag3 = false;
                flag2 = false;
                if (aeq1.d())
                {
                    flag1 = flag3;
                    if (!aeq1.h.c(16))
                    {
                        break label1;
                    }
                }
                File file = new File(aeq1.d);
                if (file.exists())
                {
                    flag1 = flag3;
                    if (!agz.a(file))
                    {
                        break label1;
                    }
                }
                if (!file.exists())
                {
                    flag2 = true;
                }
                flag1 = flag2;
                if (flag2)
                {
                    if (aeq1.d())
                    {
                        break label0;
                    }
                    flag2 = aei.a().b.g(aeq1);
                    flag1 = flag2;
                    if (flag2)
                    {
                        flag1 = flag2;
                        if (flag)
                        {
                            a(file.getParent(), -1);
                            flag1 = flag2;
                        }
                    }
                }
            }
            return flag1;
        }
        aeq1.d = aeq1.e;
        aeq1.h.b(16);
        aek aek1 = aei.a().b;
        aek.a(aeq1);
        return flag2;
    }

    public static boolean a(afa afa1, int i)
    {
        boolean flag = false;
        afa1 = a(afa1);
        if (afa1 != null)
        {
            flag = ahd.a(i, afa1);
        }
        return flag;
    }

    public static void b(aeq aeq1, boolean flag)
    {
        if (aeq1.d())
        {
            if (aeq1.g())
            {
                agz.a(aeq1.d);
            }
            ahd.a(aeq1.a);
            aeq1.h.a(128);
            aek aek1 = aei.a().b;
            aek.b(aeq1);
            if (flag)
            {
                a(ael.b(aeq1), -1, 0);
            }
        }
    }

    static void b(Activity activity, acr.a a1)
    {
        (new acr(activity, a1, false)).execute(new Void[] {
            null
        });
    }

    public static void c(aeq aeq1, boolean flag)
    {
        aek aek1;
        if (flag)
        {
            aeq1.h.a(2);
            aeq1.h.b(1);
        } else
        {
            aeq1.h.b(2);
        }
        aek1 = aei.a().b;
        aek.a(aeq1);
    }
}
