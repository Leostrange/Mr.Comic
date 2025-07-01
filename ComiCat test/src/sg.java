// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class sg extends sf
{

    String e;

    sg()
    {
        e = null;
    }

    public final boolean a(ry ry1)
    {
        super.a(ry1);
        b.a();
        c.a((byte)5);
        c.b(si.a("ssh-userauth"));
        ry1.a(b);
        qw.b();
        c = ry1.a(c);
        boolean flag;
        if (c.b[5] == 6)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        qw.b();
        if (!flag)
        {
            return false;
        }
        byte abyte0[] = si.a(d);
        b.a();
        c.a((byte)50);
        c.b(abyte0);
        c.b(si.a("ssh-connection"));
        c.b(si.a("none"));
        ry1.a(b);
        int i;
        do
        {
            c = ry1.a(c);
            i = c.b[5] & 0xff;
            if (i == 52)
            {
                return true;
            }
            if (i != 53)
            {
                break;
            }
            c.b();
            c.e();
            c.e();
            byte abyte1[] = c.g();
            c.g();
            si.a(abyte1);
            if (a == null);
        } while (true);
        if (i == 51)
        {
            c.b();
            c.e();
            c.e();
            ry1 = c.g();
            c.e();
            e = si.a(ry1);
            return false;
        } else
        {
            throw new qy((new StringBuilder("USERAUTH fail (")).append(i).append(")").toString());
        }
    }
}
