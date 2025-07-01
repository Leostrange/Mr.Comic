// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


static final class lang.String extends String
{

    final char q;
    final char r;

    public final boolean a(char c)
    {
        return q <= c && c <= r;
    }

    >(String s, char c, char c1)
    {
        q = c;
        r = c1;
        super(s);
    }
}
