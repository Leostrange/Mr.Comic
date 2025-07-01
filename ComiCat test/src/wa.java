// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class wa extends Enum
{

    public static final wa a;
    public static final wa b;
    public static final wa c;
    private static final wa e[];
    public int d;

    private wa(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static wa valueOf(String s)
    {
        return (wa)Enum.valueOf(wa, s);
    }

    public static wa[] values()
    {
        return (wa[])e.clone();
    }

    static 
    {
        a = new wa("VM_FC", 0, 1);
        b = new wa("VM_FZ", 1, 2);
        c = new wa("VM_FS", 2, 0x80000000);
        e = (new wa[] {
            a, b, c
        });
    }
}
