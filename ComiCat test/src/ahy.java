// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.Serializable;

public final class ahy
    implements ahu, Serializable
{

    public static final ahu a;
    public static final ahu b;

    protected ahy()
    {
    }

    public final boolean accept(File file)
    {
        return true;
    }

    public final boolean accept(File file, String s)
    {
        return true;
    }

    static 
    {
        ahy ahy1 = new ahy();
        a = ahy1;
        b = ahy1;
    }
}
