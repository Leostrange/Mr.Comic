// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class up
{

    public static String a(byte abyte0[], int i)
    {
        StringBuffer stringbuffer;
        int j;
        int k;
        int l;
        int l1;
        l = 0;
        l1 = abyte0[i] & 0xff;
        stringbuffer = new StringBuffer();
        j = 0;
        i++;
        k = 0;
_L8:
        if (i >= abyte0.length) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        int k1;
        byte byte0;
        if (l == 0)
        {
            i1 = abyte0[i] & 0xff;
            i++;
            l = 8;
        } else
        {
            i1 = k;
        }
        i1 >> 6;
        JVM INSTR tableswitch 0 3: default 92
    //                   0 111
    //                   1 139
    //                   2 173
    //                   3 210;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        k = i1 << 2 & 0xff;
        l -= 2;
          goto _L8
_L4:
        k = i + 1;
        stringbuffer.append((char)(abyte0[i] & 0xff));
        j++;
        i = k;
          goto _L3
_L5:
        k = i + 1;
        stringbuffer.append((char)((abyte0[i] & 0xff) + (l1 << 8)));
        j++;
        i = k;
          goto _L3
_L6:
        stringbuffer.append((char)((abyte0[i] & 0xff) + ((abyte0[i + 1] & 0xff) << 8)));
        j++;
        i += 2;
          goto _L3
_L7:
        k = i + 1;
        i = abyte0[i] & 0xff;
        if ((i & 0x80) == 0)
        {
            break MISSING_BLOCK_LABEL_324;
        }
        k1 = k + 1;
        byte0 = abyte0[k];
        j1 = (i & 0x7f) + 2;
        k = j;
_L11:
        j = k;
        i = k1;
        if (j1 <= 0) goto _L3; else goto _L9
_L9:
        j = k;
        i = k1;
        if (k >= abyte0.length) goto _L3; else goto _L10
_L10:
        stringbuffer.append((char)(((abyte0[k] & 0xff) + (byte0 & 0xff) & 0xff) + (l1 << 8)));
        j1--;
        k++;
          goto _L11
        for (i += 2; i > 0 && j < abyte0.length; j++)
        {
            stringbuffer.append((char)(abyte0[j] & 0xff));
            i--;
        }

        break MISSING_BLOCK_LABEL_367;
_L2:
        return stringbuffer.toString();
        i = k;
          goto _L3
    }
}
