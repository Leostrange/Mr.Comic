// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class wb extends Enum
{

    public static final wb a;
    public static final wb b;
    public static final wb c;
    public static final wb d;
    private static final wb f[];
    private int e;

    private wb(String s, int i, int j)
    {
        super(s, i);
        e = j;
    }

    public static wb valueOf(String s)
    {
        return (wb)Enum.valueOf(wb, s);
    }

    public static wb[] values()
    {
        return (wb[])f.clone();
    }

    static 
    {
        a = new wb("VM_OPREG", 0, 0);
        b = new wb("VM_OPINT", 1, 1);
        c = new wb("VM_OPREGMEM", 2, 2);
        d = new wb("VM_OPNONE", 3, 3);
        f = (new wb[] {
            a, b, c, d
        });
    }
}
