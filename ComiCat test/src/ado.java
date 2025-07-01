// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class ado
{

    im a;

    public ado(aev aev1)
    {
        if (aev1 != null)
        {
            b(aev1.h);
        }
    }

    public static jl c()
    {
        jl jl;
        try
        {
            jl = iy.a("").a("").b("/").a();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return jl;
    }

    public final List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        if (a())
        {
            try
            {
                s = ((in) (a)).c.a(new jb(s));
                do
                {
                    arraylist.addAll(s.a());
                    if (!s.c())
                    {
                        break;
                    }
                    s = ((in) (a)).c.a(new jc(s.b()));
                } while (true);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
        }
        return arraylist;
    }

    public final boolean a()
    {
        return a != null;
    }

    public final boolean a(String s, String s1, acy acy1)
    {
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = flag1;
        if (!a()) goto _L2; else goto _L1
_L1:
        String s2;
        String s3;
        s3 = null;
        s2 = null;
        s1 = agz.b(s1);
        if (s1 == null) goto _L4; else goto _L3
_L3:
        s2 = s1;
        s3 = s1;
        s = ((in) (a)).c.a(new it(s), Collections.emptyList());
        s2 = s1;
        s3 = s1;
        if (!((hi) (s)).b) goto _L6; else goto _L5
_L5:
        s2 = s1;
        s3 = s1;
        try
        {
            throw new IllegalStateException("This downloader is already closed.");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s3 = s2;
        }
        finally
        {
            if (s3 == null) goto _L0; else goto _L0
        }
        s.printStackTrace();
        s3 = s2;
        acy1.a(acw.c, agv.a(s));
        flag = flag1;
        if (s2 != null)
        {
            try
            {
                s2.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return false;
            }
            flag = flag1;
        }
_L2:
        return flag;
_L6:
        s2 = s1;
        s3 = s1;
        aha.a(((hi) (s)).a, s1, acy1);
_L4:
        flag = true;
        if (s1 == null) goto _L2; else goto _L7
_L7:
        try
        {
            s1.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return true;
        }
        return true;
        try
        {
            s3.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
        }
        throw s;
    }

    public final kb b()
    {
        kb kb;
        try
        {
            kb = ((in) (a)).d.a();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return kb;
    }

    public final void b(String s)
    {
        if (s != null && s.length() > 0)
        {
            a = new im(new hl(ComicReaderApp.a().getString(0x7f060051)), s);
        }
    }

    // Unreferenced inner class ado$1

/* anonymous class */
    final class _cls1
        implements Runnable
    {

        final ado a;

        public final void run()
        {
            ip ip1 = ((in) (a.a)).b;
            try
            {
                ip1.a.a(ip1.a.a.b, "2/auth/token/revoke", null, if.h.a, if.h.a, if.h.a);
                return;
            }
            catch (ho ho1)
            {
                try
                {
                    throw new hh(ho1.b, ho1.c, (new StringBuilder("Unexpected error response for \"token/revoke\":")).append(ho1.a).toString());
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
            }
            return;
        }

            
            {
                a = ado.this;
                super();
            }
    }

}
