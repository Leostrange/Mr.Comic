// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class acw
{

    public static final acw b = new acw(0);
    public static final acw c = new acw(0x10001);
    public static final acw d = new acw(4097);
    public static final acw e = new acw(0x1000001);
    public static final acw f = new acw(4096);
    public static final acw g = new acw(0x100000);
    public static final acw h = new acw(0x100001);
    public static final acw i = new acw(0x100002);
    public static final acw j = new acw(0x100003);
    public int a;

    private acw(int k)
    {
        a = 0;
        a = k;
    }

    public final boolean a()
    {
        return (a & 0x10000) == 0x10000;
    }

}
