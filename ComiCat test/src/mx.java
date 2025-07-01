// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public final class mx
    implements of
{
    public static final class a
    {

        final mv a;
        public Collection b;

        public final mx a()
        {
            return new mx(this);
        }

        public a(mv mv1)
        {
            b = new HashSet();
            a = (mv)ni.a(mv1);
        }
    }


    public final mv a;
    public final Set b;

    public mx(mv mv1)
    {
        this(new a(mv1));
    }

    protected mx(a a1)
    {
        a = a1.a;
        b = new HashSet(a1.b);
    }

    public final Object a(InputStream inputstream, Charset charset, Class class1)
    {
        boolean flag;
        boolean flag1;
        flag1 = false;
        inputstream = a.b(inputstream);
        if (b.isEmpty())
        {
            break MISSING_BLOCK_LABEL_74;
        }
        flag = flag1;
        if (inputstream.a(b) == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        flag = flag1;
        if (inputstream.d() != nb.d)
        {
            flag = true;
        }
        oh.a(flag, "wrapper key(s) not found: %s", new Object[] {
            b
        });
        return inputstream.a(class1, true);
        charset;
        inputstream.b();
        throw charset;
    }
}
