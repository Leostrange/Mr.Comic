// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class abr extends aat
{

    private String b;
    private aau c;
    private byte d[];
    private boolean e;

    public abr(aau aau1)
    {
        boolean flag = true;
        super(aau1, aau1.s & 0xffff00ff | 0x20);
        d = new byte[1];
        c = aau1;
        if ((aau1.s & 0x600) != 1536)
        {
            flag = false;
        }
        e = flag;
        b = aau1.j;
    }

    public final void close()
    {
        c.c();
    }

    public final void write(int i)
    {
        d[0] = (byte)i;
        write(d, 0, 1);
    }

    public final void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public final void write(byte abyte0[], int i, int j)
    {
        int k = j;
        if (j < 0)
        {
            k = 0;
        }
        if ((c.s & 0x100) == 256)
        {
            c.a(new abo(b), new abp());
            c.a(new abi(b, abyte0, i, k), new abj(c));
        } else
        if ((c.s & 0x200) == 512)
        {
            a();
            abyte0 = new abm(c.k, abyte0, i, k);
            if (e)
            {
                abyte0.O = 1024;
            }
            c.a(abyte0, new abn(c));
            return;
        }
    }
}
