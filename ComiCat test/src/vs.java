// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vs
{

    int a;
    int b;
    int c;

    public vs()
    {
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SEE2Context[");
        stringbuilder.append("\n  size=");
        stringbuilder.append(4);
        stringbuilder.append("\n  summ=");
        stringbuilder.append(a);
        stringbuilder.append("\n  shift=");
        stringbuilder.append(b);
        stringbuilder.append("\n  count=");
        stringbuilder.append(c);
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }
}
