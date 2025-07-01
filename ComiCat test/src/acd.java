// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

public final class acd extends IOException
{

    public Throwable a;

    public acd()
    {
    }

    public acd(String s)
    {
        super(s);
    }

    public acd(String s, Throwable throwable)
    {
        super(s);
        a = throwable;
    }

    public acd(Throwable throwable)
    {
        a = throwable;
    }

    public final String toString()
    {
        if (a != null)
        {
            StringWriter stringwriter = new StringWriter();
            PrintWriter printwriter = new PrintWriter(stringwriter);
            a.printStackTrace(printwriter);
            return (new StringBuilder()).append(super.toString()).append("\n").append(stringwriter).toString();
        } else
        {
            return super.toString();
        }
    }
}
