// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ajp extends ajm
{

    final int c;
    final int d;
    final int e;

    ajp(String s, int i, int j, int k, int l)
    {
        super(s, i);
        c = j;
        d = k;
        e = l;
    }

    public final boolean a(int i)
    {
        return false;
    }

    public final boolean a(int i, int j)
    {
        return false;
    }

    public final boolean a(int ai[], int i)
    {
        return i == 3 && ai[0] == c && ai[1] == d && ai[2] == e;
    }
}
