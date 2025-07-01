// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.OutputStream;

public abstract class lm
    implements ls
{

    public String a;
    public boolean b;

    public lm(String s)
    {
        b = true;
        a(s);
    }

    public lm a(String s)
    {
        a = s;
        return this;
    }

    public lm a(boolean flag)
    {
        b = flag;
        return this;
    }

    public final void a(OutputStream outputstream)
    {
        nx.a(b(), outputstream, b);
        outputstream.flush();
    }

    public abstract InputStream b();

    public final String c()
    {
        return a;
    }
}
