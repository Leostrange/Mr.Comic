// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.BufferedInputStream;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import meanlabs.comicreader.ComicReaderApp;

public final class aef extends acs
{

    zl b;
    final Lock c = new ReentrantLock();

    public aef(aev aev1)
    {
        super(aev1);
    }

    public static int a(aev aev1)
    {
        int i = 1;
        boolean flag;
        try
        {
            flag = a(aev1.d, a(aev1.e, aev1.f, aev1.g)).g();
        }
        // Misplaced declaration of an exception variable
        catch (aev aev1)
        {
            agt.a(aev1);
            return 3;
        }
        // Misplaced declaration of an exception variable
        catch (aev aev1)
        {
            agt.a(aev1);
            return 1;
        }
        // Misplaced declaration of an exception variable
        catch (aev aev1)
        {
            agt.a(aev1);
            return 2;
        }
        // Misplaced declaration of an exception variable
        catch (aev aev1)
        {
            agt.a(aev1);
            return 2;
        }
        if (flag)
        {
            i = 0;
        }
        return i;
    }

    private static aar a(String s, zl zl1)
    {
        return new aar(s, zl1);
    }

    private static String a(String s)
    {
        s = s.trim();
        if (s != null && s.length() > 0)
        {
            return s;
        } else
        {
            return null;
        }
    }

    private static zl a(String s, String s1, String s2)
    {
        return new zl(a(s), a(s1), a(s2));
    }

    private zl o()
    {
        c.lock();
        if (b == null)
        {
            b = a(a.e, a.f, a.g);
        }
        c.unlock();
        return b;
    }

    public final List a(adc adc)
    {
        aar aaar[];
        aaar = aeh.a(((aee)adc).a);
        adc = new ArrayList(aaar.length);
        int k = aaar.length;
        int i = 0;
_L2:
        Object obj;
        obj = adc;
        if (i >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        adc.add(new aee(aaar[i], a.d));
        i++;
        if (true) goto _L2; else goto _L1
        obj;
        adc = null;
_L4:
        agt.a(((Exception) (obj)));
        obj = adc;
_L1:
        return ((List) (obj));
        obj;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final boolean a(String s, String s1, acy acy1)
    {
        boolean flag;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        flag2 = false;
        flag4 = false;
        flag3 = false;
        flag = flag2;
        agt.a("SMBService", (new StringBuilder("Downloading File: ")).append(s).toString());
        flag = flag2;
        aar aar1 = a(s, o());
        flag = flag2;
        StringBuilder stringbuilder = new StringBuilder("File can be read? ");
        flag = flag2;
        boolean flag1;
        if (aar1.g())
        {
            s = "true";
        } else
        {
            s = "false";
        }
        flag = flag2;
        agt.a("SMBService", stringbuilder.append(s).toString());
        flag = flag2;
        stringbuilder = new StringBuilder("Input allowed? ");
        flag = flag2;
        if (aar1.getDoInput())
        {
            s = "true";
        } else
        {
            s = "false";
        }
        flag = flag2;
        agt.a("SMBService", stringbuilder.append(s).toString());
        flag = flag2;
        flag1 = flag4;
        if (!aar1.f())
        {
            break MISSING_BLOCK_LABEL_282;
        }
        flag = flag2;
        flag1 = flag4;
        if (!aar1.g())
        {
            break MISSING_BLOCK_LABEL_282;
        }
        flag = flag2;
        s = new BufferedInputStream(aar1.getInputStream());
        flag = flag2;
        agt.a("SMBService", "Opened Stream for file");
        flag = flag2;
        s1 = agz.b(s1);
        flag1 = flag3;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_235;
        }
        flag = flag2;
        flag1 = aha.a(s, s1, acy1, 0x200000);
        if (!flag1) goto _L2; else goto _L1
_L1:
        flag = flag1;
        s = acy.a.b;
_L4:
        flag = flag1;
        acy1.a(s);
        return flag1;
_L2:
        flag = flag1;
        s = acy.a.c;
        if (true) goto _L4; else goto _L3
_L3:
        s;
        agt.a(s);
        flag1 = flag;
        return flag1;
    }

    public final String b()
    {
        return "smb";
    }

    public final String c()
    {
        return ComicReaderApp.a().getString(0x7f060047);
    }

    public final int d()
    {
        return 0x7f0200a7;
    }

    public final String e()
    {
        return "";
    }

    public final boolean f()
    {
        boolean flag;
        try
        {
            flag = a(a.d, o()).g();
        }
        catch (Exception exception)
        {
            agt.a(exception);
            return false;
        }
        return flag;
    }

    public final String g()
    {
        return (new StringBuilder("smb/")).append(a.c.replace("smb://", "")).toString();
    }

    public final adc j()
    {
        Object obj;
        obj = a(a.d, o());
        if (!((aar) (obj)).g())
        {
            break MISSING_BLOCK_LABEL_45;
        }
        obj = new aee(((aar) (obj)), a.d);
        return ((adc) (obj));
        Exception exception;
        exception;
        agt.a(exception);
        return null;
    }

    public final String m()
    {
        return aei.a().d.b("smb-download-newly-added-files");
    }

    public final boolean n()
    {
        return "prefCreateThumbs".equals(aei.a().d.b("create-smb-sthumbnails"));
    }
}
