// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vl extends vo
{

    public vl(byte abyte0[])
    {
        super(abyte0);
    }

    public final int a()
    {
        return ug.a(k, l) & 0xffff;
    }

    public final vl a(byte abyte0[])
    {
        k = abyte0;
        l = 0;
        return this;
    }

    public final void a(int i)
    {
        ug.a(k, l, (short)i);
    }

    public final void a(vt vt1)
    {
        a_(vt1.c());
    }

    public final void a_(int i)
    {
        ug.a(k, l + 2, i);
    }

    public final int b()
    {
        return ug.b(k, l + 2);
    }

    public final void b(int i)
    {
        byte abyte0[] = this.k;
        int k = l;
        int j = (abyte0[k] & 0xff) + (i & 0xff) >>> 8;
        abyte0[k] = (byte)(abyte0[k] + (i & 0xff));
        if (j > 0 || (0xff00 & i) != 0)
        {
            k++;
            abyte0[k] = (byte)(j + (i >>> 8 & 0xff) + abyte0[k]);
        }
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("FreqData[");
        stringbuilder.append("\n  pos=");
        stringbuilder.append(l);
        stringbuilder.append("\n  size=");
        stringbuilder.append(6);
        stringbuilder.append("\n  summFreq=");
        stringbuilder.append(a());
        stringbuilder.append("\n  stats=");
        stringbuilder.append(b());
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }
}
