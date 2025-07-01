// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class vo
{

    static final boolean m;
    protected byte k[];
    protected int l;

    public vo(byte abyte0[])
    {
        k = abyte0;
    }

    public final int c()
    {
        if (!m && k == null)
        {
            throw new AssertionError();
        } else
        {
            return l;
        }
    }

    public void c(int i)
    {
        if (!m && k == null)
        {
            throw new AssertionError();
        }
        if (!m && (i < 0 || i >= k.length))
        {
            throw new AssertionError(i);
        } else
        {
            l = i;
            return;
        }
    }

    static 
    {
        boolean flag;
        if (!vo.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        m = flag;
    }
}
