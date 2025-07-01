// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class us extends uk
{

    public boolean g;

    public us(uk uk1)
    {
        super(uk1);
        g = false;
    }

    public final boolean h()
    {
        byte abyte0[] = new byte[7];
        ug.a(abyte0, 0, b);
        abyte0[2] = c;
        ug.a(abyte0, 3, d);
        ug.a(abyte0, 5, e);
        if (abyte0[0] == 82)
        {
            if (abyte0[1] == 69 && abyte0[2] == 126 && abyte0[3] == 94)
            {
                g = true;
                return true;
            }
            if (abyte0[1] == 97 && abyte0[2] == 114 && abyte0[3] == 33 && abyte0[4] == 26 && abyte0[5] == 7 && abyte0[6] == 0)
            {
                g = false;
                return true;
            }
        }
        return false;
    }
}
