// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public class aij extends IOException
{

    protected aig a;

    protected aij(String s, aig aig1)
    {
        this(s, aig1, null);
    }

    protected aij(String s, aig aig1, Throwable throwable)
    {
        super(s);
        if (throwable != null)
        {
            initCause(throwable);
        }
        a = aig1;
    }

    public String getMessage()
    {
        Object obj = super.getMessage();
        String s = ((String) (obj));
        if (obj == null)
        {
            s = "N/A";
        }
        aig aig1 = a;
        obj = s;
        if (aig1 != null)
        {
            obj = new StringBuilder();
            ((StringBuilder) (obj)).append(s);
            ((StringBuilder) (obj)).append('\n');
            ((StringBuilder) (obj)).append(" at ");
            ((StringBuilder) (obj)).append(aig1.toString());
            obj = ((StringBuilder) (obj)).toString();
        }
        return ((String) (obj));
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getName()).append(": ").append(getMessage()).toString();
    }
}
