// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vu
{

    int a;
    int b;
    int c;

    public vu()
    {
    }

    public final void a(int i)
    {
        a = i & 0xff;
    }

    public final void a(vt vt1)
    {
        b(vt1.b());
        c = vt1.d();
        a(vt1.a());
    }

    public final void b(int i)
    {
        b = i & 0xff;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("State[");
        stringbuilder.append("\n  symbol=");
        stringbuilder.append(a);
        stringbuilder.append("\n  freq=");
        stringbuilder.append(b);
        stringbuilder.append("\n  successor=");
        stringbuilder.append(c);
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }
}
