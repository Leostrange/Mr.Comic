// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.box.androidsdk.content.models.BoxFile;

final class adk
    implements adc
{

    BoxFile a;
    String b;

    adk(BoxFile boxfile, String s)
    {
        a = boxfile;
        b = s;
    }

    public final String a()
    {
        return a.getName();
    }

    public final String b()
    {
        return agp.b(b, a.getName());
    }

    public final String c()
    {
        return a.getId();
    }

    public final boolean d()
    {
        return true;
    }

    public final boolean e()
    {
        return false;
    }

    public final long f()
    {
        return a.getSize().longValue();
    }

    public final String g()
    {
        return a.getSha1();
    }
}
