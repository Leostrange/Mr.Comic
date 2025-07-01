// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device;


// Referenced classes of package com.amazon.identity.auth.device:
//            AuthError

public static final class A extends Enum
{

    private static final z B[];
    public static final z a;
    public static final z b;
    public static final z c;
    public static final z d;
    public static final z e;
    public static final z f;
    public static final z g;
    public static final z h;
    public static final z i;
    public static final z j;
    public static final z k;
    public static final z l;
    public static final z m;
    public static final z n;
    public static final z o;
    public static final z p;
    public static final z q;
    public static final z r;
    public static final z s;
    public static final z t;
    public static final z u;
    public static final z v;
    public static final z w;
    public static final z x;
    public static final z y;
    public static final z z;
    final z A;

    public static A valueOf(String s1)
    {
        return (A)Enum.valueOf(com/amazon/identity/auth/device/AuthError$b, s1);
    }

    public static A[] values()
    {
        return (A[])B.clone();
    }

    static 
    {
        a = new <init>("ERROR_INVALID_TOKEN", 0, a);
        b = new <init>("ERROR_INVALID_GRANT", 1, a);
        c = new <init>("ERROR_INVALID_CLIENT", 2, a);
        d = new <init>("ERROR_INVALID_SCOPE", 3, a);
        e = new <init>("ERROR_UNAUTHORIZED_CLIENT", 4, a);
        f = new <init>("ERROR_WEBVIEW_SSL", 5, a);
        g = new <init>("ERROR_ACCESS_DENIED", 6, a);
        h = new <init>("ERROR_COM", 7, c);
        i = new <init>("ERROR_IO", 8, c);
        j = new <init>("ERROR_UNKNOWN", 9, e);
        k = new <init>("ERROR_BAD_PARAM", 10, d);
        l = new <init>("ERROR_JSON", 11, d);
        m = new <init>("ERROR_PARSE", 12, d);
        n = new <init>("ERROR_SERVER_REPSONSE", 13, d);
        o = new <init>("ERROR_DATA_STORAGE", 14, d);
        p = new <init>("ERROR_THREAD", 15, d);
        q = new <init>("ERROR_DCP_DMS", 16, a);
        r = new <init>("ERROR_FORCE_UPDATE", 17, a);
        s = new <init>("ERROR_REVOKE_AUTH", 18, d);
        t = new <init>("ERROR_AUTH_DIALOG", 19, d);
        u = new <init>("ERROR_BAD_API_PARAM", 20, b);
        v = new <init>("ERROR_INIT", 21, b);
        w = new <init>("ERROR_RESOURCES", 22, b);
        x = new <init>("ERROR_DIRECTED_ID_NOT_FOUND", 23, b);
        y = new <init>("ERROR_INVALID_API", 24, b);
        z = new <init>("ERROR_SECURITY", 25, b);
        B = (new B[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m, n, o, p, q, r, s, t, 
            u, v, w, x, y, z
        });
    }

    private (String s1, int i1,  )
    {
        super(s1, i1);
        A = ;
    }
}
