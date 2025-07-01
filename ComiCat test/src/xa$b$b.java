// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.List;

final class b
    implements Iterator
{

    final d a;
    private final Object b[];
    private int c;
    private int d;

    public final boolean hasNext()
    {
        return c < b.length;
    }

    public final Object next()
    {
        Object aobj[] = b;
        int i = c;
        c = i + 1;
        return aobj[i];
    }

    public final void remove()
    {
        if (c == 0)
        {
            throw new IllegalStateException();
        }
        if (b[c - 1] == xa.f())
        {
            throw new IllegalStateException();
        }
        b[c - 1] = xa.f();
        d = d + 1;
        synchronized (a)
        {
            ((List)a.a).remove(c - d);
        }
        return;
        exception;
        c1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ng.Object(ct ct, Object aobj[])
    {
        a = ct;
        super();
        b = aobj;
    }
}
