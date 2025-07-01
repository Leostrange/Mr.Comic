// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class uj extends uk
{

    private byte g;
    private byte h;
    private byte i;
    private int j;

    public uj(uk uk1, byte abyte0[])
    {
        super(uk1);
        g = (byte)(g | abyte0[0] & 0xff);
        h = (byte)(h | abyte0[1] & 0xff);
        i = (byte)(i | abyte0[2] & 0xff);
        j = ug.b(abyte0, 3);
    }
}
