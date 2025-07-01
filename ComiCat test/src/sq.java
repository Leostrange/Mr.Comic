// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class sq
{

    private final List a = new ArrayList();

    public sq()
    {
    }

    public final void a(sx sx)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((tl)iterator.next()).a(sx)) { }
    }

    public final void a(tl tl1)
    {
        a.add(tl1);
    }

    public final void a(tm tm)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((tl)iterator.next()).a(tm)) { }
    }
}
