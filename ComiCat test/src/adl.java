// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.box.androidsdk.content.models.BoxFolder;
import java.util.ArrayList;

final class adl
    implements adc
{

    BoxFolder a;
    String b;
    ArrayList c;

    public adl(BoxFolder boxfolder, String s)
    {
        a = boxfolder;
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
        return null;
    }

    public final boolean d()
    {
        return true;
    }

    public final boolean e()
    {
        return true;
    }

    public final long f()
    {
        return 0L;
    }

    public final String g()
    {
        return null;
    }
}
