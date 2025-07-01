// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class adq extends acs
{

    ado b;

    public adq(aev aev)
    {
        super(aev);
        b = new ado(aev);
    }

    public final List a(adc adc)
    {
        adc = ((adp)adc).a;
        Object obj = b.a(adc.b());
        adc = new ArrayList(((List) (obj)).size());
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            jl jl1 = (jl)((Iterator) (obj)).next();
            if ((jl1 instanceof iw) || (jl1 instanceof iy))
            {
                adc.add(new adp(jl1));
            }
        } while (true);
        return adc;
    }

    public final boolean a(String s, String s1, acy acy1)
    {
        boolean flag = b.a(s, s1, acy1);
        if (flag)
        {
            s = acy.a.b;
        } else
        {
            s = acy.a.c;
        }
        acy1.a(s);
        return flag;
    }

    public final String b()
    {
        return "dropbox";
    }

    public final String c()
    {
        return ComicReaderApp.a().getString(0x7f060279);
    }

    public final int d()
    {
        return 0x7f020076;
    }

    public final String e()
    {
        Context context = ComicReaderApp.a();
        return (new StringBuilder()).append(context.getString(0x7f0600d4)).append("\n\n").append(context.getString(0x7f06007e)).append("\n\n").append(context.getString(0x7f06007f)).append("\n\n").append(context.getString(0x7f060080)).append("\n\n").append(context.getString(0x7f060081)).append("\n\n").append(context.getString(0x7f060082)).append("\n").toString();
    }

    public final boolean f()
    {
        return true;
    }

    public final String g()
    {
        return "Dropbox";
    }

    public final void i()
    {
        ado ado1 = b;
        if (ado1.a())
        {
            (new Thread(new ado._cls1(ado1))).run();
        }
        super.i();
    }

    public final adc j()
    {
        jl jl1 = ado.c();
        if (jl1 != null)
        {
            return new adp(jl1);
        } else
        {
            return null;
        }
    }
}
