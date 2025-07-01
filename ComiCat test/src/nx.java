// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.OutputStream;

public final class nx
{

    public static long a(oj oj1)
    {
        nn nn1 = new nn();
        oj1.a(nn1);
        nn1.close();
        return nn1.a;
        oj1;
        nn1.close();
        throw oj1;
    }

    public static void a(InputStream inputstream, OutputStream outputstream, boolean flag)
    {
        byte abyte0[];
        ni.a(inputstream);
        ni.a(outputstream);
        abyte0 = new byte[4096];
_L1:
        int i = inputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        outputstream.write(abyte0, 0, i);
          goto _L1
        outputstream;
        if (flag)
        {
            inputstream.close();
        }
        throw outputstream;
        if (flag)
        {
            inputstream.close();
        }
        return;
    }
}
