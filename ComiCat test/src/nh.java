// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.util.Iterator;

public final class nh
{

    private final String a;

    public nh(String s)
    {
        a = (String)ni.a(s);
    }

    private static CharSequence a(Object obj)
    {
        ni.a(obj);
        if (obj instanceof CharSequence)
        {
            return (CharSequence)obj;
        } else
        {
            return obj.toString();
        }
    }

    public final StringBuilder a(StringBuilder stringbuilder, Iterator iterator)
    {
        try
        {
            ni.a(stringbuilder);
            if (iterator.hasNext())
            {
                stringbuilder.append(a(iterator.next()));
                for (; iterator.hasNext(); stringbuilder.append(a(iterator.next())))
                {
                    stringbuilder.append(a);
                }

            }
        }
        // Misplaced declaration of an exception variable
        catch (StringBuilder stringbuilder)
        {
            throw new AssertionError(stringbuilder);
        }
        return stringbuilder;
    }
}
