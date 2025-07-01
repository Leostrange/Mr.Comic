// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.Serializable;

public final class ahr extends ahp
    implements Serializable
{

    public static final ahu a;
    public static final ahu b;

    protected ahr()
    {
    }

    public final boolean accept(File file)
    {
        return file.isDirectory();
    }

    static 
    {
        ahr ahr1 = new ahr();
        a = ahr1;
        b = ahr1;
    }
}
