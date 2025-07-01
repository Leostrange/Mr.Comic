// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;


// Referenced classes of package com.radaee.pdf:
//            Page

public final class >
{

    protected long a;
    final Page b;

    public final int a()
    {
        return Page.a(a);
    }

    public final void b()
    {
        Page.b(a);
        a = 0L;
    }

    protected final void finalize()
    {
        b();
        super.finalize();
    }

    public (Page page)
    {
        b = page;
        super();
    }
}
