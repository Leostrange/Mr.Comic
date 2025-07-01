// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Map;

public final class yy extends aaq
{

    public int a;
    public long b;
    public String c;
    public String d;
    public String e;
    public String f;
    public boolean g;
    public long h;
    yy i;
    Map j;
    String k;

    public yy()
    {
        k = null;
        i = this;
    }

    public final String toString()
    {
        return (new StringBuilder("DfsReferral[pathConsumed=")).append(a).append(",server=").append(c).append(",share=").append(d).append(",link=").append(e).append(",path=").append(f).append(",ttl=").append(b).append(",expiration=").append(h).append(",resolveHashes=").append(g).append("]").toString();
    }
}
