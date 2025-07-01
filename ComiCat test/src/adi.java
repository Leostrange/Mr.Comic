// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import meanlabs.comicreader.ComicReaderApp;

public final class adi
{

    static int c = 7;
    private static adi d = null;
    File a;
    ArrayList b;

    private adi()
    {
        int i = 0;
        super();
        a = ComicReaderApp.a().getDir("filecache", 0);
        b = new ArrayList();
        File afile[] = a.listFiles();
        int j = afile.length;
        while (i < j) 
        {
            File file = afile[i];
            if ("dld".equalsIgnoreCase(agv.a(file.getName())))
            {
                file.delete();
            } else
            {
                b.add(file);
            }
            i++;
        }
        Collections.sort(b, new Comparator() {

            final adi a;

            public final int compare(Object obj, Object obj1)
            {
                obj = (File)obj;
                obj1 = (File)obj1;
                return (int)(((File) (obj)).lastModified() - ((File) (obj1)).lastModified());
            }

            
            {
                a = adi.this;
                super();
            }
        });
        a(c);
    }

    public static adi a()
    {
        if (d == null)
        {
            d = new adi();
        }
        return d;
    }

    public final File a(String s, long l)
    {
        Iterator iterator = b.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        File file = (File)iterator.next();
        if (!file.getName().equalsIgnoreCase(s)) goto _L4; else goto _L3
_L3:
        s = file;
_L6:
        String s1 = s;
        if (s != null)
        {
            s1 = s;
            if (l != -1L)
            {
                s1 = s;
                if (s.length() != l)
                {
                    b.remove(s);
                    agz.a(s);
                    s1 = null;
                }
            }
        }
        return s1;
_L2:
        s = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final String a(String s)
    {
        String s1 = agp.b(a.getAbsolutePath(), s);
        s = null;
        do
        {
            if (s != null)
            {
                break;
            }
            File file = new File((new StringBuilder()).append(s1).append("0.dld").toString());
            if (!file.exists() || file.delete())
            {
                s = file.getAbsolutePath();
            }
        } while (true);
        return s;
    }

    final void a(int i)
    {
        if (b.size() > i)
        {
            int k = b.size();
            for (int j = 0; j < k - i; j++)
            {
                agz.a((File)b.remove(0));
            }

        }
    }

}
