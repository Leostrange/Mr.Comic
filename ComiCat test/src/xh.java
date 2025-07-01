// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.logging.Logger;

public class xh extends wo
{

    private Logger i;

    public xh()
    {
        this(Logger.getLogger(""));
    }

    private xh(Logger logger)
    {
        i = logger;
    }

    protected final void a(String s, CharSequence charsequence)
    {
        i.info((new StringBuilder("[")).append(s).append("] ").append(charsequence).toString());
    }

    public final void b(CharSequence charsequence)
    {
        i.warning(charsequence.toString());
    }

    public final void b(Throwable throwable)
    {
        String s = "";
        if (throwable != null)
        {
            s = (new StringBuilder()).append(throwable.toString()).append(" ").append("").toString();
        }
        i.severe(s);
    }
}
