// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ue extends Exception
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        private static final a j[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(ue$a, s);
        }

        public static a[] values()
        {
            return (a[])j.clone();
        }

        static 
        {
            a = new a("notImplementedYet", 0);
            b = new a("crcError", 1);
            c = new a("notRarArchive", 2);
            d = new a("badRarArchive", 3);
            e = new a("unkownError", 4);
            f = new a("headerNotInArchive", 5);
            g = new a("wrongHeaderType", 6);
            h = new a("ioError", 7);
            i = new a("rarEncryptedException", 8);
            j = (new a[] {
                a, b, c, d, e, f, g, h, i
            });
        }

        private a(String s, int k)
        {
            super(s, k);
        }
    }


    private a a;

    public ue(Exception exception)
    {
        super(a.e.name(), exception);
        a = a.e;
    }

    public ue(a a1)
    {
        super(a1.name());
        a = a1;
    }
}
