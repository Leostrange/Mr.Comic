// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;

static final class b extends io
{

    private final String b;

    protected final void a(List list)
    {
        hm.a(list, b);
    }

    public >(hl hl, String s, hk hk)
    {
        super(hl, hk);
        if (s == null)
        {
            throw new NullPointerException("accessToken");
        } else
        {
            b = s;
            return;
        }
    }
}
