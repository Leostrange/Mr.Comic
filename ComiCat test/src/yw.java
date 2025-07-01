// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class yw
{

    static Object a[];
    private static final int b;
    private static int c = 0;

    static void a(aag aag1, aah aah1)
    {
        synchronized (a)
        {
            aag1.V = a();
            aah1.O = a();
        }
        return;
        aag1;
        aobj;
        JVM INSTR monitorexit ;
        throw aag1;
    }

    public static void a(byte abyte0[])
    {
        Object aobj[] = a;
        aobj;
        JVM INSTR monitorenter ;
        if (c >= b) goto _L2; else goto _L1
_L1:
        int i = 0;
_L7:
        if (i >= b) goto _L2; else goto _L3
_L3:
        if (a[i] != null) goto _L5; else goto _L4
_L4:
        a[i] = abyte0;
        c++;
        aobj;
        JVM INSTR monitorexit ;
        return;
_L2:
        aobj;
        JVM INSTR monitorexit ;
        return;
        abyte0;
        aobj;
        JVM INSTR monitorexit ;
        throw abyte0;
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static byte[] a()
    {
        Object aobj[] = a;
        aobj;
        JVM INSTR monitorenter ;
        if (c <= 0) goto _L2; else goto _L1
_L1:
        int i = 0;
_L7:
        if (i >= b) goto _L2; else goto _L3
_L3:
        if (a[i] == null) goto _L5; else goto _L4
_L4:
        byte abyte0[];
        abyte0 = (byte[])(byte[])a[i];
        a[i] = null;
        c--;
        aobj;
        JVM INSTR monitorexit ;
        return abyte0;
_L2:
        abyte0 = new byte[65535];
        aobj;
        JVM INSTR monitorexit ;
        return abyte0;
        Exception exception;
        exception;
        aobj;
        JVM INSTR monitorexit ;
        throw exception;
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    static 
    {
        int i = xj.a("jcifs.smb.maxBuffers", 16);
        b = i;
        a = new Object[i];
    }
}
