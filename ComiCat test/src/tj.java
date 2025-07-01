// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class tj
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(tj$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        static 
        {
            a = new a("ANDROID_PHONE", 0);
            b = new a("ANDROID_TABLET", 1);
            c = (new a[] {
                a, b
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;
        private static final b g[];

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(tj$b, s);
        }

        public static b[] values()
        {
            return (b[])g.clone();
        }

        static 
        {
            a = new b("INVALID_CLIENT", 0);
            b = new b("INVALID_GRANT", 1);
            c = new b("INVALID_REQUEST", 2);
            d = new b("INVALID_SCOPE", 3);
            e = new b("UNAUTHORIZED_CLIENT", 4);
            f = new b("UNSUPPORTED_GRANT_TYPE", 5);
            g = (new b[] {
                a, b, c, d, e, f
            });
        }

        private b(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class c extends Enum
    {

        public static final c a;
        public static final c b;
        public static final c c;
        public static final c d;
        private static final c e[];

        public static c valueOf(String s)
        {
            return (c)Enum.valueOf(tj$c, s);
        }

        public static c[] values()
        {
            return (c[])e.clone();
        }

        static 
        {
            a = new c("AUTHORIZATION_CODE", 0);
            b = new c("CLIENT_CREDENTIALS", 1);
            c = new c("PASSWORD", 2);
            d = new c("REFRESH_TOKEN", 3);
            e = (new c[] {
                a, b, c, d
            });
        }

        private c(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class d extends Enum
    {

        public static final d a;
        public static final d b;
        private static final d c[];

        public static d valueOf(String s)
        {
            return (d)Enum.valueOf(tj$d, s);
        }

        public static d[] values()
        {
            return (d[])c.clone();
        }

        static 
        {
            a = new d("CODE", 0);
            b = new d("TOKEN", 1);
            c = (new d[] {
                a, b
            });
        }

        private d(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class e extends Enum
    {

        public static final e a;
        private static final e b[];

        public static e valueOf(String s)
        {
            return (e)Enum.valueOf(tj$e, s);
        }

        public static e[] values()
        {
            return (e[])b.clone();
        }

        static 
        {
            a = new e("BEARER");
            b = (new e[] {
                a
            });
        }

        private e(String s)
        {
            super(s, 0);
        }
    }

}
