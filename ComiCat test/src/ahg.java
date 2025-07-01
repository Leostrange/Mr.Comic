// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public final class ahg
{

    ZipOutputStream a;
    String b;
    boolean c;
    byte d[];

    public ahg(String s)
    {
        b = "";
        d = new byte[4096];
        try
        {
            a = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(s)));
            c = true;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    private String b(String s)
    {
        return (new StringBuilder()).append(b).append(s).toString();
    }

    public final void a(String s)
    {
        if (s.length() != 0)
        {
            s = (new StringBuilder()).append(s).append("/").toString();
        } else
        {
            s = "";
        }
        b = s;
    }

    public final boolean a()
    {
        try
        {
            a.close();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return true;
    }

    public final boolean a(File file)
    {
        BufferedInputStream bufferedinputstream;
        bufferedinputstream = new BufferedInputStream(new FileInputStream(file), 4096);
        file = new ZipEntry(b(file.getName()));
        a.putNextEntry(file);
_L1:
        int i = bufferedinputstream.read(d, 0, 4096);
label0:
        {
            if (i == -1)
            {
                break label0;
            }
            try
            {
                a.write(d, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                file.printStackTrace();
                return false;
            }
        }
          goto _L1
        bufferedinputstream.close();
        a.closeEntry();
        return true;
    }

    public final boolean a(String s, InputStream inputstream)
    {
        inputstream = new BufferedInputStream(inputstream, 4096);
        s = new ZipEntry(b(s));
        a.putNextEntry(s);
_L1:
        int i = inputstream.read(d, 0, 4096);
label0:
        {
            if (i == -1)
            {
                break label0;
            }
            try
            {
                a.write(d, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return false;
            }
        }
          goto _L1
        inputstream.close();
        a.closeEntry();
        return true;
    }
}
