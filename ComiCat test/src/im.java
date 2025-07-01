// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;

public final class im extends in
{
    static final class a extends io
    {

        private final String b;

        protected final void a(List list)
        {
            hm.a(list, b);
        }

        public a(hl hl, String s, hk hk1)
        {
            super(hl, hk1);
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


    public im(hl hl, String s)
    {
        this(hl, s, hk.a);
    }

    private im(hl hl, String s, hk hk1)
    {
        super(new a(hl, s, hk1));
    }
}
