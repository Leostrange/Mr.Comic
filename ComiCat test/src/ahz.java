// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.io.Writer;

public final class ahz extends Writer
    implements Serializable
{

    private final StringBuilder a;

    public ahz()
    {
        a = new StringBuilder();
    }

    public ahz(byte byte0)
    {
        a = new StringBuilder(4);
    }

    public final Writer append(char c)
    {
        a.append(c);
        return this;
    }

    public final Writer append(CharSequence charsequence)
    {
        a.append(charsequence);
        return this;
    }

    public final Writer append(CharSequence charsequence, int i, int j)
    {
        a.append(charsequence, i, j);
        return this;
    }

    public final volatile Appendable append(char c)
    {
        return append(c);
    }

    public final volatile Appendable append(CharSequence charsequence)
    {
        return append(charsequence);
    }

    public final volatile Appendable append(CharSequence charsequence, int i, int j)
    {
        return append(charsequence, i, j);
    }

    public final void close()
    {
    }

    public final void flush()
    {
    }

    public final String toString()
    {
        return a.toString();
    }

    public final void write(String s)
    {
        if (s != null)
        {
            a.append(s);
        }
    }

    public final void write(char ac[], int i, int j)
    {
        if (ac != null)
        {
            a.append(ac, i, j);
        }
    }
}
