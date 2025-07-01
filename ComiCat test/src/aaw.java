// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class aaw
    implements za
{

    protected String b;
    protected int c;
    protected String d;

    public aaw()
    {
    }

    public aaw(String s)
    {
        b = s;
        c = 0;
        d = null;
    }

    public final String a()
    {
        return b;
    }

    public final int b()
    {
        switch (c & 0xffff)
        {
        case 2: // '\002'
        default:
            return 8;

        case 1: // '\001'
            return 32;

        case 3: // '\003'
            return 16;
        }
    }

    public final int c()
    {
        return 17;
    }

    public final long d()
    {
        return 0L;
    }

    public final long e()
    {
        return 0L;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof aaw)
        {
            obj = (aaw)obj;
            return b.equals(((aaw) (obj)).b);
        } else
        {
            return false;
        }
    }

    public final long f()
    {
        return 0L;
    }

    public int hashCode()
    {
        return b.hashCode();
    }

    public String toString()
    {
        return new String((new StringBuilder("SmbShareInfo[netName=")).append(b).append(",type=0x").append(abw.a(c, 8)).append(",remark=").append(d).append("]").toString());
    }
}
