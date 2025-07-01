// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aay
{

    private static int j;
    int a;
    int b;
    String c;
    String d;
    String e;
    aav f;
    boolean g;
    boolean h;
    int i;

    aay(aav aav1, String s, String s1)
    {
        d = "?????";
        f = aav1;
        c = s.toUpperCase();
        if (s1 != null && !s1.startsWith("??"))
        {
            d = s1;
        }
        e = d;
        a = 0;
    }

    final void a(zm zm1, zm zm2)
    {
        aax aax1 = f.a();
        aax1;
        JVM INSTR monitorenter ;
        if (zm2 == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        zm2.u = false;
        b(zm1, zm2);
        if (zm1 == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        if (zm2 == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        if (!zm2.u)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        aax1;
        JVM INSTR monitorexit ;
        return;
        if (d.equals("A:"))
        {
            break MISSING_BLOCK_LABEL_292;
        }
        zm1.g;
        JVM INSTR lookupswitch 8: default 420
    //                   -94: 292
    //                   4: 292
    //                   37: 173
    //                   45: 292
    //                   46: 292
    //                   47: 292
    //                   50: 173
    //                   113: 292;
           goto _L1 _L2 _L2 _L3 _L2 _L2 _L2 _L3 _L2
_L2:
        break MISSING_BLOCK_LABEL_292;
_L1:
        throw new aaq((new StringBuilder("Invalid operation for ")).append(d).append(" service").append(zm1).toString());
        zm1;
        aax1;
        JVM INSTR monitorexit ;
        throw zm1;
_L3:
        switch (((aag)zm1).S & 0xff)
        {
        default:
            throw new aaq((new StringBuilder("Invalid operation for ")).append(d).append(" service").toString());

        case 0: // '\0'
        case 16: // '\020'
        case 35: // '#'
        case 38: // '&'
        case 83: // 'S'
        case 84: // 'T'
        case 104: // 'h'
        case 215: 
            break MISSING_BLOCK_LABEL_292;
        }
        zm1.n = b;
        if (g && !d.equals("IPC") && zm1.A != null && zm1.A.length() > 0)
        {
            zm1.m = 4096;
            zm1.A = (new StringBuilder("\\")).append(f.a().A).append('\\').append(c).append(zm1.A).toString();
        }
        f.a(zm1, zm2);
        aax1;
        JVM INSTR monitorexit ;
        return;
        zm1;
        if (((aaq) (zm1)).n == 0xc00000c9)
        {
            a(true);
        }
        throw zm1;
    }

    final void a(boolean flag)
    {
label0:
        {
            synchronized (f.a())
            {
                if (a == 2)
                {
                    break label0;
                }
            }
            return;
        }
        a = 3;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        int k = b;
        if (k == 0)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        a(((zm) (new aak())), ((zm) (null)));
_L1:
        g = false;
        h = false;
        a = 0;
        f.e.notifyAll();
        aax1;
        JVM INSTR monitorexit ;
        return;
        exception;
        aax1;
        JVM INSTR monitorexit ;
        throw exception;
        aaq aaq1;
        aaq1;
        Object obj = f.e;
        obj = aax.c;
        if (abx.a > 1)
        {
            aax aax2 = f.e;
            aaq1.printStackTrace(aax.c);
        }
          goto _L1
    }

    final boolean a(String s, String s1)
    {
        return c.equalsIgnoreCase(s) && (s1 == null || s1.startsWith("??") || d.equalsIgnoreCase(s1));
    }

    final void b(zm zm1, zm zm2)
    {
        aax1;
        JVM INSTR monitorenter ;
label0:
        {
            synchronized (f.a())
            {
                if (a == 0)
                {
                    break MISSING_BLOCK_LABEL_68;
                }
                if (a != 2 && a != 3)
                {
                    break label0;
                }
            }
            return;
        }
        throw new aaq(zm1.getMessage(), zm1);
        aax1;
        JVM INSTR monitorexit ;
        throw zm1;
        a = 1;
        f.e.a();
        String s = (new StringBuilder("\\\\")).append(f.e.A).append('\\').append(c).toString();
        d = e;
        Object obj = f.e;
        obj = aax.c;
        if (abx.a >= 4)
        {
            aax aax2 = f.e;
            aax.c.println((new StringBuilder("treeConnect: unc=")).append(s).append(",service=").append(d).toString());
        }
        zm2 = new aaj(zm2);
        zm1 = new aai(f, s, d, zm1);
        f.a(zm1, zm2);
        b = ((aaj) (zm2)).n;
        d = ((aaj) (zm2)).d;
        g = ((aaj) (zm2)).c;
        int k = j;
        j = k + 1;
        i = k;
        a = 2;
        aax1;
        JVM INSTR monitorexit ;
        return;
        zm1;
        a(true);
        a = 0;
        throw zm1;
    }

    public final boolean equals(Object obj)
    {
        if (obj instanceof aay)
        {
            obj = (aay)obj;
            return a(((aay) (obj)).c, ((aay) (obj)).d);
        } else
        {
            return false;
        }
    }

    public final String toString()
    {
        return (new StringBuilder("SmbTree[share=")).append(c).append(",service=").append(d).append(",tid=").append(b).append(",inDfs=").append(g).append(",inDomainDfs=").append(h).append(",connectionState=").append(a).append("]").toString();
    }
}
