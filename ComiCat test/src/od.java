// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class od
    implements oj
{

    private final oj a;
    private final int b;
    private final Level c;
    private final Logger d;

    public od(oj oj1, Logger logger, Level level, int i)
    {
        a = oj1;
        d = logger;
        c = level;
        b = i;
    }

    public final void a(OutputStream outputstream)
    {
        oc oc1 = new oc(outputstream, d, c, b);
        a.a(oc1);
        oc1.a.close();
        outputstream.flush();
        return;
        outputstream;
        oc1.a.close();
        throw outputstream;
    }
}
