// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class fx
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
        public static final a j;
        public static final a k;
        public static final a l;
        public static final a m;
        public static final a n;
        private static final a p[];
        public final String o;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(fx$a, s);
        }

        public static a[] values()
        {
            return (a[])p.clone();
        }

        static 
        {
            a = new a("TOKEN", 0, "com.amazon.identity.auth.device.authorization.token");
            b = new a("AUTHORIZATION_CODE", 1, "com.amazon.identity.auth.device.authorization.authorizationCode");
            c = new a("DIRECTED_ID", 2, "com.amazon.identity.auth.device.authorization.directedId");
            d = new a("DEVICE_ID", 3, "com.amazon.identity.auth.device.authorization.deviceId");
            e = new a("APP_ID", 4, "com.amazon.identity.auth.device.authorization.appId");
            f = new a("CAUSE_ID", 5, "com.amazon.identity.auth.device.authorization.causeId");
            g = new a("REJECTED_SCOPE_LIST", 6, "com.amazon.identity.auth.device.authorization.ungrantedScopes");
            h = new a("AUTHORIZE", 7, "com.amazon.identity.auth.device.authorization.authorize");
            i = new a("CLIENT_ID", 8, "com.amazon.identity.auth.device.authorization.clietId");
            j = new a("ON_CANCEL_TYPE", 9, "com.amazon.identity.auth.device.authorization.onCancelType");
            k = new a("ON_CANCEL_DESCRIPTION", 10, "com.amazon.identity.auth.device.authorization.onCancelDescription");
            l = new a("BROWSER_AUTHORIZATION", 11, "com.amazon.identity.auth.device.authorization.useBrowserForAuthorization");
            m = new a("PROFILE", 12, "com.amazon.identity.auth.device.authorization.profile");
            n = new a("FUTURE", 13, "com.amazon.identity.auth.device.authorization.future.type");
            p = (new a[] {
                a, b, c, d, e, f, g, h, i, j, 
                k, l, m, n
            });
        }

        private a(String s, int i1, String s1)
        {
            super(s, i1);
            o = s1;
        }
    }

}
