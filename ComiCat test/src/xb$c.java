// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


static final class > extends xb
{

    public final int a(Object obj)
    {
        int i = System.identityHashCode(obj);
        if (!xb.b)
        {
            return i;
        } else
        {
            i += ~(i << 9);
            i ^= i >>> 14;
            i += i << 4;
            return i ^ i >>> 10;
        }
    }

    public final boolean a(Object obj, Object obj1)
    {
        return obj == obj1;
    }

    public final int compare(Object obj, Object obj1)
    {
        return ((Comparable)obj).compareTo(obj1);
    }

    public final String toString()
    {
        return "Identity";
    }

    private >()
    {
    }

    >(byte byte0)
    {
        this();
    }
}
