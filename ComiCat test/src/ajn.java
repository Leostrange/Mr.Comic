// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ajn extends ajm
{

    static final ajn c = new ajn("", 0, 0);
    final int d;

    ajn(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static final ajn b()
    {
        return c;
    }

    public final boolean a(int i)
    {
        return i == d;
    }

    public final boolean a(int i, int j)
    {
        return i == d && j == 0;
    }

    public final boolean a(int ai[], int i)
    {
        return i == 1 && ai[0] == d;
    }

}
