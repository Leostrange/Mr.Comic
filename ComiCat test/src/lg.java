// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class lg
    implements lh
{

    private final String a;
    private final String b;

    public lg()
    {
        this((byte)0);
    }

    private lg(byte byte0)
    {
        this('\0');
    }

    private lg(char c)
    {
        a = null;
        b = null;
    }

    public void a(lf lf1)
    {
        if (a != null)
        {
            lf1.e("key", a);
        }
        if (b != null)
        {
            lf1.e("userIp", b);
        }
    }
}
