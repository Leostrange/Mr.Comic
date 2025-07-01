// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class gy
{

    private static final String a = gy.getName();
    private static fh.a b;

    public gy()
    {
    }

    public static void a(fh.a a1)
    {
        gy;
        JVM INSTR monitorenter ;
        b = a1;
        gz.c(a, (new StringBuilder("App State overwritten : ")).append(b).toString());
        gy;
        JVM INSTR monitorexit ;
        return;
        a1;
        throw a1;
    }

    public static boolean a()
    {
        gy;
        JVM INSTR monitorenter ;
        if (b == fh.a.b) goto _L2; else goto _L1
_L1:
        fh.a a1;
        fh.a a2;
        a1 = b;
        a2 = fh.a.d;
        if (a1 != a2) goto _L3; else goto _L2
_L2:
        boolean flag = true;
_L5:
        gy;
        JVM INSTR monitorexit ;
        return flag;
_L3:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public static fh.a b()
    {
        gy;
        JVM INSTR monitorenter ;
        fh.a a1 = b;
        gy;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    static 
    {
        b = fh.a.d;
    }
}
