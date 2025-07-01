// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class ago
{

    public static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
        int j = abyte0.length;
        for (int i = 0; i < j; i++)
        {
            byte byte0 = abyte0[i];
            stringbuilder.append("0123456789abcdef".charAt((byte0 & 0xf0) >> 4)).append("0123456789abcdef".charAt(byte0 & 0xf));
        }

        return stringbuilder.toString();
    }

    public static byte[] a(String s)
    {
        byte abyte0[];
        Object obj2;
        obj2 = null;
        abyte0 = new byte[1024];
        Object obj = new BufferedInputStream(new FileInputStream(s));
        s = ((String) (obj));
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
_L2:
        s = ((String) (obj));
        int i = ((InputStream) (obj)).read(abyte0);
        if (i <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = ((String) (obj));
        messagedigest.update(abyte0, 0, i);
        if (i != -1) goto _L2; else goto _L1
_L1:
        s = ((String) (obj));
        abyte0 = messagedigest.digest();
        s = abyte0;
        aha.a(((InputStream) (obj)));
_L4:
        return s;
        Object obj1;
        obj1;
        obj = null;
_L7:
        s = ((String) (obj));
        ((Exception) (obj1)).printStackTrace();
        s = obj2;
        if (obj == null) goto _L4; else goto _L3
_L3:
        aha.a(((InputStream) (obj)));
        return null;
        s;
        InputStream inputstream;
        inputstream = null;
        obj = s;
_L6:
        if (inputstream != null)
        {
            aha.a(inputstream);
        }
        throw obj;
        obj;
        inputstream = s;
        if (true) goto _L6; else goto _L5
_L5:
        inputstream;
          goto _L7
    }

    public static String b(String s)
    {
        Object obj = null;
        byte abyte0[];
        try
        {
            abyte0 = MessageDigest.getInstance("MD5").digest(s.getBytes());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        s = obj;
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        s = a(abyte0);
        return s;
    }
}
