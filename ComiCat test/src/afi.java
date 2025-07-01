// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class afi
    implements afe
{

    private ZipFile a;
    private ArrayList b;

    public afi()
    {
    }

    private void e()
    {
        b = new ArrayList();
        Enumeration enumeration = a.entries();
_L2:
        ZipEntry zipentry;
        do
        {
            if (!enumeration.hasMoreElements())
            {
                break MISSING_BLOCK_LABEL_75;
            }
            zipentry = (ZipEntry)enumeration.nextElement();
        } while (zipentry == null);
        if (!zipentry.isDirectory() && afa.a(zipentry.getName(), zipentry.getSize()))
        {
            b.add(zipentry);
        }
        if (true) goto _L2; else goto _L1
_L1:
        try
        {
            Collections.sort(b, new Comparator() {

                final afi a;

                public final int compare(Object obj, Object obj1)
                {
                    obj = (ZipEntry)obj;
                    obj1 = (ZipEntry)obj1;
                    return agv.a(((ZipEntry) (obj)).getName(), ((ZipEntry) (obj1)).getName());
                }

            
            {
                a = afi.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public final aff a(int i)
    {
        if (i >= b.size())
        {
            break MISSING_BLOCK_LABEL_37;
        }
        afj afj1 = new afj((ZipEntry)b.get(i), a);
        return afj1;
        Exception exception;
        exception;
        return null;
    }

    public final void a()
    {
    }

    public final boolean a(File file)
    {
        try
        {
            a = new ZipFile(file, 1);
            e();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            Log.e("CBZ Open", "Open failed", file);
            return false;
        }
        return true;
    }

    public final void b()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        a.close();
        return;
        Exception exception;
        exception;
    }

    public final int c()
    {
        return b.size();
    }

    public final afa.a d()
    {
        return afa.a.b;
    }
}
