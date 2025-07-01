// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class rl
{

    private static ro c = null;
    qa a;
    byte b[];

    public rl(qa qa1)
    {
        b = new byte[4];
        a = qa1;
    }

    static void a(ro ro)
    {
        c = ro;
    }

    public final void a()
    {
        a.c = 5;
    }

    final void a(int i)
    {
        int l = a.c;
        int k = -l & i - 1;
        int j = k;
        if (k < i)
        {
            j = k + i;
        }
        i = (l + j) - 4;
        b[0] = (byte)(i >>> 24);
        b[1] = (byte)(i >>> 16);
        b[2] = (byte)(i >>> 8);
        b[3] = (byte)i;
        System.arraycopy(b, 0, a.b, 0, 4);
        a.b[4] = (byte)j;
        synchronized (c) { }
        a.b(j);
        return;
        exception;
        ro;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
