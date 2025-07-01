// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;

public final class hk
{

    public static final hk a = new hk("api.dropboxapi.com", "content.dropboxapi.com", "www.dropbox.com", "notify.dropboxapi.com");
    public static final ib e = new ib() {

    };
    public static final ic f = new ic() {

    };
    public final String b;
    public final String c;
    public final String d;
    private final String g;

    private hk(String s, String s1, String s2, String s3)
    {
        b = s;
        c = s1;
        g = s2;
        d = s3;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj instanceof hk)
            {
                if (!((hk) (obj = (hk)obj)).b.equals(b) || !((hk) (obj)).c.equals(c) || !((hk) (obj)).g.equals(g) || !((hk) (obj)).d.equals(d))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return Arrays.hashCode(new String[] {
            b, c, g, d
        });
    }

}
