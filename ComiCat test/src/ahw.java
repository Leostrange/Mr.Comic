// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.Serializable;

public final class ahw extends ahp
    implements Serializable
{

    private final ahu a;

    public ahw(ahu ahu1)
    {
        if (ahu1 == null)
        {
            throw new IllegalArgumentException("The filter must not be null");
        } else
        {
            a = ahu1;
            return;
        }
    }

    public final boolean accept(File file)
    {
        return !a.accept(file);
    }

    public final boolean accept(File file, String s)
    {
        return !a.accept(file, s);
    }

    public final String toString()
    {
        return (new StringBuilder()).append(super.toString()).append("(").append(a.toString()).append(")").toString();
    }
}
