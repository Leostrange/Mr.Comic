// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class um extends uk
{

    private short g;
    private byte h;
    private byte i;
    private short j;

    public um(uk uk1, byte abyte0[])
    {
        super(uk1);
        g = ug.a(abyte0, 0);
        h = (byte)(h | abyte0[2] & 0xff);
        i = (byte)(i | abyte0[3] & 0xff);
        j = ug.a(abyte0, 4);
    }
}
