// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class lang.String extends Enum
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    public static final i f;
    public static final i g;
    public static final i h;
    public static final i i;
    private static final i j[];

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(ue$a, s);
    }

    public static lang.String[] values()
    {
        return (s[])j.clone();
    }

    static 
    {
        a = new <init>("notImplementedYet", 0);
        b = new <init>("crcError", 1);
        c = new <init>("notRarArchive", 2);
        d = new <init>("badRarArchive", 3);
        e = new <init>("unkownError", 4);
        f = new <init>("headerNotInArchive", 5);
        g = new <init>("wrongHeaderType", 6);
        h = new <init>("ioError", 7);
        i = new <init>("rarEncryptedException", 8);
        j = (new j[] {
            a, b, c, d, e, f, g, h, i
        });
    }

    private >(String s, int k)
    {
        super(s, k);
    }
}
