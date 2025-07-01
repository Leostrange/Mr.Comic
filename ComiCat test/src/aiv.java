// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class aiv extends aik
{

    protected final aiv c;
    protected String d;
    protected aiv e;

    aiv(int k, aiv aiv1)
    {
        e = null;
        a = k;
        c = aiv1;
        b = -1;
    }

    private final aiv a(int k)
    {
        a = k;
        b = -1;
        d = null;
        return this;
    }

    public final int a(String s)
    {
        if (a != 2 || d != null)
        {
            return 4;
        }
        d = s;
        return b >= 0 ? 1 : 0;
    }

    public final aiv g()
    {
        aiv aiv1 = e;
        if (aiv1 == null)
        {
            aiv1 = new aiv(1, this);
            e = aiv1;
            return aiv1;
        } else
        {
            return aiv1.a(1);
        }
    }

    public final aiv h()
    {
        aiv aiv1 = e;
        if (aiv1 == null)
        {
            aiv1 = new aiv(2, this);
            e = aiv1;
            return aiv1;
        } else
        {
            return aiv1.a(2);
        }
    }

    public final aiv i()
    {
        return c;
    }

    public final int j()
    {
        if (a == 2)
        {
            if (d == null)
            {
                return 5;
            } else
            {
                d = null;
                b = b + 1;
                return 2;
            }
        }
        if (a == 1)
        {
            int k = b;
            b = b + 1;
            return k >= 0 ? 1 : 0;
        }
        b = b + 1;
        return b != 0 ? 3 : 0;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        if (a == 2)
        {
            stringbuilder.append('{');
            if (d != null)
            {
                stringbuilder.append('"');
                stringbuilder.append(d);
                stringbuilder.append('"');
            } else
            {
                stringbuilder.append('?');
            }
            stringbuilder.append('}');
        } else
        if (a == 1)
        {
            stringbuilder.append('[');
            stringbuilder.append(f());
            stringbuilder.append(']');
        } else
        {
            stringbuilder.append("/");
        }
        return stringbuilder.toString();
    }
}
