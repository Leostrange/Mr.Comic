// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public class mu extends nw
    implements Cloneable
{

    mv a;

    public mu()
    {
    }

    public mu a()
    {
        return (mu)super.d();
    }

    public mu a(String s, Object obj)
    {
        return (mu)super.d(s, obj);
    }

    public final String c()
    {
        if (a != null)
        {
            return a.a(this, true);
        } else
        {
            return super.toString();
        }
    }

    public Object clone()
    {
        return a();
    }

    public nw d()
    {
        return a();
    }

    public nw d(String s, Object obj)
    {
        return a(s, obj);
    }

    public String toString()
    {
        if (a != null)
        {
            String s;
            try
            {
                s = a.a(this, false);
            }
            catch (IOException ioexception)
            {
                throw om.a(ioexception);
            }
            return s;
        } else
        {
            return super.toString();
        }
    }
}
