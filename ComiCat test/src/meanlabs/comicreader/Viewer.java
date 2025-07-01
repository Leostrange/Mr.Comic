// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aco;
import aei;
import aek;
import ael;
import aem;
import aen;
import aeq;
import aet;
import aeu;
import afa;
import afb;
import afk;
import afl;
import afs;
import age;
import agf;
import agg;
import agl;
import agv;
import agw;
import agx;
import ahc;
import ahf;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.WallpaperManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ui.GestureListenerActivity;
import meanlabs.comicreader.ui.PageChooserView;
import meanlabs.comicreader.ui.TwoDScrollView;
import meanlabs.comicreader.utils.ComicImageView;

// Referenced classes of package meanlabs.comicreader:
//            ComicReaderApp, ReaderActivity

public final class Viewer extends GestureListenerActivity
    implements aco.a, age.b, agf.c, agg.b, meanlabs.comicreader.ui.TwoDScrollView.a
{
    final class a
    {

        public afa a;
        public aeq b;
        public boolean c;
        public c d;
        public boolean e;
        public aco f;
        public aem g;
        public long h;
        public boolean i;
        final Viewer j;

        public a()
        {
            j = Viewer.this;
            super();
            a = null;
            c = false;
            d = j. new c((byte)0);
            e = false;
            f = null;
            i = false;
            h = ahc.b();
        }
    }

    public static final class b extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        public static final int d;
        public static final int e;
        private static final int f[];

        public static int[] a()
        {
            return (int[])f.clone();
        }

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

    final class c
    {

        float a;
        float b;
        float c;
        final Viewer d;

        private c()
        {
            d = Viewer.this;
            super();
        }

        c(byte byte0)
        {
            this();
        }
    }


    private static final int Q = Color.argb(128, 0, 0, 0);
    private static final String R = ComicReaderApp.a().getString(0x7f060166);
    private static final String S = ComicReaderApp.a().getString(0x7f060167);
    private static final String T = ComicReaderApp.a().getString(0x7f060111);
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private int M;
    private afl N;
    private afk O;
    private int P;
    private Bitmap U;
    PageChooserView a;
    public int b;
    private TwoDScrollView j;
    private ComicImageView k;
    private TextView l;
    private TextView m;
    private LinearLayout q;
    private Toast r;
    private DrawerLayout s;
    private a t;
    private Bitmap u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public Viewer()
    {
        r = null;
        b = b.a;
        v = false;
        w = false;
        x = false;
        y = false;
        z = true;
        A = true;
        B = true;
        C = true;
        D = false;
        E = false;
        F = true;
        G = false;
        H = true;
        I = true;
        J = true;
        K = true;
        L = true;
        M = 0;
        P = -1;
    }

    static DrawerLayout a(Viewer viewer)
    {
        return viewer.s;
    }

    private void a(int i1, int j1)
    {
        agg agg1;
        boolean flag1;
        flag1 = false;
        agg1 = null;
        if (k.b())
        {
            k.a();
            j1 = 0;
        }
        o();
        Object obj;
        Object obj1;
        Object obj2;
        int k1;
        boolean flag;
        if (L && ahf.a())
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
          goto _L1
_L22:
        if (obj1 == null || !k1) goto _L3; else goto _L2
_L2:
        if (((afb) (obj1)).g()) goto _L3; else goto _L4
_L4:
        i1;
        JVM INSTR tableswitch -1 1: default 834
    //                   -1 472
    //                   0 544
    //                   1 607;
           goto _L3 _L5 _L6 _L7
_L25:
        obj2 = t;
        if (obj != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj2.i = flag;
          goto _L8
_L46:
        if (obj2 == null) goto _L10; else goto _L9
_L9:
        obj1 = ((afb) (obj2)).a();
_L49:
        if (obj == null) goto _L12; else goto _L11
_L11:
        obj2 = ((afb) (obj)).a();
          goto _L13
_L48:
        obj = agl.a(((Bitmap) (obj1)), ((Bitmap) (obj2)));
_L41:
        if (obj == null) goto _L15; else goto _L14
_L14:
        k.setImageBitmap(((Bitmap) (obj)));
        a(((ImageView) (k)), ((Bitmap) (obj)));
        u = U;
        U = ((Bitmap) (obj));
        if (K)
        {
            i1 = j1;
        } else
        {
            i1 = 0;
        }
        if (i1 != 0) goto _L17; else goto _L16
_L16:
        v();
_L32:
        if (t.a.e().f() > 1 && !aei.a().d.a("app-state-flags", 2))
        {
            aei.a().d.a(2);
        }
        obj = t.a.j;
        if (((afa.b) (obj)).c == null) goto _L19; else goto _L18
_L18:
        obj1 = ((afa.b) (obj)).c;
        if (((afa.b) (obj)).e && !ReaderActivity.p)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((afb) (obj1)).a(flag);
_L19:
        if (((afa.b) (obj)).d != null)
        {
            ((afa.b) (obj)).d.a(false);
        }
_L15:
        flag = flag1;
        if (j1 != 0)
        {
            flag = true;
        }
        e(flag);
        w();
        return;
_L43:
        if (!k1) goto _L21; else goto _L20
_L20:
        t.a.e();
        if (t.i)
        {
            t.a.h();
        }
_L21:
        obj1 = t.a.h();
          goto _L22
_L44:
        if (t.i)
        {
            t.a.h();
            (new StringBuilder("Moving back to: ")).append(t.a.j.a);
        }
        obj1 = t.a.e();
          goto _L22
_L45:
        obj1 = t.a.i();
          goto _L22
_L5:
        if (t.a.j.a == 1) goto _L3; else goto _L23
_L23:
        obj2 = t.a.h();
        obj = obj2;
        if (obj2 == null) goto _L25; else goto _L24
_L24:
        obj = obj2;
        if (((afb) (obj2)).g())
        {
            obj = null;
        }
        t.a.i();
          goto _L25
        obj;
        ((Exception) (obj)).printStackTrace();
          goto _L15
_L6:
        if (t.a.j.a == 0) goto _L3; else goto _L26
_L26:
        obj2 = t.a.i();
        obj = obj2;
        if (obj2 == null) goto _L25; else goto _L27
_L27:
        obj = obj2;
        if (!((afb) (obj2)).g()) goto _L25; else goto _L28
_L28:
        t.a.h();
        obj = null;
          goto _L25
_L7:
        obj2 = t.a.i();
        obj = obj2;
        if (obj2 == null) goto _L25; else goto _L29
_L29:
        obj = obj2;
        if (!((afb) (obj2)).g()) goto _L25; else goto _L30
_L30:
        t.a.h();
        obj = null;
          goto _L25
_L17:
        if (u == null || obj == null) goto _L32; else goto _L31
_L31:
        a(((ImageView) (k)), ((Bitmap) (obj)));
        obj1 = k;
        obj2 = u;
        k1 = b;
        if (i1 == -1)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        obj1.a = ((ComicImageView) (obj1)).getCurrentAnimation();
        if (((ComicImageView) (obj1)).a == null) goto _L34; else goto _L33
_L33:
        agg1 = ((ComicImageView) (obj1)).a;
        if (i1 == 0) goto _L36; else goto _L35
_L35:
        i1 = agg.a.a;
_L37:
        agg1.a(((Bitmap) (obj2)), ((Bitmap) (obj)), k1, i1, ((agg.b) (obj1)));
          goto _L32
_L36:
        i1 = agg.a.b;
          goto _L37
_L34:
        obj = ((ComicImageView) (obj1)).b;
        if (i1 == 0) goto _L39; else goto _L38
_L38:
        i1 = agg.a.a;
_L40:
        ((agg.b) (obj)).a(null, i1, false);
          goto _L32
_L39:
        i1 = agg.a.b;
          goto _L40
_L47:
        obj = null;
          goto _L41
_L1:
        i1;
        JVM INSTR tableswitch -1 1: default 828
    //                   -1 342
    //                   0 394
    //                   1 457;
           goto _L42 _L43 _L44 _L45
_L42:
        obj1 = null;
          goto _L22
_L3:
        obj = null;
          goto _L25
_L8:
        if (i1 == -1)
        {
            obj2 = obj;
        } else
        {
            obj2 = obj1;
        }
        if (i1 == -1)
        {
            obj = obj1;
        }
        if (obj2 == null && obj == null) goto _L47; else goto _L46
_L13:
        if (obj1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = agg1;
        if (obj2 == null) goto _L41; else goto _L48
_L10:
        obj1 = null;
          goto _L49
_L12:
        obj2 = null;
          goto _L13
    }

    private void a(aeq aeq1)
    {
        a(false);
        t.b = aeq1;
        a(t.b, false);
    }

    private void a(aeq aeq1, boolean flag)
    {
label0:
        {
label1:
            {
                if (t.a == null)
                {
                    if (t.f != null)
                    {
                        break label0;
                    }
                    t.f = new aco(this, aeq1, flag, this);
                    if (!agv.h())
                    {
                        break label1;
                    }
                    t.f.executeOnExecutor(aco.THREAD_POOL_EXECUTOR, new Void[] {
                        null
                    });
                }
                return;
            }
            t.f.execute(new Void[] {
                null
            });
            return;
        }
        t.f.a(this, this);
    }

    private void a(ImageView imageview, Bitmap bitmap)
    {
        int i1 = 0;
        static final class _cls5
        {

            static final int a[];

            static 
            {
                a = new int[b.a().length];
                try
                {
                    a[b.a - 1] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[b.b - 1] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[b.c - 1] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[b.d - 1] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[b.e - 1] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls5.a[b - 1];
        JVM INSTR tableswitch 1 5: default 48
    //                   1 192
    //                   2 192
    //                   3 212
    //                   4 252
    //                   5 292;
           goto _L1 _L2 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_292;
_L1:
        int j1 = 0;
_L6:
        int l1 = i1;
        int k1 = j1;
        if (t.c)
        {
            k1 = (int)((float)j1 * t.d.a);
            l1 = (int)((float)i1 * t.d.a);
            b(t.d.a);
        }
        if (b == b.b)
        {
            bitmap = android.widget.ImageView.ScaleType.FIT_XY;
        } else
        {
            bitmap = android.widget.ImageView.ScaleType.FIT_CENTER;
        }
        imageview.setScaleType(bitmap);
        imageview.setLayoutParams(new android.widget.FrameLayout.LayoutParams(k1, l1));
        j.post(new Runnable() {

            final Viewer a;

            public final void run()
            {
                Viewer.h(a).scrollTo(0, 0);
                Viewer.h(a).a(33, true);
                Viewer.h(a).a(33, false);
            }

            
            {
                a = Viewer.this;
                super();
            }
        });
        if (t.c)
        {
            j.post(new Runnable() {

                final Viewer a;

                public final void run()
                {
                    Viewer.h(a).scrollBy((int)Viewer.f(a).d.b, (int)Viewer.f(a).d.c);
                }

            
            {
                a = Viewer.this;
                super();
            }
            });
        } else
        if (x && j.getWidth() < k1)
        {
            j.post(new Runnable(k1) {

                final int a;
                final Viewer b;

                public final void run()
                {
                    Viewer.h(b).scrollBy(a - Viewer.h(b).getWidth(), 0);
                }

            
            {
                b = Viewer.this;
                a = i1;
                super();
            }
            });
            return;
        }
        return;
_L2:
        j1 = j.getWidth();
        i1 = j.getHeight();
          goto _L6
_L3:
        j1 = j.getWidth();
        i1 = Math.max(j.getHeight(), (bitmap.getHeight() * j.getWidth()) / bitmap.getWidth());
          goto _L6
_L4:
        j1 = Math.max(j.getWidth(), (bitmap.getWidth() * j.getHeight()) / bitmap.getHeight());
        i1 = j.getHeight();
          goto _L6
        j1 = bitmap.getWidth();
        i1 = bitmap.getHeight();
          goto _L6
    }

    private void a(String s1, int i1, int j1)
    {
        boolean flag = false;
        Object obj;
        if (r != null)
        {
            r.cancel();
        }
        if (r != null && !agv.h())
        {
            break MISSING_BLOCK_LABEL_62;
        }
        r = Toast.makeText(this, s1, i1);
        obj = r.getView();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        ((View) (obj)).setBackgroundColor(Q);
        obj = r;
        int k1;
        if (j1 != 0)
        {
            k1 = j1;
        } else
        {
            k1 = 81;
        }
          goto _L1
_L3:
        j1 = 75;
        continue; /* Loop/switch isn't completed */
_L5:
        try
        {
            ((Toast) (obj)).setGravity(k1, 0, j1);
            r.setDuration(i1);
            r.setText(s1);
            r.show();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
        }
        return;
_L1:
        if (j1 == 0) goto _L3; else goto _L2
_L2:
        j1 = ((flag) ? 1 : 0);
        if (true) goto _L5; else goto _L4
_L4:
    }

    static void a(Viewer viewer, aeq aeq1)
    {
        viewer.a(aeq1);
    }

    private void a(boolean flag)
    {
        if (t.a != null)
        {
            if (!flag)
            {
                t.a.a();
                t.a = null;
            }
            k.setImageBitmap(null);
            if (U != null)
            {
                U.recycle();
                U = null;
            }
            v();
            System.gc();
        }
    }

    private boolean a(aem aem1, boolean flag)
    {
        boolean flag3 = false;
        int j1 = aem1.g;
        Object obj = ael.a(aem1, false);
        boolean flag2 = flag3;
        if (obj != null)
        {
            flag2 = flag3;
            if (((List) (obj)).size() != 0)
            {
                Iterator iterator;
                int i1;
                if (aem1.f())
                {
                    ael.a(((List) (obj)), "prefSortByFilePathEx");
                } else
                {
                    ael.a(((List) (obj)), "prefSortAlphabetically");
                }
                iterator = ((List) (obj)).iterator();
                for (i1 = 0; iterator.hasNext() && ((aeq)iterator.next()).a != j1; i1++) { }
                boolean flag1;
                if (t.b == null)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (i1 == ((List) (obj)).size())
                {
                    i1 = 0;
                }
                if (!flag1)
                {
                    if (flag)
                    {
                        i1--;
                    } else
                    {
                        i1++;
                    }
                }
                flag2 = flag3;
                if (i1 >= 0)
                {
                    flag2 = flag3;
                    if (i1 < ((List) (obj)).size())
                    {
                        t.b = (aeq)((List) (obj)).get(i1);
                        aem1.g = t.b.a;
                        obj = aei.a().c;
                        aen.c(aem1);
                        if (flag1)
                        {
                            a(t.b, false);
                        } else
                        {
                            a(t.b);
                        }
                        flag2 = true;
                    }
                }
            }
        }
        return flag2;
    }

    static void b(Viewer viewer)
    {
        viewer.a(0, 0);
    }

    private boolean b(boolean flag)
    {
        boolean flag1;
label0:
        {
            flag1 = true;
            int j1 = 1;
            if (t.a != null)
            {
                byte byte0;
                if (w)
                {
                    flag1 = t.a.f();
                } else
                {
                    flag1 = t.a.g();
                }
                if (!flag1)
                {
                    break label0;
                }
                if (w)
                {
                    byte0 = -1;
                } else
                {
                    byte0 = 1;
                }
                if (!flag)
                {
                    j1 = 0;
                }
                a(byte0, j1);
            }
            return flag1;
        }
        int i1;
        if (w)
        {
            i1 = 0x7f0600fe;
        } else
        {
            i1 = 0x7f06012f;
        }
        ahf.a(this, i1);
        if (!w)
        {
            q();
        }
        return flag1;
    }

    static boolean c(Viewer viewer)
    {
        return viewer.b(false);
    }

    private boolean c(boolean flag)
    {
        int i1;
        byte byte0;
        boolean flag1;
        boolean flag2;
        i1 = 1;
        flag2 = false;
        byte0 = -1;
        if (t.a == null)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        if (w)
        {
            flag1 = t.a.g();
        } else
        {
            flag1 = t.a.f();
        }
        if (!flag1) goto _L2; else goto _L1
_L1:
        if (!w)
        {
            i1 = -1;
        }
        if (!flag)
        {
            byte0 = 0;
        }
        a(i1, byte0);
_L4:
        return flag1;
_L2:
        int j1;
        if (w)
        {
            j1 = 0x7f06012f;
        } else
        {
            j1 = 0x7f0600fe;
        }
        ahf.a(this, j1);
        flag1 = flag2;
        if (!w) goto _L4; else goto _L3
_L3:
        q();
        return false;
        return true;
    }

    private void d(boolean flag)
    {
        LinearLayout linearlayout = q;
        byte byte0;
        if (flag)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        linearlayout.setVisibility(byte0);
    }

    private boolean d(int i1)
    {
        boolean flag;
        boolean flag2;
        boolean flag3;
        flag3 = false;
        flag = false;
        flag2 = true;
        i1;
        JVM INSTR lookupswitch 14: default 132
    //                   16908332: 786
    //                   2131493185: 273
    //                   2131493189: 261
    //                   2131493190: 165
    //                   2131493191: 627
    //                   2131493192: 138
    //                   2131493193: 219
    //                   2131493194: 363
    //                   2131493195: 466
    //                   2131493196: 606
    //                   2131493197: 144
    //                   2131493198: 764
    //                   2131493199: 772
    //                   2131493200: 780;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L1:
        flag = false;
_L17:
        return flag;
_L7:
        s();
        return true;
_L12:
        (new Handler()).post(new Runnable() {

            final Viewer a;

            public final void run()
            {
                Viewer.f(a).a.b(0);
                Viewer.b(a);
            }

            
            {
                a = Viewer.this;
                super();
            }
        });
        return true;
_L5:
        if (r())
        {
            a.a();
            return true;
        }
        flag = flag2;
        if (t.a == null) goto _L17; else goto _L16
_L16:
        a.a(t.a, new android.widget.AdapterView.OnItemClickListener() {

            final Viewer a;

            public final void onItemClick(AdapterView adapterview, View view, int j1, long l1)
            {
                a.a.a();
                Viewer.f(a).a.b((int)l1);
                Viewer.b(a);
            }

            
            {
                a = Viewer.this;
                super();
            }
        });
        return true;
_L8:
        a a1 = t;
        if (!t.e)
        {
            flag = true;
        }
        a1.e = flag;
        d(t.e);
        e(true);
        return true;
_L4:
        s.b(0x800003);
        return true;
_L3:
        flag = flag2;
        if (t.b == null) goto _L17; else goto _L18
_L18:
        t.b.i = t.a.j.a + 1;
        aek aek1 = aei.a().b;
        aek.c(t.b);
        ahf.a(this, getString(0x7f06005d, new Object[] {
            Integer.valueOf(t.b.i)
        }));
        return true;
_L9:
        Bitmap bitmap;
        bitmap = agl.a(U, 1024, 1024);
        flag = flag2;
        if (bitmap == null) goto _L17; else goto _L19
_L19:
        try
        {
            Uri uri = Uri.parse(android.provider.MediaStore.Images.Media.insertImage(getContentResolver(), bitmap, getString(0x7f060214), null));
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", uri);
            startActivity(Intent.createChooser(intent, getString(0x7f060214)));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        bitmap.recycle();
        return true;
_L10:
        i1 = t.a.j.a;
        String s2 = (new StringBuilder()).append(i1 + 1).append(t.a.e().e()).toString();
        String s1 = (new StringBuilder()).append(t.b.c).append('_').append(s2).toString();
        s2 = getString(0x7f06011f, new Object[] {
            s2, t.b.c
        });
        if (agx.a(this, U, s1, s2) != null)
        {
            ahf.a(this, 0x7f06016b);
            return true;
        } else
        {
            ahf.a(this, 0x7f0600de);
            return true;
        }
_L11:
        (new Handler()).post(new Runnable() {

            final Viewer a;

            public final void run()
            {
                try
                {
                    WallpaperManager.getInstance(a.getApplicationContext()).setBitmap(Viewer.g(a));
                    ahf.a(ComicReaderApp.a(), 0x7f060263);
                    return;
                }
                catch (Exception exception1)
                {
                    ahf.a(ComicReaderApp.a(), 0x7f0600e1);
                }
            }

            
            {
                a = Viewer.this;
                super();
            }
        });
        return true;
_L6:
        a a2 = t;
        boolean flag1 = flag3;
        if (!t.c)
        {
            flag1 = true;
        }
        a2.c = flag1;
        if (t.c)
        {
            t.d.a = h;
            t.d.b = j.getScrollX();
            t.d.c = j.getScrollY();
            e(0x7f06020e);
        } else
        {
            b(t.d.a);
            e(0x7f0601eb);
        }
        j.post(new Runnable() {

            final Viewer a;

            public final void run()
            {
                ActivityCompat.invalidateOptionsMenu(a);
            }

            
            {
                a = Viewer.this;
                super();
            }
        });
        return true;
_L13:
        f(false);
        return true;
_L14:
        f(true);
        return true;
_L15:
        finish();
        return true;
_L2:
        if (s.b())
        {
            s.c(0x800003);
            return true;
        } else
        {
            s.b(0x800003);
            return true;
        }
    }

    static boolean d(Viewer viewer)
    {
        return viewer.c(false);
    }

    private void e(int i1)
    {
        a(getString(i1), 0, 0);
    }

    private void e(boolean flag)
    {
        int i1 = t.a.j.a + 1;
        String s1;
        String s2;
        if (t.a.e() != null)
        {
            s1 = t.a.e().e();
        } else
        {
            s1 = "";
        }
        s2 = (new StringBuilder()).append(i1).append(s1).append("/").append(t.a.d()).toString();
        s1 = s2;
        if (t.i)
        {
            s1 = (new StringBuilder()).append(String.valueOf(i1 - 1)).append('-').append(s2).toString();
        }
        if (!t.e)
        {
            m.setText(s1);
        } else
        if (flag && J)
        {
            a(s1, 0, 85);
            return;
        }
    }

    static boolean e(Viewer viewer)
    {
        return viewer.f;
    }

    static a f(Viewer viewer)
    {
        return viewer.t;
    }

    private boolean f(boolean flag)
    {
        Object obj;
        Object obj1;
        ArrayList arraylist;
        aeq aeq2;
        int i1;
        int k1;
        int l1;
        boolean flag1;
        boolean flag2;
        if (t.g != null && a(t.g, flag))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1) goto _L2; else goto _L1
_L1:
        arraylist = new ArrayList();
        obj = new ArrayList();
        l1 = -1;
        obj1 = aei.a().b.f();
        if (obj1 == null || ((List) (obj1)).size() <= 0)
        {
            break MISSING_BLOCK_LABEL_390;
        }
        ael.a(((List) (obj1)), "prefSortByFilePathEx");
        flag2 = agw.a();
        obj1 = ((List) (obj1)).iterator();
        i1 = -1;
        k1 = 0;
_L11:
        if (!((Iterator) (obj1)).hasNext()) goto _L4; else goto _L3
_L3:
        aeq2 = (aeq)((Iterator) (obj1)).next();
        if (t.b == aeq2) goto _L6; else goto _L5
_L5:
        if (!flag2) goto _L8; else goto _L7
_L7:
        l1 = k1;
        if (agw.a(aeq2)) goto _L9; else goto _L8
_L8:
        arraylist.add(aeq2);
        l1 = k1;
        if (!aeq2.h.c(2)) goto _L9; else goto _L10
_L10:
        ((ArrayList) (obj)).add(aeq2);
          goto _L11
_L6:
        k1 = arraylist.size();
        l1 = k1;
        if (!aeq2.h.c(2)) goto _L9; else goto _L12
_L12:
        i1 = ((ArrayList) (obj)).size();
          goto _L11
_L4:
        l1 = i1;
_L13:
        int i2 = l1;
        int j1 = k1;
        if (flag)
        {
            i2 = l1 - 1;
            j1 = k1 - 1;
        }
        aeq aeq1;
        if ((int)aei.a().d.a("catalog-folder", 0L) == -3 && i2 >= 0)
        {
            if (((ArrayList) (obj)).size() > 0)
            {
                if (((ArrayList) (obj)).size() <= i2)
                {
                    i2 = 0;
                }
                obj = (aeq)((ArrayList) (obj)).get(i2);
            } else
            {
                obj = null;
            }
        } else
        {
            obj = null;
        }
        aeq1 = ((aeq) (obj));
        if (obj == null)
        {
            aeq1 = ((aeq) (obj));
            if (j1 >= 0)
            {
                if (arraylist.size() > 0)
                {
                    if (arraylist.size() <= j1)
                    {
                        j1 = 0;
                    }
                    aeq1 = (aeq)arraylist.get(j1);
                } else
                {
                    aeq1 = null;
                }
            }
        }
        if (aeq1 != null)
        {
            a(aeq1);
            return true;
        }
_L2:
        return flag1;
_L9:
        k1 = l1;
          goto _L11
        k1 = 0;
          goto _L13
    }

    static Bitmap g(Viewer viewer)
    {
        return viewer.U;
    }

    static TwoDScrollView h(Viewer viewer)
    {
        return viewer.j;
    }

    static ComicImageView i(Viewer viewer)
    {
        return viewer.k;
    }

    static String j()
    {
        return T;
    }

    static String k()
    {
        return R;
    }

    static String l()
    {
        return S;
    }

    private void p()
    {
        Object obj;
        obj = aei.a().d;
        Object obj1;
        boolean flag;
        boolean flag1;
        if (!aei.a().d.b("transition-mode").equals("prefNoTransition"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        K = flag;
        flag1 = ((aeu) (obj)).c("right-to-left");
        if (flag1 && ((aeu) (obj)).c("page-navigation-rtl"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        w = flag;
        if (flag1 && ((aeu) (obj)).c("start-from-tr"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        x = flag;
        obj1 = ((aeu) (obj)).b("orientation");
        if ("prefPortrait".equals(obj1))
        {
            setRequestedOrientation(1);
        } else
        if ("prefLandscape".equals(obj1))
        {
            setRequestedOrientation(0);
        } else
        {
            setRequestedOrientation(4);
        }
        t();
        J = ((aeu) (obj)).c("show-page-numbering");
        L = ((aeu) (obj)).c("show-2-pages-in-landscape");
        obj1 = t;
        if (P != -1)
        {
            if (P == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        {
            flag = ((aeu) (obj)).c("always-hide-title-bar");
        }
        obj1.e = flag;
        d(t.e);
        obj = ((aeu) (obj)).b("limit-touchzone");
        M = 0;
        if (!((String) (obj)).equals("prefTop25")) goto _L2; else goto _L1
_L1:
        M = -1;
_L4:
        super.m();
        return;
_L2:
        if (((String) (obj)).equals("prefBottom25"))
        {
            M = 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void q()
    {
        boolean flag1 = true;
        long l1 = aei.a().d.a("comic-since-prompt", 0L);
        aei.a().d.a("comic-since-prompt", String.valueOf(l1 + 1L));
        boolean flag = flag1;
        if (t.g != null)
        {
            t.b.b(true);
            boolean flag2 = a(t.g, false);
            if (!flag2)
            {
                t.g.h();
                t.g = null;
            }
            if (!flag2)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
        }
        if (flag)
        {
            removeDialog(123);
            showDialog(123);
        }
    }

    private boolean r()
    {
        return a.getVisibility() == 0;
    }

    private void s()
    {
        (new afs(this)).a(new android.content.DialogInterface.OnClickListener() {

            final Viewer a;

            public final void onClick(DialogInterface dialoginterface, int i1)
            {
                a.c();
            }

            
            {
                a = Viewer.this;
                super();
            }
        });
    }

    private void t()
    {
        b = b.a;
        String s1 = aei.a().d.b("view-mode");
        if ("prefFitVisible".equals(s1))
        {
            b = b.a;
        } else
        if ("prefFillVisible".equals(s1))
        {
            b = b.b;
        } else
        if ("prefFitWidth".equals(s1))
        {
            b = b.c;
        } else
        if ("prefFitHeight".equals(s1))
        {
            b = b.d;
        } else
        {
            b = b.e;
        }
        if (getResources().getConfiguration().orientation == 2 && aei.a().d.c("fit-width-on-rotate"))
        {
            b = b.c;
        }
    }

    private void u()
    {
        if (t.g == null) goto _L2; else goto _L1
_L1:
        if (!t.g.o() && !x()) goto _L4; else goto _L3
_L3:
        if (!t.g.p()) goto _L6; else goto _L5
_L5:
        aei.a().d.a("prefLastIncompleteComic", "");
_L4:
        return;
_L6:
        aei.a().d.a("prefLastIncompleteComic", (new StringBuilder("fldr_")).append(t.g.a).toString());
        return;
_L2:
        if (t.b != null && t.a != null && (t.b.a() || x()))
        {
            if (t.a.j.a >= t.a.d() - 1 && t.g == null)
            {
                aei.a().d.a("prefLastIncompleteComic", "");
                return;
            } else
            {
                aei.a().d.a("prefLastIncompleteComic", (new StringBuilder("cmc_")).append(t.b.a).toString());
                return;
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    private void v()
    {
label0:
        {
            if (u != null)
            {
                Object obj = k;
                Bitmap bitmap = u;
                obj = (BitmapDrawable)((ImageView) (obj)).getDrawable();
                boolean flag;
                if (obj != null)
                {
                    if (bitmap == ((BitmapDrawable) (obj)).getBitmap())
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    break label0;
                }
                u.recycle();
                u = null;
            }
            return;
        }
        Log.w("Viewer", "disposePreviousBitmap: Trying to recycle in use bitmap.");
        try
        {
            throw new Exception("Deleting Used Bitmap");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    private void w()
    {
        if (t.a != null && t.b != null && (t.b.a() || x()))
        {
            int i1 = t.a.j.a;
            if (t.b.a != 0 && t.b.j != i1)
            {
                t.b.j = i1;
                Object obj = aei.a().b;
                obj = t.b;
                obj.l = ahc.b();
                ContentValues contentvalues = new ContentValues();
                contentvalues.put("readtill", Integer.valueOf(((aeq) (obj)).j));
                contentvalues.put("lastread", Long.valueOf(((aeq) (obj)).l));
                aek.a(((aeq) (obj)), contentvalues);
            }
        }
    }

    private boolean x()
    {
        return ahc.b() - t.h >= 10000L;
    }

    final void a(int i1)
    {
        boolean flag = false;
        if (i1 == -1 || i1 == 0x7f0c00fd)
        {
            DrawerLayout drawerlayout = s;
            int j1;
            if (F)
            {
                j1 = 0;
            } else
            {
                j1 = 1;
            }
            drawerlayout.setDrawerLockMode(j1, 0x800003);
        }
        if (i1 == -1 || i1 == 0x7f0c00ff)
        {
            drawerlayout = s;
            if (G)
            {
                i1 = ((flag) ? 1 : 0);
            } else
            {
                i1 = 1;
            }
            drawerlayout.setDrawerLockMode(i1, 0x800005);
        }
    }

    public final void a(afa afa1, String s1, boolean flag)
    {
        byte byte1 = 8;
        t.a = afa1;
        t.f = null;
        if (t.a != null && t.a.c())
        {
            l.setText(t.b.c);
            t.a.b(0);
            byte byte0;
            if (t.b != null)
            {
                afa1 = aei.a().d.b("open-position");
                if (flag || "prefBookmark".equals(afa1))
                {
                    if (t.b.i > 0)
                    {
                        t.a.b(t.b.i - 1);
                    }
                } else
                if ("prefLastReadPage".equals(afa1) && t.b.j > 0)
                {
                    t.a.b(t.b.j);
                }
                if (t.e)
                {
                    afa1 = q;
                    if (t.e)
                    {
                        byte0 = 8;
                    } else
                    {
                        byte0 = 0;
                    }
                    afa1.setVisibility(byte0);
                    a(t.b.c, 1, 0);
                }
            }
            if (t.e)
            {
                afa1 = q;
                if (t.e)
                {
                    byte0 = byte1;
                } else
                {
                    byte0 = 0;
                }
                afa1.setVisibility(byte0);
                a(t.b.c, 1, 0);
            }
            a(0, 0);
            u();
            return;
        } else
        {
            if (t.a != null)
            {
                t.a.a();
                t.a = null;
            }
            ahf.a(getApplicationContext(), getString(0x7f0600e6, new Object[] {
                s1
            }));
            finish();
            return;
        }
    }

    public final void a(agg agg1, int i1, boolean flag)
    {
        v();
    }

    public final boolean a(float f1)
    {
        double d1 = f1;
        _cls5.a[b - 1];
        JVM INSTR tableswitch 1 5: default 48
    //                   1 127
    //                   2 127
    //                   3 148
    //                   4 195
    //                   5 242;
           goto _L1 _L2 _L2 _L3 _L4 _L5
_L1:
        int i1;
        int j1;
        i1 = 0;
        j1 = 0;
_L7:
        j1 = (int)Math.round((double)j1 * d1);
        i1 = (int)Math.round(d1 * (double)i1);
        j.scrollBy((j1 - k.getWidth()) / 2, (i1 - k.getHeight()) / 2);
        k.setLayoutParams(new android.widget.FrameLayout.LayoutParams(j1, i1));
        return false;
_L2:
        j1 = j.getWidth();
        i1 = j.getHeight();
        continue; /* Loop/switch isn't completed */
_L3:
        j1 = j.getWidth();
        i1 = Math.max(j.getHeight(), (U.getHeight() * j.getWidth()) / U.getWidth());
        continue; /* Loop/switch isn't completed */
_L4:
        j1 = Math.max(j.getWidth(), (U.getWidth() * j.getHeight()) / U.getHeight());
        i1 = j.getHeight();
        continue; /* Loop/switch isn't completed */
_L5:
        j1 = U.getWidth();
        i1 = U.getHeight();
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final boolean a(MotionEvent motionevent)
    {
        super.a(motionevent);
        if (r())
        {
            a.a();
        } else
        if (A && c(motionevent) && !n() && t != null && t.a != null)
        {
            if ((double)motionevent.getX() < (double)j.getWidth() * 0.5D)
            {
                c(true);
                return false;
            } else
            {
                b(true);
                return false;
            }
        }
        return false;
    }

    public final boolean b(int i1)
    {
        boolean flag;
        flag = true;
        if (!z)
        {
            return false;
        }
        if (n() || y && (double)g > 1.1000000000000001D) goto _L2; else goto _L1
_L1:
        TwoDScrollView twodscrollview = j;
        int j1;
        if (!twodscrollview.a)
        {
            j1 = twodscrollview.getScrollX();
            if (i1 == -1)
            {
                if (j1 > twodscrollview.getPaddingLeft() + 5)
                {
                    j1 = 1;
                } else
                {
                    j1 = 0;
                }
            } else
            if (j1 + (twodscrollview.getWidth() - twodscrollview.getPaddingRight() - twodscrollview.getPaddingLeft()) < twodscrollview.getChildAt(0).getWidth() - (twodscrollview.getPaddingRight() + 5))
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
        } else
        {
            j1 = 0;
        }
        if (j1 != 0) goto _L2; else goto _L3
_L3:
        j1 = 1;
_L4:
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        if (i1 == 1)
        {
            b(true);
        } else
        {
            if (i1 != -1)
            {
                break MISSING_BLOCK_LABEL_164;
            }
            c(true);
        }
_L5:
        return flag;
_L2:
        j1 = 0;
          goto _L4
        flag = false;
          goto _L5
    }

    public final boolean b(MotionEvent motionevent)
    {
        super.b(motionevent);
        return true;
    }

    final void c()
    {
        aeu aeu1 = aei.a().d;
        y = aeu1.c("no-swipe-on-zoom");
        C = aeu1.c("doubletap-for-page-fitting");
        z = aeu1.c("swipe-for-page-turn");
        A = aeu1.c("tap-for-page-turn");
        B = aeu1.c("press-and-hold-for-seek");
        D = aeu1.c("press-and-hold-for-menu");
        F = aeu1.c("left-edge-swipe-for-settings");
        G = aeu1.c("right-edge-swipe-for-tools");
        H = aeu1.c("left-press-and-hold-for-prefs");
        I = aeu1.c("right-press-and-hold-for-tools");
        E = aeu1.c("use-volume-controls");
        a(-1);
    }

    public final void c(int i1)
    {
        s.c(0x800005);
        d(i1);
    }

    public final void d()
    {
        if (t.a != null && t.a != null)
        {
            k.post(new Runnable() {

                final Viewer a;

                public final void run()
                {
                    Viewer.b(a);
                }

            
            {
                a = Viewer.this;
                super();
            }
            });
        }
        j.setOnLayoutListener(null);
        if (!aei.a().d.a("app-state-flags", 1))
        {
            s();
            aei.a().d.a(1);
        }
    }

    public final boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag = true;
        if (!E) goto _L2; else goto _L1
_L1:
        int i1 = keyevent.getAction();
        keyevent.getKeyCode();
        JVM INSTR tableswitch 24 25: default 40
    //                   24 48
    //                   25 75;
           goto _L2 _L3 _L4
_L2:
        flag = super.dispatchKeyEvent(keyevent);
_L6:
        return flag;
_L3:
        if (i1 == 0)
        {
            if (w)
            {
                b(true);
                return true;
            } else
            {
                c(true);
                return true;
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (i1 == 0)
        {
            if (w)
            {
                c(true);
                return true;
            } else
            {
                b(true);
                return true;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void e()
    {
        if (t.a != null)
        {
            t.a.a();
            t.a = null;
        }
        finish();
    }

    protected final Point f()
    {
        Point point = new Point(j.getTop(), j.getBottom());
        if (M == -1)
        {
            point.y = point.y / 4;
        } else
        if (M == 1)
        {
            point.x = point.y - point.y / 4;
            return point;
        }
        return point;
    }

    public final void g()
    {
        p();
        a(0, 0);
    }

    public final boolean h()
    {
        return t.c;
    }

    public final void i()
    {
        c();
    }

    protected final void onActivityResult(int i1, int j1, Intent intent)
    {
        if (i1 == 1 && j1 == -1)
        {
            g();
        }
    }

    public final void onBackPressed()
    {
        if (r())
        {
            a.a();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public final boolean onContextItemSelected(MenuItem menuitem)
    {
        boolean flag = true;
        menuitem.getItemId();
        JVM INSTR tableswitch 2131493185 2131493186: default 32
    //                   2131493185 40
    //                   2131493186 95;
           goto _L1 _L2 _L3
_L1:
        flag = super.onContextItemSelected(menuitem);
_L5:
        return flag;
_L2:
        if (t.b == null) goto _L5; else goto _L4
_L4:
        t.b.i = t.a.j.a + 1;
        menuitem = aei.a().b;
        aek.c(t.b);
        return true;
_L3:
        try
        {
            WallpaperManager.getInstance(getApplicationContext()).setBitmap(U);
            ahf.a(ComicReaderApp.a(), 0x7f060263);
        }
        // Misplaced declaration of an exception variable
        catch (MenuItem menuitem)
        {
            ahf.a(ComicReaderApp.a(), 0x7f0600e1);
            return true;
        }
        return true;
    }

    public final void onCreate(Bundle bundle)
    {
        boolean flag2 = false;
        super.onCreate(bundle);
        O = afk.a(this);
        setContentView(0x7f03005a);
        k = (ComicImageView)findViewById(0x7f0c00fc);
        k.b = this;
        j = (TwoDScrollView)findViewById(0x7f0c00fb);
        l = (TextView)findViewById(0x7f0c0044);
        m = (TextView)findViewById(0x7f0c00fa);
        q = (LinearLayout)findViewById(0x7f0c00f9);
        a = (PageChooserView)findViewById(0x7f0c00d5);
        s = (DrawerLayout)findViewById(0x7f0c00b9);
        s.setDrawerShadow(0x7f020075, 0x800003);
        s.setDrawerShadow(0x7f020075, 0x800005);
        s.setDrawerTitle(0x800005, getString(0x7f060241));
        bundle = new age(this, (ListView)s.findViewById(0x7f0c00fe), this);
        agf agf1 = new agf(this, (ListView)s.findViewById(0x7f0c0100), this);
        s.setDrawerListener(new android.support.v4.widget.DrawerLayout.g(bundle, agf1) {

            final age a;
            final agf b;
            final Viewer c;

            public final void onDrawerClosed(View view)
            {
                int l1 = 0x7f0c00fd;
                Viewer viewer = c;
                if (view != Viewer.a(c).findViewById(0x7f0c00fd))
                {
                    l1 = 0x7f0c00ff;
                }
                viewer.a(l1);
            }

            public final void onDrawerOpened(View view)
            {
                if (Viewer.a(c).b())
                {
                    agw.a(a.b);
                } else
                {
                    b.a();
                }
                Viewer.a(c).setDrawerLockMode(0, view);
            }

            
            {
                c = Viewer.this;
                a = age1;
                b = agf1;
                super();
            }
        });
        j.setOnTouchListener(this);
        j.setOnLayoutListener(this);
        N = new afl(this);
        t = (a)getLastCustomNonConfigurationInstance();
        if (t == null || t.a == null && t.f == null)
        {
            t = new a();
            t.h = ahc.b();
            t.e = aei.a().d.c("always-hide-title-bar");
            bundle = getIntent();
            int i1 = bundle.getIntExtra("comicid", -1);
            int k1 = bundle.getIntExtra("seriesid", -1);
            String s1 = bundle.getStringExtra("comicpath");
            boolean flag3 = bundle.getBooleanExtra("prefBookmark", false);
            boolean flag;
            if (i1 > 0)
            {
                t.b = aei.a().b.a(i1);
                flag = flag2;
                if (t.b != null)
                {
                    a(t.b, flag3);
                    flag = true;
                }
            } else
            if (k1 != -1)
            {
                t.g = aei.a().c.a(k1);
                flag = flag2;
                if (t.g != null)
                {
                    flag = a(t.g, false);
                }
            } else
            {
                flag = flag2;
                if (s1 != null)
                {
                    t.g = aei.a().c.a(s1);
                    if (t.g != null)
                    {
                        flag = a(t.g, false);
                    } else
                    {
                        t.b = aei.a().b.b(s1);
                        flag = flag2;
                        if (t.b != null)
                        {
                            a(t.b, flag3);
                            flag = true;
                        }
                    }
                }
            }
            if (!flag)
            {
                ahf.a(ComicReaderApp.a(), 0x7f0600e5);
                finish();
            }
        } else
        {
            O.e();
            if (t.f != null)
            {
                t.f.a(this, this);
            } else
            {
                l.setText(t.b.c);
                boolean flag1 = aei.a().d.c("always-hide-title-bar");
                int j1;
                if (t.e != flag1)
                {
                    if (t.e)
                    {
                        j1 = 0;
                    } else
                    {
                        j1 = 1;
                    }
                } else
                {
                    j1 = -1;
                }
                P = j1;
            }
        }
        t();
    }

    public final void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        getMenuInflater().inflate(0x7f0d0010, contextmenu);
        contextmenu.setHeaderTitle(0x7f06016a);
        contextmenu.findItem(0x7f0c0142).setVisible(agv.a());
        contextmenu = contextmenu.findItem(0x7f0c0141);
        boolean flag;
        if (t.b != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        contextmenu.setVisible(flag);
    }

    protected final Dialog onCreateDialog(int i1)
    {
        i1;
        JVM INSTR tableswitch 123 123: default 20
    //                   123 22;
           goto _L1 _L2
_L1:
        return null;
_L2:
        Object obj;
        Object obj1;
        Object obj2;
        obj1 = new ArrayList();
        obj = new ArrayList();
        obj2 = aei.a().b.f();
        if (obj2 == null || ((List) (obj2)).size() <= 0) goto _L4; else goto _L3
_L3:
        int j1;
        boolean flag;
        ael.a(((List) (obj2)), "prefSortByFilePathEx");
        flag = agw.a();
        obj2 = ((List) (obj2)).iterator();
        j1 = 0;
        i1 = 0;
_L12:
        int k1;
        int i2;
        i2 = j1;
        k1 = i1;
        if (!((Iterator) (obj2)).hasNext()) goto _L6; else goto _L5
_L5:
        aeq aeq1 = (aeq)((Iterator) (obj2)).next();
        if (t.b == aeq1) goto _L8; else goto _L7
_L7:
        if (flag && agw.a(aeq1)) goto _L10; else goto _L9
_L9:
        if (!aeq1.h.c(1))
        {
            ((ArrayList) (obj1)).add(aeq1);
        }
        if (!aeq1.h.c(2)) goto _L10; else goto _L11
_L11:
        ((ArrayList) (obj)).add(aeq1);
          goto _L12
_L8:
        j1 = ((ArrayList) (obj1)).size();
        i1 = ((ArrayList) (obj)).size();
_L13:
        k1 = j1;
        j1 = i1;
        i1 = k1;
          goto _L12
_L4:
        i2 = 0;
        k1 = 0;
_L6:
        if (((ArrayList) (obj)).size() > 0)
        {
            ArrayList arraylist;
            CharSequence acharsequence[];
            CheckBox checkbox;
            if (((ArrayList) (obj)).size() <= i2)
            {
                i2 = 0;
            }
            obj = (aeq)((ArrayList) (obj)).get(i2);
        } else
        {
            obj = null;
        }
        if (((ArrayList) (obj1)).size() > 0)
        {
            if (((ArrayList) (obj1)).size() <= k1)
            {
                k1 = 0;
            }
            obj1 = (aeq)((ArrayList) (obj1)).get(k1);
        } else
        {
            obj1 = null;
        }
        if (obj != null || obj1 != null)
        {
            arraylist = new ArrayList();
            if (obj != null)
            {
                arraylist.add((new StringBuilder()).append(R).append("\n> ").append(((aeq) (obj)).c).toString());
            }
            if (obj1 != null)
            {
                arraylist.add((new StringBuilder()).append(S).append("\n> ").append(((aeq) (obj1)).c).toString());
            }
            arraylist.add(T);
            acharsequence = new CharSequence[1];
            checkbox = new CheckBox(this);
            checkbox.setText(0x7f060143);
            checkbox.setChecked(true);
            return (new android.app.AlertDialog.Builder(this)).setTitle(0x7f060130).setView(checkbox).setSingleChoiceItems((CharSequence[])arraylist.toArray(acharsequence), -1, new android.content.DialogInterface.OnClickListener(checkbox, arraylist, ((aeq) (obj)), ((aeq) (obj1))) {

                final CheckBox a;
                final ArrayList b;
                final aeq c;
                final aeq d;
                final Viewer e;

                public final void onClick(DialogInterface dialoginterface, int j2)
                {
                    dialoginterface.dismiss();
                    if (a.isChecked() && Viewer.f(e).b != null)
                    {
                        Viewer.f(e).b.b(true);
                        ahf.a(e, e.getString(0x7f06008c, new Object[] {
                            Viewer.f(e).b.c
                        }));
                    }
                    dialoginterface = ((CharSequence)b.get(j2)).toString();
                    if (dialoginterface.equals(Viewer.j()))
                    {
                        if (ComicReaderApp.d() != null)
                        {
                            Viewer.i(e).postDelayed(new Runnable(this) {

                                final _cls4 a;

                                public final void run()
                                {
label0:
                                    {
                                        Catalog catalog = ComicReaderApp.d();
                                        if (!agv.g())
                                        {
                                            android.app.AlertDialog.Builder builder;
                                            boolean flag;
                                            if (!agv.a())
                                            {
                                                flag = true;
                                            } else
                                            {
                                                flag = false;
                                            }
                                            if (!flag)
                                            {
                                                break label0;
                                            }
                                        }
                                        if (aei.a().d.c("should-prompt-again") && aei.a().d.a("comic-since-prompt", 0L) > 15L)
                                        {
                                            aei.a().d.a("comic-since-prompt", "0");
                                            builder = new android.app.AlertDialog.Builder(catalog);
                                            builder.setTitle(0x7f0601cb).setMessage(catalog.getString(0x7f0601ca)).setCancelable(true).setPositiveButton(0x1040013, new afw._cls4(catalog)).setNeutralButton(0x7f060132, new afw._cls3()).setNegativeButton(0x7f06014d, new afw._cls2());
                                            builder.create().show();
                                        }
                                    }
                                }

            
            {
                a = _pcls4;
                super();
            }
                            }, 50L);
                        }
                        e.finish();
                    } else
                    {
                        if (dialoginterface.startsWith(Viewer.k()))
                        {
                            Viewer.a(e, c);
                            return;
                        }
                        if (dialoginterface.startsWith(Viewer.l()))
                        {
                            Viewer.a(e, d);
                            return;
                        }
                    }
                }

            
            {
                e = Viewer.this;
                a = checkbox;
                b = arraylist;
                c = aeq1;
                d = aeq2;
                super();
            }
            }).create();
        }
          goto _L1
_L10:
        int l1 = i1;
        i1 = j1;
        j1 = l1;
          goto _L13
    }

    public final boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d0012, menu);
        return true;
    }

    protected final void onDestroy()
    {
        if (t.f != null)
        {
            t.f.a(null, null);
        }
        N.a();
        ComicImageView comicimageview = k;
        comicimageview.removeCallbacks(comicimageview);
        a(v);
        super.onDestroy();
    }

    public final boolean onDoubleTap(MotionEvent motionevent)
    {
        if (r())
        {
            a.a();
            return false;
        }
        if (!C)
        {
            return false;
        }
        if (!c(motionevent))
        {
            return false;
        }
        b = b.a()[((b - 1) + 1) % 5];
        motionevent = "prefFitVisible";
        _cls5.a[b - 1];
        JVM INSTR tableswitch 1 5: default 100
    //                   1 142
    //                   2 149
    //                   3 156
    //                   4 163
    //                   5 170;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        aei.a().d.a("view-mode", motionevent);
        a(0, 0);
        a(agw.a(aei.a().d.b("view-mode")), 0, 0);
        return true;
_L2:
        motionevent = "prefFitVisible";
        continue; /* Loop/switch isn't completed */
_L3:
        motionevent = "prefFillVisible";
        continue; /* Loop/switch isn't completed */
_L4:
        motionevent = "prefFitWidth";
        continue; /* Loop/switch isn't completed */
_L5:
        motionevent = "prefFitHeight";
        continue; /* Loop/switch isn't completed */
_L6:
        motionevent = "prefOriginalSize";
        if (true) goto _L1; else goto _L7
_L7:
    }

    public final void onLongPress(MotionEvent motionevent)
    {
        if (!r()) goto _L2; else goto _L1
_L1:
        a.a();
_L4:
        return;
_L2:
        if (n())
        {
            continue; /* Loop/switch isn't completed */
        }
        super.onLongPress(motionevent);
        if (motionevent.getY() < (float)(j.getHeight() - Math.max(100, j.getHeight() / 7)))
        {
            break; /* Loop/switch isn't completed */
        }
        if (B)
        {
            byte byte0;
            if ((double)motionevent.getX() < (double)j.getWidth() * 0.5D)
            {
                byte0 = -1;
            } else
            {
                byte0 = 1;
            }
            motionevent = new Handler();
            motionevent.post(new Runnable(byte0, motionevent) {

                final int a;
                final Handler b;
                final Viewer c;

                public final void run()
                {
                    boolean flag;
                    if (a == 1)
                    {
                        flag = Viewer.c(c);
                    } else
                    {
                        flag = Viewer.d(c);
                    }
                    if (flag && Viewer.e(c))
                    {
                        b.postDelayed(this, 50L);
                        return;
                    } else
                    {
                        b.removeMessages(0, this);
                        return;
                    }
                }

            
            {
                c = Viewer.this;
                a = i1;
                b = handler;
                super();
            }
            });
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if ((double)motionevent.getX() < (double)j.getWidth() * 0.25D && H)
        {
            s.b(0x800003);
            return;
        }
        if ((double)motionevent.getX() > (double)j.getWidth() * 0.75D && I)
        {
            s.b(0x800005);
            return;
        }
        if (D && O != null)
        {
            O.d();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag1 = d(menuitem.getItemId());
        boolean flag = flag1;
        if (!flag1)
        {
            flag = super.onOptionsItemSelected(menuitem);
        }
        return flag;
    }

    protected final void onPause()
    {
        if (r != null)
        {
            r.cancel();
            r = null;
        }
        k.a();
        boolean flag = aei.a().d.c("always-hide-title-bar");
        ComicImageView comicimageview;
        int i1;
        if (t.e != flag)
        {
            if (t.e)
            {
                i1 = 0;
            } else
            {
                i1 = 1;
            }
        } else
        {
            i1 = -1;
        }
        P = i1;
        w();
        u();
        if (t.g != null)
        {
            t.g.g = t.b.a;
            aen aen1 = aei.a().c;
            aen.c(t.g);
        }
        System.gc();
        N.a();
        comicimageview = k;
        comicimageview.removeCallbacks(comicimageview);
        super.onPause();
    }

    public final boolean onPrepareOptionsMenu(Menu menu)
    {
        MenuItem menuitem = menu.findItem(0x7f0c0149);
        int i1;
        if (t.e)
        {
            i1 = 0x7f060227;
        } else
        {
            i1 = 0x7f06011a;
        }
        menuitem.setTitle(i1);
        menu.findItem(0x7f0c014c).setVisible(agv.a());
        if (t.b == null)
        {
            menu.findItem(0x7f0c0141).setVisible(false);
        }
        menu = menu.findItem(0x7f0c0147);
        if (t.c)
        {
            i1 = 0x7f0601ea;
        } else
        {
            i1 = 0x7f06020d;
        }
        menu.setTitle(i1);
        if (t.c)
        {
            i1 = 0x7f020014;
        } else
        {
            i1 = 0x7f020018;
        }
        menu.setIcon(i1);
        return true;
    }

    protected final void onResume()
    {
        super.onResume();
        c();
        p();
        Object obj = N;
        if (!((afl) (obj)).b)
        {
            int i1 = Integer.parseInt(aei.a().d.b("brightness-level"));
            if (i1 > 0)
            {
                ((afl) (obj)).b();
                afl.a(((afl) (obj)).a, i1);
                obj.b = true;
            }
        }
        obj = k;
        obj.c = ahc.b();
        ((ComicImageView) (obj)).setKeepScreenOn(true);
        ((ComicImageView) (obj)).postDelayed(((Runnable) (obj)), 60000L);
        O.e();
    }

    public final Object onRetainCustomNonConfigurationInstance()
    {
        v = true;
        return t;
    }

    public final void onWindowFocusChanged(boolean flag)
    {
        if (flag)
        {
            O.e();
        }
        super.onWindowFocusChanged(flag);
    }

}
