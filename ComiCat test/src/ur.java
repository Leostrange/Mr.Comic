// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ur extends uk
{

    private short g;
    private int h;
    private byte i;

    public ur(uk uk1, byte abyte0[])
    {
        super(uk1);
        g = ug.a(abyte0, 0);
        h = ug.b(abyte0, 2);
        if (c())
        {
            i = (byte)(i | abyte0[6] & 0xff);
        }
    }

    public final boolean h()
    {
        return (d & 0x80) != 0;
    }
}
