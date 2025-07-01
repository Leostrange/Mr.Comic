// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class ahd
{

    private static File a;
    private static File b;
    private static String c = "covers";
    private static String d = "folder_covers";
    private static String e = ".cov";

    public static Bitmap a(int i, int j, boolean flag)
    {
        Bitmap bitmap = null;
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[aft.a.a().length];
                try
                {
                    a[aft.a.b - 1] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[aft.a.c - 1] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[aft.a.d - 1] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[j - 1];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 38
    //                   2 47;
           goto _L1 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_47;
_L4:
        if (bitmap != null)
        {
            return bitmap;
        } else
        {
            return aga.a().b;
        }
_L2:
        bitmap = a(i, flag);
          goto _L4
        bitmap = c(i, flag);
          goto _L4
    }

    public static Bitmap a(int i, boolean flag)
    {
        Bitmap bitmap = null;
        Bitmap bitmap1 = agl.a(b(i, flag));
        bitmap = bitmap1;
        if (bitmap1 != null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        if (!flag)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bitmap = bitmap1;
        bitmap1 = agl.a(b(i, flag));
        bitmap = bitmap1;
_L2:
        if (bitmap != null)
        {
            return bitmap;
        } else
        {
            return aga.a().b;
        }
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static Bitmap a(List list)
    {
        Bitmap bitmap2 = aga.a().b;
        ArrayList arraylist = new ArrayList(list.size());
        Iterator iterator1 = list.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            list = a(((Integer)iterator1.next()).intValue(), true);
            if (list != null && list != bitmap2)
            {
                if (list.getWidth() > list.getHeight())
                {
                    Bitmap bitmap = agl.b(list);
                    list.recycle();
                    list = bitmap;
                }
                arraylist.add(list);
            }
        } while (true);
        if (arraylist.size() > 0)
        {
            int l = arraylist.size() - 1;
            Bitmap bitmap1 = (Bitmap)arraylist.get(0);
            int i1 = (int)((375D / (double)bitmap1.getHeight()) * (double)bitmap1.getWidth());
            Canvas canvas;
            int i;
            int k;
            if (l > 0)
            {
                i = Math.min((400 - i1) / l, 30);
            } else
            {
                i = 0;
            }
            k = i1 + l * i;
            list = Bitmap.createBitmap(k, 375, bitmap1.getConfig());
            canvas = new Canvas(list);
            canvas.drawColor(-1);
            for (int j = 1; j <= l; j++)
            {
                Bitmap bitmap3 = (Bitmap)arraylist.get(j);
                canvas.drawBitmap(bitmap3, null, new RectF(Math.max(k - (int)((375D / (double)bitmap3.getHeight()) * (double)bitmap3.getWidth()), 0), 0.0F, k, 375F), null);
                k -= i;
            }

            canvas.drawBitmap(bitmap1, null, new RectF(0.0F, 0.0F, i1, 375F), null);
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); ((Bitmap)iterator.next()).recycle()) { }
            return list;
        } else
        {
            return null;
        }
    }

    public static void a()
    {
        a = ComicReaderApp.a().getDir(c, 0);
        b = ComicReaderApp.a().getDir(d, 0);
    }

    public static void a(int i)
    {
        agz.a(b(i, false));
        agz.a(b(i, true));
    }

    public static boolean a(int i, Bitmap bitmap)
    {
        try
        {
            agl.a(bitmap, 300, 375, b(i, true), android.graphics.Bitmap.CompressFormat.JPEG);
            agl.a(bitmap, 200, 250, b(i, false), android.graphics.Bitmap.CompressFormat.JPEG);
            bitmap.recycle();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return false;
        }
        return true;
    }

    public static boolean a(aem aem1)
    {
        Object obj;
        (new StringBuilder("Inside save thumbnails for: ")).append(aem1.j);
        obj = b(aem1);
        (new StringBuilder("Found covers count: ")).append(((List) (obj)).size());
        if (((List) (obj)).size() <= 0)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        obj = a(((List) (obj)));
        if (obj != null)
        {
            try
            {
                agl.a(((Bitmap) (obj)), d(aem1.a, true), android.graphics.Bitmap.CompressFormat.JPEG);
                agl.a(((Bitmap) (obj)), 265, 250, d(aem1.a, false), android.graphics.Bitmap.CompressFormat.JPEG);
                ((Bitmap) (obj)).recycle();
            }
            // Misplaced declaration of an exception variable
            catch (aem aem1)
            {
                aem1.printStackTrace();
                return false;
            }
        }
        return true;
    }

    public static Bitmap b()
    {
        return aga.a().b;
    }

    public static String b(int i, boolean flag)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(a.getAbsolutePath()).append("/").append(i);
        String s;
        if (flag)
        {
            s = "_l";
        } else
        {
            s = "";
        }
        return stringbuilder.append(s).append(e).toString();
    }

    private static List b(aem aem1)
    {
        int i = 0;
        ArrayList arraylist = new ArrayList();
        Object obj;
        boolean flag;
        if (aem1.d == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj = ael.a(aem1, flag);
        aem1 = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            aeq aeq1 = (aeq)((Iterator) (obj)).next();
            if (c(aeq1.a))
            {
                aem1.add(aeq1);
            }
        } while (true);
        if (aem1.size() > 0)
        {
            ael.a(aem1, "prefSortAlphabetically");
            arraylist.add(Integer.valueOf(((aeq)aem1.remove(0)).a));
            if (aem1.size() <= 4)
            {
                for (aem1 = aem1.iterator(); aem1.hasNext(); arraylist.add(Integer.valueOf(((aeq)aem1.next()).a))) { }
            } else
            {
                for (; i < 4; i++)
                {
                    arraylist.add(Integer.valueOf(((aeq)aem1.remove((int)Math.round(Math.random() * 1000D) % aem1.size())).a));
                }

            }
        }
        return arraylist;
    }

    public static boolean b(int i)
    {
        return (new File(d(i, true))).exists() && (new File(d(i, false))).exists();
    }

    public static Bitmap c(int i, boolean flag)
    {
        Bitmap bitmap = null;
        Bitmap bitmap1 = agl.a(d(i, flag));
        bitmap = bitmap1;
        if (bitmap1 != null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        if (!flag)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bitmap = bitmap1;
        bitmap1 = agl.a(d(i, flag));
        bitmap = bitmap1;
_L2:
        if (bitmap != null)
        {
            return bitmap;
        } else
        {
            return aga.a().b;
        }
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean c(int i)
    {
        return (new File(b(i, true))).exists() && (new File(b(i, false))).exists();
    }

    public static String d(int i, boolean flag)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(b.getAbsolutePath()).append("/").append(i);
        String s;
        if (flag)
        {
            s = "_l";
        } else
        {
            s = "";
        }
        return stringbuilder.append(s).append(e).toString();
    }

    public static void d(int i)
    {
        agz.a(d(i, true));
        agz.a(d(i, false));
    }

}
