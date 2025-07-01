// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.OutputStream;

public final class nc extends mv
{

    private final aid a = new aid();

    public nc()
    {
        a.a(aif.a.b);
    }

    static nb a(ail ail1)
    {
        if (ail1 == null)
        {
            return null;
        }
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[ail.values().length];
                try
                {
                    a[ail.e.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    a[ail.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[ail.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[ail.b.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[ail.l.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[ail.k.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[ail.m.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[ail.h.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[ail.j.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[ail.i.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[ail.f.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[ail1.ordinal()])
        {
        default:
            return nb.l;

        case 1: // '\001'
            return nb.b;

        case 2: // '\002'
            return nb.a;

        case 3: // '\003'
            return nb.d;

        case 4: // '\004'
            return nb.c;

        case 5: // '\005'
            return nb.j;

        case 6: // '\006'
            return nb.i;

        case 7: // '\007'
            return nb.k;

        case 8: // '\b'
            return nb.f;

        case 9: // '\t'
            return nb.h;

        case 10: // '\n'
            return nb.g;

        case 11: // '\013'
            return nb.e;
        }
    }

    public final mw a(OutputStream outputstream)
    {
        return new nd(this, a.a(outputstream, aic.a));
    }

    public final my a(InputStream inputstream)
    {
        ni.a(inputstream);
        return new ne(this, a.a(inputstream));
    }

    public final my a(String s)
    {
        ni.a(s);
        return new ne(this, a.a(s));
    }

    public final my b(InputStream inputstream)
    {
        ni.a(inputstream);
        return new ne(this, a.a(inputstream));
    }
}
