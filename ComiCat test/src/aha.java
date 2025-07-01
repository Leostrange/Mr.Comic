// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class aha
{

    public static boolean a(InputStream inputstream)
    {
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                inputstream.printStackTrace();
                return false;
            }
        }
        return true;
    }

    public static boolean a(InputStream inputstream, OutputStream outputstream, acy acy1)
    {
        return a(inputstream, outputstream, acy1, 0x40000);
    }

    public static boolean a(InputStream inputstream, OutputStream outputstream, acy acy1, int i)
    {
        byte abyte0[];
        boolean flag;
        flag = false;
        abyte0 = new byte[i];
        i = 0;
_L2:
        int j = inputstream.read(abyte0);
        i = j;
        if (i == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        outputstream.write(abyte0, 0, i);
        acy1.a(i, 0);
        if (acy1.a()) goto _L2; else goto _L1
_L1:
        boolean flag1;
        outputstream.flush();
        a(inputstream);
        a(outputstream);
        flag1 = acy1.a();
        flag = flag1;
_L4:
        agt.a("StreamUtils", (new StringBuilder("Read ")).append(i).append("bytes from file").toString());
        return flag;
        inputstream;
_L5:
        agt.a(inputstream);
        acy1.a(acw.c, inputstream.getMessage());
        if (true) goto _L4; else goto _L3
_L3:
        inputstream;
          goto _L5
    }

    private static boolean a(OutputStream outputstream)
    {
        if (outputstream != null)
        {
            try
            {
                outputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (OutputStream outputstream)
            {
                outputstream.printStackTrace();
                return false;
            }
        }
        return true;
    }
}
