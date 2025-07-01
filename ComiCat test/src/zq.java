// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Date;
import java.util.TimeZone;

final class zq extends zm
{

    private int a;
    private long b;

    zq(int i1)
    {
        a = i1;
        b = 0L;
        g = 4;
    }

    final int i(byte abyte0[], int i1)
    {
        long l2;
        a(a, abyte0, i1);
        i1 += 2;
        l2 = b;
        if (l2 != 0L && l2 != -1L) goto _L2; else goto _L1
_L1:
        zm.b(-1L, abyte0, i1);
_L8:
        return 6;
_L2:
        TimeZone timezone = zm.ak;
        timezone;
        JVM INSTR monitorenter ;
        if (!zm.ak.inDaylightTime(new Date())) goto _L4; else goto _L3
_L3:
        long l1 = l2;
        if (!zm.ak.inDaylightTime(new Date(l2)))
        {
            l1 = l2 - 0x36ee80L;
        }
_L6:
        timezone;
        JVM INSTR monitorexit ;
        zm.b((int)(l1 / 1000L), abyte0, i1);
        continue; /* Loop/switch isn't completed */
_L4:
        l1 = l2;
        if (!zm.ak.inDaylightTime(new Date(l2))) goto _L6; else goto _L5
_L5:
        l1 = l2 + 0x36ee80L;
          goto _L6
        abyte0;
        timezone;
        JVM INSTR monitorexit ;
        throw abyte0;
        if (true) goto _L8; else goto _L7
_L7:
    }

    final int j(byte abyte0[], int i1)
    {
        return 0;
    }

    final int k(byte abyte0[], int i1)
    {
        return 0;
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComClose[")).append(super.toString()).append(",fid=").append(a).append(",lastWriteTime=").append(b).append("]").toString());
    }
}
