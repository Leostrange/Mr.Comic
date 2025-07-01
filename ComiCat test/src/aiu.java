// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class aiu extends aik
{

    protected final aiu c;
    protected int d;
    protected int e;
    protected String f;
    protected aiu g;

    public aiu(aiu aiu1, int j, int k, int l)
    {
        g = null;
        a = j;
        c = aiu1;
        d = k;
        e = l;
        b = -1;
    }

    private void a(int j, int k, int l)
    {
        a = j;
        b = -1;
        d = k;
        e = l;
        f = null;
    }

    public final aig a(Object obj)
    {
        return new aig(obj, -1L, d, e);
    }

    public final aiu a(int j, int k)
    {
        aiu aiu1 = g;
        if (aiu1 == null)
        {
            aiu1 = new aiu(this, 1, j, k);
            g = aiu1;
            return aiu1;
        } else
        {
            aiu1.a(1, j, k);
            return aiu1;
        }
    }

    public final void a(String s)
    {
        f = s;
    }

    public final aiu b(int j, int k)
    {
        aiu aiu1 = g;
        if (aiu1 == null)
        {
            aiu1 = new aiu(this, 2, j, k);
            g = aiu1;
            return aiu1;
        } else
        {
            aiu1.a(2, j, k);
            return aiu1;
        }
    }

    public final String g()
    {
        return f;
    }

    public final aiu h()
    {
        return c;
    }

    public final boolean i()
    {
        int j = b + 1;
        b = j;
        return a != 0 && j > 0;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        a;
        JVM INSTR tableswitch 0 2: default 40
    //                   0 45
    //                   1 55
    //                   2 81;
           goto _L1 _L2 _L3 _L4
_L1:
        return stringbuilder.toString();
_L2:
        stringbuilder.append("/");
        continue; /* Loop/switch isn't completed */
_L3:
        stringbuilder.append('[');
        stringbuilder.append(f());
        stringbuilder.append(']');
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuilder.append('{');
        if (f != null)
        {
            stringbuilder.append('"');
            ajt.a(stringbuilder, f);
            stringbuilder.append('"');
        } else
        {
            stringbuilder.append('?');
        }
        stringbuilder.append('}');
        if (true) goto _L1; else goto _L5
_L5:
    }
}
