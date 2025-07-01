// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class o extends Enum
{

    public static final n a;
    public static final n b;
    public static final n c;
    public static final n d;
    public static final n e;
    public static final n f;
    public static final n g;
    public static final n h;
    public static final n i;
    public static final n j;
    public static final n k;
    public static final n l;
    public static final n m;
    public static final n n;
    private static final n p[];
    public final String o;

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(fx$a, s);
    }

    public static lang.String[] values()
    {
        return (s[])p.clone();
    }

    static 
    {
        a = new <init>("TOKEN", 0, "com.amazon.identity.auth.device.authorization.token");
        b = new <init>("AUTHORIZATION_CODE", 1, "com.amazon.identity.auth.device.authorization.authorizationCode");
        c = new <init>("DIRECTED_ID", 2, "com.amazon.identity.auth.device.authorization.directedId");
        d = new <init>("DEVICE_ID", 3, "com.amazon.identity.auth.device.authorization.deviceId");
        e = new <init>("APP_ID", 4, "com.amazon.identity.auth.device.authorization.appId");
        f = new <init>("CAUSE_ID", 5, "com.amazon.identity.auth.device.authorization.causeId");
        g = new <init>("REJECTED_SCOPE_LIST", 6, "com.amazon.identity.auth.device.authorization.ungrantedScopes");
        h = new <init>("AUTHORIZE", 7, "com.amazon.identity.auth.device.authorization.authorize");
        i = new <init>("CLIENT_ID", 8, "com.amazon.identity.auth.device.authorization.clietId");
        j = new <init>("ON_CANCEL_TYPE", 9, "com.amazon.identity.auth.device.authorization.onCancelType");
        k = new <init>("ON_CANCEL_DESCRIPTION", 10, "com.amazon.identity.auth.device.authorization.onCancelDescription");
        l = new <init>("BROWSER_AUTHORIZATION", 11, "com.amazon.identity.auth.device.authorization.useBrowserForAuthorization");
        m = new <init>("PROFILE", 12, "com.amazon.identity.auth.device.authorization.profile");
        n = new <init>("FUTURE", 13, "com.amazon.identity.auth.device.authorization.future.type");
        p = (new p[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m, n
        });
    }

    private >(String s, int i1, String s1)
    {
        super(s, i1);
        o = s1;
    }
}
