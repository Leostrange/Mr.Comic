// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

public final class afd
    implements aff
{

    ISimpleInArchiveItem a;
    File b;

    public afd(ISimpleInArchiveItem isimpleinarchiveitem, File file)
    {
        a = isimpleinarchiveitem;
        b = file;
    }

    private static void a(ags ags1)
    {
        try
        {
            ags1.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ags ags1)
        {
            ags1.printStackTrace();
        }
    }

    private ags b()
    {
        if (b != null)
        {
            long l = c();
            if (l == b.length())
            {
                ags ags1;
                try
                {
                    FileInputStream fileinputstream = new FileInputStream(b);
                    ags1 = new ags(fileinputstream, (int)l);
                    fileinputstream.close();
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                    return null;
                }
                return ags1;
            }
        }
        return null;
    }

    private int c()
    {
        int i = 0x400000;
        Long long1;
        try
        {
            long1 = a.getSize();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return 0x400000;
        }
        if (long1 == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        i = long1.intValue();
        return i;
    }

    public final InputStream a()
    {
        Object obj;
        obj = b();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        Object obj1 = new ags(c());
        if (a.extractSlow(((net.sf.sevenzipjbinding.ISequentialOutStream) (obj1))) == ExtractOperationResult.OK) goto _L2; else goto _L1
_L1:
        a(((ags) (obj1)));
        return null;
        obj1;
_L3:
        ((Exception) (obj1)).printStackTrace();
        a(((ags) (obj)));
        return null;
        Exception exception;
        exception;
        obj = obj1;
        obj1 = exception;
        if (true) goto _L3; else goto _L2
_L2:
        return ((InputStream) (obj1));
        return ((InputStream) (obj));
    }
}
