// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class afj
    implements aff
{

    private ZipEntry a;
    private ZipFile b;

    public afj(ZipEntry zipentry, ZipFile zipfile)
    {
        a = zipentry;
        b = zipfile;
    }

    public final InputStream a()
    {
        Object obj;
        InputStream inputstream;
        try
        {
            inputstream = b.getInputStream(a);
            obj = new ags(inputstream, (int)a.getSize());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        try
        {
            inputstream.close();
        }
        catch (Exception exception)
        {
            return ((InputStream) (obj));
        }
        return ((InputStream) (obj));
    }
}
