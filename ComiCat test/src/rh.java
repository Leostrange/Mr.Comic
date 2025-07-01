// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Vector;

final class rh
    implements qv
{

    private Vector a;
    private qw b;

    rh(qw qw)
    {
        a = new Vector();
        b = qw;
    }

    private void a(qt qt1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a.contains(qt1)) goto _L2; else goto _L1
_L1:
        byte abyte0[] = qt1.a();
        if (abyte0 != null) goto _L4; else goto _L3
_L3:
        a.addElement(qt1);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        int i = 0;
_L6:
        byte abyte1[];
        if (i >= a.size())
        {
            break MISSING_BLOCK_LABEL_118;
        }
        abyte1 = ((qt)a.elementAt(i)).a();
        if (abyte1 == null)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        if (!si.a(abyte0, abyte1))
        {
            break MISSING_BLOCK_LABEL_134;
        }
        if (qt1.c() || !((qt)a.elementAt(i)).c()) goto _L2; else goto _L5
_L5:
        b(abyte1);
        break MISSING_BLOCK_LABEL_134;
        a.addElement(qt1);
          goto _L2
        qt1;
        throw qt1;
        i++;
          goto _L6
    }

    public final Vector a()
    {
        this;
        JVM INSTR monitorenter ;
        Vector vector;
        int k;
        vector = new Vector();
        k = a.size();
        if (k == 0) goto _L2; else goto _L1
_L1:
        int i = 0;
_L13:
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        qt qt1;
        byte abyte0[];
        qt1 = (qt)a.elementAt(i);
        abyte0 = qt1.a();
        if (abyte0 == null) goto _L4; else goto _L3
_L3:
        int j = i + 1;
_L14:
        if (j >= k) goto _L4; else goto _L5
_L5:
        qt qt2;
        byte abyte1[];
        qt2 = (qt)a.elementAt(j);
        abyte1 = qt2.a();
        if (abyte1 == null) goto _L7; else goto _L6
_L6:
        if (!si.a(abyte0, abyte1) || qt1.c() != qt2.c()) goto _L7; else goto _L8
_L8:
        vector.addElement(abyte0);
          goto _L4
_L10:
        if (i >= vector.size()) goto _L2; else goto _L9
_L9:
        b((byte[])(byte[])vector.elementAt(i));
        i++;
          goto _L10
_L2:
        vector = new Vector();
        i = 0;
_L12:
        if (i >= a.size())
        {
            break; /* Loop/switch isn't completed */
        }
        vector.addElement(a.elementAt(i));
        i++;
        if (true) goto _L12; else goto _L11
_L11:
        return vector;
        Exception exception;
        exception;
        throw exception;
_L4:
        i++;
          goto _L13
_L7:
        j++;
          goto _L14
        i = 0;
          goto _L10
    }

    public final boolean a(byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        qw qw = b;
        a(((qt) (new qu(qw, "from remote:", rb.a(qw, abyte0)))));
        boolean flag = true;
_L2:
        this;
        JVM INSTR monitorexit ;
        return flag;
        abyte0;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
        abyte0;
        throw abyte0;
    }

    public final void b()
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
_L2:
        if (i >= a.size())
        {
            break; /* Loop/switch isn't completed */
        }
        ((qt)(qt)a.elementAt(i)).d();
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        a.removeAllElements();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean b(byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        if (abyte0 != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L6:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        int i = 0;
_L4:
        qt qt1;
        byte abyte1[];
        if (i >= a.size())
        {
            break; /* Loop/switch isn't completed */
        }
        qt1 = (qt)(qt)a.elementAt(i);
        abyte1 = qt1.a();
        if (abyte1 == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        if (!si.a(abyte0, abyte1))
        {
            break MISSING_BLOCK_LABEL_85;
        }
        a.removeElement(qt1);
        qt1.d();
        flag = true;
        continue; /* Loop/switch isn't completed */
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        flag = false;
        if (true) goto _L6; else goto _L5
_L5:
        abyte0;
        throw abyte0;
    }
}
