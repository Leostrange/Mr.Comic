// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class >
{

    long a;
    long b;
    private long c;

    public final long a()
    {
        return c & 0xffffffffL;
    }

    public final void a(long l)
    {
        a = 0xffffffffL & l;
    }

    public final void b(long l)
    {
        c = 0xffffffffL & l;
    }

    public final void c(long l)
    {
        b = 0xffffffffL & l;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SubRange[");
        stringbuilder.append("\n  lowCount=");
        stringbuilder.append(c);
        stringbuilder.append("\n  highCount=");
        stringbuilder.append(a);
        stringbuilder.append("\n  scale=");
        stringbuilder.append(b);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public >()
    {
    }
}
