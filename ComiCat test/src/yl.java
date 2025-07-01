// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public final class yl extends IOException
{

    public int a;
    public int b;

    public yl(int i)
    {
        super(a(2, i));
        a = 2;
        b = i;
    }

    private static String a(int i, int j)
    {
        i;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 53
    //                   1 74
    //                   2 163;
           goto _L1 _L2 _L3 _L4
_L1:
        return (new StringBuilder()).append("").append("unknown error class: ").append(i).toString();
_L2:
        return (new StringBuilder()).append("").append("SUCCESS").toString();
_L3:
        String s = (new StringBuilder()).append("").append("ERR_NAM_SRVC/").toString();
        j;
        JVM INSTR tableswitch 1 1: default 116
    //                   1 140;
           goto _L5 _L6
_L5:
        return (new StringBuilder()).append(s).append("Unknown error code: ").append(j).toString();
_L6:
        s = (new StringBuilder()).append(s).append("FMT_ERR: Format Error").toString();
          goto _L5
_L4:
        String s1 = (new StringBuilder()).append("").append("ERR_SSN_SRVC/").toString();
        switch (j)
        {
        default:
            return (new StringBuilder()).append(s1).append("Unknown error code: ").append(j).toString();

        case -1: 
            return (new StringBuilder()).append(s1).append("Connection refused").toString();

        case 128: 
            return (new StringBuilder()).append(s1).append("Not listening on called name").toString();

        case 129: 
            return (new StringBuilder()).append(s1).append("Not listening for calling name").toString();

        case 130: 
            return (new StringBuilder()).append(s1).append("Called name not present").toString();

        case 131: 
            return (new StringBuilder()).append(s1).append("Called name present, but insufficient resources").toString();

        case 143: 
            return (new StringBuilder()).append(s1).append("Unspecified error").toString();
        }
    }

    public final String toString()
    {
        return new String((new StringBuilder("errorClass=")).append(a).append(",errorCode=").append(b).append(",errorString=").append(a(a, b)).toString());
    }
}
