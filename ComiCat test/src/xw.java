// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class xw extends xy.a
{
    final class a extends aaw
    {

        final xw a;

        a(xy.c c)
        {
            a = xw.this;
            super();
            b = c.a;
            this.c = c.b;
            d = c.c;
        }
    }


    public xw(String s)
    {
        super((new StringBuilder("\\\\")).append(s).toString(), new xy.e());
        f = 0;
        g = 3;
    }

    public final za[] d()
    {
        xy.e e = (xy.e)d;
        a aa[] = new a[e.a];
        for (int i = 0; i < e.a; i++)
        {
            aa[i] = new a(e.b[i]);
        }

        return aa;
    }
}
