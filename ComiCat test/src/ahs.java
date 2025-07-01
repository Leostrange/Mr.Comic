// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.Serializable;

public final class ahs
    implements ahu, Serializable
{

    public static final ahu a;
    public static final ahu b;

    protected ahs()
    {
    }

    public final boolean accept(File file)
    {
        return false;
    }

    public final boolean accept(File file, String s)
    {
        return false;
    }

    static 
    {
        ahs ahs1 = new ahs();
        a = ahs1;
        b = ahs1;
    }
}
