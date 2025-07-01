// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;

public final class aig
    implements Serializable
{

    public static final aig a = new aig("N/A", -1L, -1, -1, (byte)0);
    final long b;
    final long c;
    final int d;
    final int e;
    final Object f;

    public aig(Object obj, long l, int i, int j)
    {
        this(obj, l, i, j, (byte)0);
    }

    private aig(Object obj, long l, int i, int j, byte byte0)
    {
        f = obj;
        b = -1L;
        c = l;
        d = i;
        e = j;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (!(obj instanceof aig))
            {
                return false;
            }
            obj = (aig)obj;
            if (f == null)
            {
                if (((aig) (obj)).f != null)
                {
                    return false;
                }
            } else
            if (!f.equals(((aig) (obj)).f))
            {
                return false;
            }
            if (d != ((aig) (obj)).d || e != ((aig) (obj)).e || c != ((aig) (obj)).c || b != ((aig) (obj)).b)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        int i;
        if (f == null)
        {
            i = 1;
        } else
        {
            i = f.hashCode();
        }
        return ((i ^ d) + e ^ (int)c) + (int)b;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(80);
        stringbuilder.append("[Source: ");
        if (f == null)
        {
            stringbuilder.append("UNKNOWN");
        } else
        {
            stringbuilder.append(f.toString());
        }
        stringbuilder.append("; line: ");
        stringbuilder.append(d);
        stringbuilder.append(", column: ");
        stringbuilder.append(e);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

}
