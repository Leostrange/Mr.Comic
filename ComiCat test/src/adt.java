// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;

public final class adt
    implements adc
{

    oz a;
    String b;
    List c;

    public adt(oz oz1, String s)
    {
        a = oz1;
        b = s;
        c = null;
    }

    public final String a()
    {
        (new StringBuilder("Entry title is: ")).append(a.title);
        return a.title;
    }

    public final String b()
    {
        return agp.b(b, a());
    }

    public final String c()
    {
        return a.id;
    }

    public final boolean d()
    {
        return a != null;
    }

    public final boolean e()
    {
        return "application/vnd.google-apps.folder".equals(a.mimeType);
    }

    public final long f()
    {
        return a.fileSize.longValue();
    }

    public final String g()
    {
        return a.md5Checksum;
    }
}
