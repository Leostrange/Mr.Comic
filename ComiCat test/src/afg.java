// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.radaee.pdf.Document;
import com.radaee.pdf.Global;
import java.io.File;
import meanlabs.comicreader.ComicReaderApp;

public final class afg
    implements afe
{

    Document a;

    public afg()
    {
    }

    private static boolean e()
    {
        meanlabs.comicreader.Catalog catalog = ComicReaderApp.d();
        String s;
        if (agv.g())
        {
            s = "4RNGST-DWT7U7-M8RF25-AU8DMG-84AMJU-5OFYK6";
        } else
        if (ComicReaderApp.a().getPackageName().equals("meanlabs.comicreader.underground"))
        {
            s = "S5QG97-1R68Q3-M8RF25-AU8DMG-84AMJU-5OFYK6";
        } else
        {
            s = "LLT547-C6GEQE-M8RF25-AU8DMG-84AMJU-5OFYK6";
        }
        return Global.a(catalog, "Meanlabs Software Private Limited", "admin@meanlabs.com", s);
        Exception exception;
        exception;
        exception.printStackTrace();
        return false;
    }

    public final aff a(int i)
    {
        return new afh(a, i);
    }

    public final void a()
    {
    }

    public final boolean a(File file)
    {
        int i;
        if (!e())
        {
            break MISSING_BLOCK_LABEL_75;
        }
        a = new Document();
        i = a.a(file.getAbsolutePath());
        boolean flag;
        boolean flag1;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        flag1 = a.a();
        if (flag1)
        {
            return true;
        }
        return false;
        file;
        flag = false;
_L2:
        file.printStackTrace();
        return flag;
        file;
        if (true) goto _L2; else goto _L1
_L1:
        return false;
    }

    public final void b()
    {
        if (a != null && a.a())
        {
            a.b();
        }
    }

    public final int c()
    {
        return a.b;
    }

    public final afa.a d()
    {
        return afa.a.e;
    }
}
