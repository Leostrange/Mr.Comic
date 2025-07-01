// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.net.UnknownHostException;

public final class ys extends yq
{

    private static final int f;
    private static final String g;
    private static final byte h[];
    public byte d[];
    byte e[];
    private String i;
    private byte j[];

    public ys()
    {
        this(f);
    }

    private ys(int k)
    {
        super.c = k;
        d = null;
        i = null;
    }

    public ys(byte abyte0[])
    {
        int l;
        int i1;
        for (int k = 0; k < 8; k++)
        {
            if (abyte0[k] != a[k])
            {
                throw new IOException("Not an NTLMSSP message.");
            }
        }

        if (a(abyte0, 8) != 2)
        {
            throw new IOException("Not a Type 2 message.");
        }
        l = a(abyte0, 20);
        super.c = l;
        Object obj = null;
        byte abyte2[] = b(abyte0, 12);
        if (abyte2.length != 0)
        {
            if ((l & 1) != 0)
            {
                obj = "UTF-16LE";
            } else
            {
                obj = yq.b;
            }
            obj = new String(abyte2, ((String) (obj)));
        }
        i = ((String) (obj));
        l = 24;
_L7:
        if (l >= 32) goto _L2; else goto _L1
_L1:
        if (abyte0[l] == 0) goto _L4; else goto _L3
_L3:
        obj = new byte[8];
        System.arraycopy(abyte0, 24, obj, 0, 8);
        d = ((byte []) (obj));
_L2:
        i1 = a(abyte0, 16);
        if (i1 != 32 && abyte0.length != 32) goto _L6; else goto _L5
_L5:
        return;
_L4:
        l++;
          goto _L7
_L6:
        l = 32;
_L9:
        if (l >= 40)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (abyte0[l] == 0)
        {
            break MISSING_BLOCK_LABEL_266;
        }
        byte abyte1[] = new byte[8];
        System.arraycopy(abyte0, 32, abyte1, 0, 8);
        j = abyte1;
        if (i1 == 40 || abyte0.length == 40) goto _L5; else goto _L8
_L8:
        abyte0 = b(abyte0, 40);
        if (abyte0.length != 0)
        {
            e = abyte0;
            return;
        }
          goto _L5
        l++;
          goto _L9
    }

    public final String toString()
    {
        Object obj2 = i;
        Object obj = d;
        Object obj1 = j;
        byte abyte0[] = e;
        obj2 = (new StringBuilder("Type2Message[target=")).append(((String) (obj2))).append(",challenge=");
        if (obj == null)
        {
            obj = "null";
        } else
        {
            obj = (new StringBuilder("<")).append(obj.length).append(" bytes>").toString();
        }
        obj2 = ((StringBuilder) (obj2)).append(((String) (obj))).append(",context=");
        if (obj1 == null)
        {
            obj = "null";
        } else
        {
            obj = (new StringBuilder("<")).append(obj1.length).append(" bytes>").toString();
        }
        obj1 = ((StringBuilder) (obj2)).append(((String) (obj))).append(",targetInformation=");
        if (abyte0 == null)
        {
            obj = "null";
        } else
        {
            obj = (new StringBuilder("<")).append(abyte0.length).append(" bytes>").toString();
        }
        return ((StringBuilder) (obj1)).append(((String) (obj))).append(",flags=0x").append(abw.a(super.c, 8)).append("]").toString();
    }

    static 
    {
        int k;
        byte abyte0[];
        Object obj;
        byte abyte1[];
        String s;
        int l;
        int i1;
        int j1;
        if (xj.a("jcifs.smb.client.useUnicode", true))
        {
            k = 1;
        } else
        {
            k = 2;
        }
        f = k | 0x200;
        g = xj.b("jcifs.smb.client.domain", null);
        obj = new byte[0];
        abyte0 = ((byte []) (obj));
        if (g != null)
        {
            try
            {
                abyte0 = g.getBytes("UTF-16LE");
            }
            catch (IOException ioexception)
            {
                ioexception = ((IOException) (obj));
            }
        }
        j1 = abyte0.length;
        abyte1 = new byte[0];
        s = yk.a().f();
        obj = abyte1;
        if (s != null)
        {
            try
            {
                obj = s.getBytes("UTF-16LE");
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                obj = abyte1;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                obj = abyte1;
            }
        }
        i1 = obj.length;
        if (j1 > 0)
        {
            k = j1 + 4;
        } else
        {
            k = 0;
        }
        if (i1 > 0)
        {
            l = i1 + 4;
        } else
        {
            l = 0;
        }
        abyte1 = new byte[l + k + 4];
        if (j1 > 0)
        {
            b(abyte1, 0, 2);
            b(abyte1, 2, j1);
            System.arraycopy(abyte0, 0, abyte1, 4, j1);
            k = j1 + 4;
        } else
        {
            k = 0;
        }
        if (i1 > 0)
        {
            b(abyte1, k, 1);
            k += 2;
            b(abyte1, k, i1);
            System.arraycopy(obj, 0, abyte1, k + 2, i1);
        }
        h = abyte1;
        return;
    }
}
