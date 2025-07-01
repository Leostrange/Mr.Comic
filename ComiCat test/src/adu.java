// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class adu extends acs
{

    adw b;

    public adu(aev aev)
    {
        super(aev);
        b = new adw(aev);
    }

    public final List a(adc adc)
    {
        ArrayList arraylist = null;
        adt adt1 = (adt)adc;
        List list = adt1.c;
        adc = list;
        if (list == null)
        {
            adc = b.a(adt1.a);
            adt1.c = adc;
        }
        if (adc != null)
        {
            arraylist = new ArrayList();
            for (adc = adc.iterator(); adc.hasNext(); arraylist.add(new adt((oz)adc.next(), agp.b(adt1.b, adt1.a())))) { }
        }
        return arraylist;
    }

    public final boolean a(String s, String s1, acy acy1)
    {
        s = b.a(s);
        if (s == null || ((oz) (s)).downloadUrl == null || ((oz) (s)).downloadUrl == "")
        {
            acy1.a(acw.c, ComicReaderApp.a().getString(0x7f0600ca));
            acy1.a(acy.a.c);
            return false;
        } else
        {
            return b.a(((oz) (s)).downloadUrl, s1, acy1);
        }
    }

    public final String b()
    {
        return "googledrive";
    }

    public final String c()
    {
        return ComicReaderApp.a().getString(0x7f06027e);
    }

    public final int d()
    {
        return 0x7f02007c;
    }

    public final String e()
    {
        Context context = ComicReaderApp.a();
        return (new StringBuilder()).append(context.getString(0x7f06007d, new Object[] {
            c()
        })).append("\n\n").append(context.getString(0x7f06007e)).append("\n\n").append(context.getString(0x7f06007f)).append("\n\n").append(context.getString(0x7f060080)).append("\n\n").append(context.getString(0x7f060081)).append("\n\n").append(context.getString(0x7f060082)).append("\n").toString();
    }

    public final boolean f()
    {
        return true;
    }

    public final String g()
    {
        return "Google Drive";
    }

    public final void i()
    {
        b.a = null;
        super.i();
    }

    public final adc j()
    {
        Object obj = new oz();
        obj.id = "root";
        obj.mimeType = "application/vnd.google-apps.folder";
        obj.title = "";
        obj = new adt(((oz) (obj)), "/");
        List list = b.a(((adt) (obj)).a);
        if (list != null)
        {
            obj.c = list;
            return ((adc) (obj));
        } else
        {
            return null;
        }
    }

    public final boolean l()
    {
        return true;
    }
}
