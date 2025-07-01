// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;

public final class iq
{

    private final io a;

    public iq(io io1)
    {
        a = io1;
    }

    public final hi a(it it, List list)
    {
        try
        {
            it = a.a(a.a.c, "2/files/download", it, list, it.a.a, iw.a.a, iu.a.a);
        }
        // Misplaced declaration of an exception variable
        catch (it it)
        {
            throw new iv("2/files/download", ((ho) (it)).b, ((ho) (it)).c, (iu)((ho) (it)).a);
        }
        return it;
    }

    public final jh a(jb jb)
    {
        try
        {
            jb = (jh)a.a(a.a.b, "2/files/list_folder", jb, jb.a.a, jh.a.a, jf.a.a);
        }
        // Misplaced declaration of an exception variable
        catch (jb jb)
        {
            throw new jg("2/files/list_folder", ((ho) (jb)).b, ((ho) (jb)).c, (jf)((ho) (jb)).a);
        }
        return jb;
    }

    public final jh a(jc jc)
    {
        try
        {
            jc = (jh)a.a(a.a.b, "2/files/list_folder/continue", jc, jc.a.a, jh.a.a, jd.a.a);
        }
        // Misplaced declaration of an exception variable
        catch (jc jc)
        {
            throw new je("2/files/list_folder/continue", ((ho) (jc)).b, ((ho) (jc)).c, (jd)((ho) (jc)).a);
        }
        return jc;
    }
}
