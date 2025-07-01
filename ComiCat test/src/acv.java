// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import java.io.File;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.cloud.DownloaderService;

public class acv
    implements acy
{
    public static final class a extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        public static final int d;
        public static final int e;
        public static final int f;
        public static final int g;
        public static final int h;
        private static final int i[];

        public static int[] a()
        {
            return (int[])i.clone();
        }

        static 
        {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = 6;
            g = 7;
            h = 8;
            i = (new int[] {
                a, b, c, d, e, f, g, h
            });
        }
    }


    public aer.a a;
    public acs b;
    public String c;
    public int d;
    public int e;
    public String f;
    public int g;
    public File h;
    public File i;
    public adf j;
    private adb k;

    public acv(aer.a a1)
    {
        g = 0;
        a = a1;
        if (a == null) goto _L2; else goto _L1
_L1:
        b = act.b().a(a.c);
        d = 0;
        j = DownloaderService.a();
        e = a.f;
        if (!a1.a()) goto _L4; else goto _L3
_L3:
        e = a.d;
_L6:
        c = agv.b(a.d);
        k();
_L2:
        return;
_L4:
        if (a1.c())
        {
            e = a.e;
            f = "";
        } else
        if (a1.b())
        {
            e = a.c;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void k()
    {
        act.b();
        h = act.c(a.a);
        if (h.exists() && b())
        {
            agz.a(h);
        }
        d = (int)h.length();
    }

    public final void a(int l)
    {
        e = l;
        j.a(a.a, e);
    }

    public final void a(int l, int i1)
    {
        d = l;
        j.a(a.a, l, i1);
        if (!a())
        {
            k.cancel(true);
        }
    }

    public final void a(acw acw1, String s)
    {
        agt.a("Download", (new StringBuilder("Error Downloading File: ")).append(a.d).append(", Error: ").append(s).toString());
        f = s;
        int i1 = a.e;
        int l = i1;
        if (acw1.a())
        {
            l = i1;
            if (g < 2)
            {
                g = g + 1;
                l = a.f;
            }
        }
        if (e == a.g || e == a.h)
        {
            a(l);
        }
        if (!acw1.a())
        {
            a.b(true);
            h();
        }
    }

    public final void a(acy.a a1)
    {
        if (a1 == acy.a.b)
        {
            a((int)h.length(), 0);
            i();
            h();
        }
    }

    public final boolean a()
    {
        return e == a.g || e == a.h;
    }

    public final boolean b()
    {
        return b != null;
    }

    final void c()
    {
label0:
        {
            if (b() && f())
            {
                a(a.g);
                k();
                if ((long)(a.e - d) <= ahc.a(h.getParentFile()))
                {
                    break label0;
                }
                a(acw.i, ComicReaderApp.a().getString(0x7f06012c));
            }
            return;
        }
        k = new adb(this, this);
        if (agv.h())
        {
            k.executeOnExecutor(adb.THREAD_POOL_EXECUTOR, new aer.a[] {
                a
            });
            return;
        } else
        {
            k.execute(new aer.a[] {
                a
            });
            return;
        }
    }

    final void d()
    {
        if (e == a.g)
        {
            a(a.f);
        }
    }

    public final boolean e()
    {
        return e == a.g;
    }

    public final boolean f()
    {
        return e == a.f;
    }

    public final boolean g()
    {
        return e == a.c || e == a.h || e == a.e;
    }

    public final void h()
    {
        aer aer1 = aei.a().f;
        aer.a(a);
    }

    public void i()
    {
        boolean flag;
        a(a.h);
        j();
        flag = agp.a(h, i);
        if (!flag)
        {
            a(acw.g, ComicReaderApp.a().getString(0x7f0600e9));
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        if (a.h == 0)
        {
            aeq aeq1 = aei.a().b.b(a.d);
            if (aeq1 != null && aeq1.g == b.a() && aeq1.d())
            {
                a.h = aeq1.a;
            }
        }
        if (a.h == 0) goto _L4; else goto _L3
_L3:
        Object obj;
        Object obj2;
        int l;
        obj2 = i;
        l = a.h;
        obj = aei.a().b.a(l);
        if (obj == null || !((File) (obj2)).exists()) goto _L6; else goto _L5
_L5:
        afa afa1 = new afa(((File) (obj2)), false);
        if (!afa1.b() || afa1.d() == 0 || !agm.a(afa1, l)) goto _L6; else goto _L7
_L7:
        ((aeq) (obj)).h.a(16);
        obj.b = afa1.d();
        obj.d = ((File) (obj2)).getPath();
        obj2 = aei.a().b;
        boolean flag1 = aek.e(((aeq) (obj)));
        flag = flag1;
        if (flag1)
        {
            obj = ael.b(((aeq) (obj)));
            flag = flag1;
            if (obj != null)
            {
                agm.a(((aem) (obj)), 0, 0);
                flag = flag1;
            }
        }
_L11:
        if (!flag) goto _L9; else goto _L8
_L8:
        a(a.c);
        Object obj1 = ComicReaderApp.a().getString(0x7f06007c);
        Object obj3 = ComicReaderApp.a().getString(0x7f0600c9, new Object[] {
            c
        });
        Object obj4 = aei.a().d.b("notify");
        if (!"prefNoNotification".equals(obj4))
        {
            flag = "prefNotifyTextAndSound".equals(obj4);
            Object obj5 = ComicReaderApp.a();
            obj4 = (NotificationManager)((Context) (obj5)).getSystemService("notification");
            if (obj4 != null)
            {
                Object obj6 = PendingIntent.getActivity(((Context) (obj5)), 0, new Intent(), 0x10000000);
                obj1 = (new android.support.v4.app.NotificationCompat.Builder(((Context) (obj5)))).setContentTitle(((CharSequence) (obj1))).setContentText(((CharSequence) (obj3))).setSmallIcon(0x7f02008f).setContentIntent(((PendingIntent) (obj6))).setAutoCancel(true).build();
                if (flag)
                {
                    obj1.defaults = ((Notification) (obj1)).defaults | 4;
                }
                byte byte0;
                int i1;
                if (flag)
                {
                    byte0 = 2;
                } else
                {
                    byte0 = 1;
                }
                ((NotificationManager) (obj4)).notify(byte0, ((Notification) (obj1)));
            }
        }
        aei.a().h.a(a.b, a.c, 1);
        a.f.a(2, true);
        ael.b();
_L2:
        return;
_L4:
        obj1 = i;
        i1 = b.a();
        obj3 = a;
        obj4 = agm.a(((File) (obj1)), afa.a(((File) (obj1)).getName()), false, i1, null, ((aer.a) (obj3)));
        if (((agm.a) (obj4)).a == agm.c.a)
        {
            obj3 = ((File) (obj1)).getParent();
            obj5 = act.b().a(i1);
            obj1 = obj3;
            if (obj5 != null)
            {
                obj1 = ((String) (obj3)).replace(((acs) (obj5)).h(), "");
            }
            if (aei.a().c.a(((String) (obj1))) == null)
            {
                obj3 = aei.a().c;
                if (((aen) (obj3)).a(((String) (obj1))) != null)
                {
                    byte0 = 1;
                } else
                {
                    byte0 = 0;
                }
                if (byte0 == 0)
                {
                    obj5 = aem.a(((String) (obj1)));
                    obj5.c = i1;
                    obj6 = ((aem) (obj5)).f;
                    if (i1 != -1)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    ((aet) (obj6)).a(2, flag);
                    obj5.d = 1;
                    ((aen) (obj3)).a(((aem) (obj5)));
                }
            }
            agm.a(((String) (obj1)), 1);
        }
        if (((agm.a) (obj4)).a == agm.c.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        a(acw.d, ComicReaderApp.a().getString(0x7f060122));
        a.b(true);
        return;
_L6:
        flag = false;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public final boolean j()
    {
        i = new File(agp.b(b.h(), a.d));
        File file = i.getParentFile();
        return file.exists() || file.mkdirs();
    }
}
