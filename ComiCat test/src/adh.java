// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.util.ArrayList;
import meanlabs.comicreader.cloud.DownloaderService;

public final class adh
{

    public static File a(String s, String s1, long l, aev aev1, boolean flag, acy acy)
    {
        Object obj;
        String s2 = ago.b((new StringBuilder()).append(aev1.b).append(s1).toString());
        obj = agv.a(s1);
        s1 = s2;
        if (obj != null)
        {
            s1 = s2;
            if (((String) (obj)).length() > 0)
            {
                s1 = (new StringBuilder()).append(s2).append(".tmp.").append(((String) (obj))).toString();
            }
        }
        obj = adi.a().a(s1, l);
        if (obj == null)
        {
            acs acs1 = act.b().a(aev1.a);
            if (acs1 != null && acs1.f())
            {
                aev1 = new File(agp.b(adi.a().a.getAbsolutePath(), s1));
                s1 = adi.a().a(s1);
                if (acy == null)
                {
                    acy = new acy() {

                        public final void a(int i, int j)
                        {
                        }

                        public final void a(acw acw, String s3)
                        {
                        }

                        public final void a(acy.a a1)
                        {
                        }

                        public final boolean a()
                        {
                            return true;
                        }

                    };
                }
                if (acs1.a(s, s1, acy))
                {
                    s1 = new File(s1);
                    s = s1;
                    if (s1.renameTo(aev1))
                    {
                        s = aev1;
                    }
                    if (!flag)
                    {
                        synchronized (adi.a())
                        {
                            s1.a(adi.c - 1);
                            ((adi) (s1)).b.add(s);
                        }
                    }
                    return s;
                } else
                {
                    agz.a(new File(s1));
                    return null;
                }
            }
        }
        break MISSING_BLOCK_LABEL_253;
        s;
        s1;
        JVM INSTR monitorexit ;
        throw s;
        return ((File) (obj));
    }

    public static void a(aeq aeq1, boolean flag, boolean flag1, aek aek1)
    {
        boolean flag2;
        flag2 = false;
        if (aek1 == null)
        {
            aek1 = aei.a().b;
        }
        if (!aeq1.g()) goto _L2; else goto _L1
_L1:
        if (flag1) goto _L4; else goto _L3
_L3:
        aeq1.h.a(8, false);
        aeq1.h.a(16, false);
        if (!flag)
        {
            aeq1.e = "";
            aeq1.f = "";
            aeq1.g = -1;
        }
        aek.a(aeq1);
_L6:
        if (flag2)
        {
            aek1.g(aeq1);
        }
        return;
_L4:
        agz.a(aeq1.d);
_L2:
        flag2 = true;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static boolean a(aeq aeq1)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (aeq1.d())
        {
            flag = flag1;
            if (!aeq1.g())
            {
                adg adg1 = adg.a(aeq1.f);
                flag = flag1;
                if (adg1 != null)
                {
                    aer.a a1 = aei.a().f.a(adg1.a);
                    if (a1 == null)
                    {
                        flag = DownloaderService.c.a(adg1.a, aeq1.g, aeq1.e, (int)adg1.b, "", aeq1.a, 256);
                    } else
                    {
                        aeq1 = DownloaderService.c;
                        int i = a1.a;
                        aeq1 = ((DownloaderService) (aeq1)).b.a.b(i);
                        flag = flag1;
                        if (aeq1 != null)
                        {
                            if (a1.a())
                            {
                                DownloaderService.c.b(aeq1);
                                return false;
                            }
                            flag = flag1;
                            if (a1.c())
                            {
                                DownloaderService.d(aeq1);
                                return false;
                            }
                        }
                    }
                }
            }
        }
        return flag;
    }
}
