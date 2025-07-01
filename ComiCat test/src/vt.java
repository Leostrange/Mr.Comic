// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vt extends vo
{

    public vt(byte abyte0[])
    {
        super(abyte0);
    }

    public static void a(vt vt1, vt vt2)
    {
        byte abyte0[] = vt1.k;
        byte abyte1[] = vt2.k;
        int k = 0;
        int j = vt1.l;
        for (int i = vt2.l; k < 6; i++)
        {
            byte byte0 = abyte0[j];
            abyte0[j] = abyte1[i];
            abyte1[i] = byte0;
            k++;
            j++;
        }

    }

    public final int a()
    {
        return k[l] & 0xff;
    }

    public final vt a(byte abyte0[])
    {
        k = abyte0;
        l = 0;
        return this;
    }

    public final void a(int i)
    {
        k[l] = (byte)i;
    }

    public final void a(vn vn1)
    {
        e(vn1.c());
    }

    public final void a(vt vt1)
    {
        System.arraycopy(vt1.k, vt1.l, k, l, 6);
    }

    public final void a(vu vu1)
    {
        a(vu1.a);
        b(vu1.b);
        e(vu1.c);
    }

    public final int b()
    {
        return k[l + 1] & 0xff;
    }

    public final void b(int i)
    {
        k[l + 1] = (byte)i;
    }

    public final int d()
    {
        return ug.b(k, l + 2);
    }

    public final void d(int i)
    {
        byte abyte0[] = k;
        int j = l + 1;
        abyte0[j] = (byte)(abyte0[j] + i);
    }

    public final vt e()
    {
        c(l - 6);
        return this;
    }

    public final void e(int i)
    {
        ug.a(k, l + 2, i);
    }

    public final vt f()
    {
        c(l + 6);
        return this;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("State[");
        stringbuilder.append("\n  pos=");
        stringbuilder.append(l);
        stringbuilder.append("\n  size=");
        stringbuilder.append(6);
        stringbuilder.append("\n  symbol=");
        stringbuilder.append(a());
        stringbuilder.append("\n  freq=");
        stringbuilder.append(b());
        stringbuilder.append("\n  successor=");
        stringbuilder.append(d());
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }
}
