// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aae extends yv
{

    private static final boolean D = xj.a("jcifs.smb.client.disablePlainTextPasswords", true);
    private static final int d = xj.a("jcifs.smb.client.SessionSetupAndX.TreeConnectAndX", 1);
    private byte E[];
    private byte F[];
    private byte G[];
    private int H;
    private int I;
    private String J;
    private String K;
    aav b;
    Object c;

    aae(aav aav1, zm zm, Object obj)
    {
        super(zm);
        G = null;
        g = 115;
        b = aav1;
        c = obj;
        H = aav1.e.y;
        I = aav1.e.x;
        if (aav1.e.s.g != 1)
        {
            break MISSING_BLOCK_LABEL_351;
        }
        if (!(obj instanceof zl)) goto _L2; else goto _L1
_L1:
        zm = (zl)obj;
        if (zm != zl.d) goto _L4; else goto _L3
_L3:
        E = new byte[0];
        F = new byte[0];
        I = I & 0x7fffffff;
_L5:
        J = ((zl) (zm)).i;
        if (t)
        {
            J = J.toUpperCase();
        }
        K = ((zl) (zm)).h.toUpperCase();
        return;
_L4:
        if (aav1.e.s.h)
        {
            E = zm.a(aav1.e.s.p);
            F = zm.b(aav1.e.s.p);
            if (E.length == 0 && F.length == 0)
            {
                throw new RuntimeException("Null setup prohibited.");
            }
        } else
        {
            if (D)
            {
                throw new RuntimeException("Plain text passwords are disabled");
            }
            if (t)
            {
                aav1 = ((zl) (zm)).j;
                E = new byte[0];
                F = new byte[(aav1.length() + 1) * 2];
                a(aav1, F, 0);
            } else
            {
                aav1 = ((zl) (zm)).j;
                E = new byte[(aav1.length() + 1) * 2];
                F = new byte[0];
                a(aav1, E, 0);
            }
        }
        if (true) goto _L5; else goto _L2
_L2:
        if (obj instanceof byte[])
        {
            G = (byte[])(byte[])obj;
            return;
        } else
        {
            throw new aaq("Unsupported credential type");
        }
        if (aav1.e.s.g == 0)
        {
            if (obj instanceof zl)
            {
                aav1 = (zl)obj;
                E = new byte[0];
                F = new byte[0];
                J = ((zl) (aav1)).i;
                if (t)
                {
                    J = J.toUpperCase();
                }
                K = ((zl) (aav1)).h.toUpperCase();
                return;
            } else
            {
                throw new aaq("Unsupported credential type");
            }
        } else
        {
            throw new aaq("Unsupported");
        }
    }

    final int a(byte byte0)
    {
        if (byte0 == 117)
        {
            return d;
        } else
        {
            return 0;
        }
    }

    final int i(byte abyte0[], int i1)
    {
        a(b.e.v, abyte0, i1);
        int j1 = i1 + 2;
        a(b.e.u, abyte0, j1);
        j1 += 2;
        aax aax1 = b.e;
        a(1L, abyte0, j1);
        j1 += 2;
        b(H, abyte0, j1);
        j1 += 4;
        int k1;
        if (G != null)
        {
            a(G.length, abyte0, j1);
            j1 += 2;
        } else
        {
            a(E.length, abyte0, j1);
            j1 += 2;
            a(F.length, abyte0, j1);
            j1 += 2;
        }
        k1 = j1 + 1;
        abyte0[j1] = 0;
        j1 = k1 + 1;
        abyte0[k1] = 0;
        k1 = j1 + 1;
        abyte0[j1] = 0;
        j1 = k1 + 1;
        abyte0[k1] = 0;
        b(I, abyte0, j1);
        return (j1 + 4) - i1;
    }

    final int j(byte abyte0[], int i1)
    {
        aax aax1;
        int j1;
        if (G != null)
        {
            System.arraycopy(G, 0, abyte0, i1, G.length);
            j1 = G.length + i1;
        } else
        {
            System.arraycopy(E, 0, abyte0, i1, E.length);
            j1 = E.length + i1;
            System.arraycopy(F, 0, abyte0, j1, F.length);
            j1 += F.length;
            j1 += a(J, abyte0, j1);
            j1 += a(K, abyte0, j1);
        }
        aax1 = b.e;
        j1 += a(aax.ax, abyte0, j1);
        aax1 = b.e;
        return (j1 + a(aax.ay, abyte0, j1)) - i1;
    }

    final int k(byte abyte0[], int i1)
    {
        return 0;
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public final String toString()
    {
        boolean flag = false;
        StringBuilder stringbuilder = (new StringBuilder("SmbComSessionSetupAndX[")).append(super.toString()).append(",snd_buf_size=").append(b.e.v).append(",maxMpxCount=").append(b.e.u).append(",VC_NUMBER=");
        aax aax1 = b.e;
        stringbuilder = stringbuilder.append(1).append(",sessionKey=").append(H).append(",lmHash.length=");
        int i1;
        if (E == null)
        {
            i1 = 0;
        } else
        {
            i1 = E.length;
        }
        stringbuilder = stringbuilder.append(i1).append(",ntHash.length=");
        if (F == null)
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = F.length;
        }
        stringbuilder = stringbuilder.append(i1).append(",capabilities=").append(I).append(",accountName=").append(J).append(",primaryDomain=").append(K).append(",NATIVE_OS=");
        aax1 = b.e;
        stringbuilder = stringbuilder.append(aax.ax).append(",NATIVE_LANMAN=");
        aax1 = b.e;
        return new String(stringbuilder.append(aax.ay).append("]").toString());
    }

}
