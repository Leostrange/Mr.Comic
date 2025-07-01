// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class ang.Object
    implements yu
{

    long a;
    long b;
    int c;
    int d;
    final abf e;

    public final long a()
    {
        return a * (long)c * (long)d;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbInfoAllocation[alloc=")).append(a).append(",free=").append(b).append(",sectPerAlloc=").append(c).append(",bytesPerSect=").append(d).append("]").toString());
    }

    (abf abf1)
    {
        e = abf1;
        super();
    }
}
