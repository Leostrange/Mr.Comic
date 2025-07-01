// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abj extends aah
{

    private aau a;

    abj(aau aau1)
    {
        a = aau1;
    }

    final int a(byte abyte0[], int i)
    {
        return 0;
    }

    final int a(byte abyte0[], int i, int j)
    {
        if (a.q != null)
        {
            abq abq1 = (abq)a.q;
            synchronized (abq1.b)
            {
                abq1.b(abyte0, i, j);
                abq1.b.notify();
            }
            return j;
        } else
        {
            return j;
        }
        abyte0;
        obj;
        JVM INSTR monitorexit ;
        throw abyte0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("TransCallNamedPipeResponse[")).append(super.toString()).append("]").toString());
    }
}
