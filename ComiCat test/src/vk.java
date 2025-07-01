// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vk extends Enum
{

    public static final vk a;
    public static final vk b;
    private static final vk d[];
    private int c;

    private vk(String s, int i, int j)
    {
        super(s, i);
        c = j;
    }

    public static vk valueOf(String s)
    {
        return (vk)Enum.valueOf(vk, s);
    }

    public static vk[] values()
    {
        return (vk[])d.clone();
    }

    static 
    {
        a = new vk("BLOCK_LZ", 0, 0);
        b = new vk("BLOCK_PPM", 1, 1);
        d = (new vk[] {
            a, b
        });
    }
}
