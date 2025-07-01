// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Locale;

public final class lang.Object extends Object
    implements tl, tn
{

    final sw c;

    public final void a(sx sx1)
    {
        (new <init>(a, b, sx1)).run();
    }

    public final void a(tk tk1)
    {
        tk1 = new sx(tk1.a.toString().toLowerCase(Locale.US), tk1.b, tk1.c);
        (new <init>(a, b, tk1)).run();
    }

    public final void a(tm tm1)
    {
        tm1.a(this);
    }

    public final void a(to to)
    {
        sw.a(c).a(to);
        (new <init>(a, b, th.b, sw.a(c))).run();
    }

    public >(sw sw1, sy sy)
    {
        c = sw1;
        super(sy, null);
    }
}
