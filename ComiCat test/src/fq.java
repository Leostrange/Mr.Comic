// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashMap;
import java.util.Map;

public class fq
{

    private static final String d = fq.getName();
    private static final Object e = new Object();
    private static final Map f = new HashMap();
    public final String a[];
    public final String b;
    public final fw c;

    static fq a(String s)
    {
        Object obj = e;
        obj;
        JVM INSTR monitorenter ;
        s = (fq)f.get(s);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        f.remove(((fq) (s)).b);
        obj;
        JVM INSTR monitorexit ;
        return s;
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
    }

}
