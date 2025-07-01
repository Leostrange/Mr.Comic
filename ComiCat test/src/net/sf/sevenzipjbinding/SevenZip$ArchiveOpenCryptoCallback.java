// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


// Referenced classes of package net.sf.sevenzipjbinding:
//            IArchiveOpenCallback, ICryptoGetTextPassword, SevenZip

public static final class passwordForOpen
    implements IArchiveOpenCallback, ICryptoGetTextPassword
{

    private final String passwordForOpen;

    public final String cryptoGetTextPassword()
    {
        return passwordForOpen;
    }

    public final void setCompleted(Long long1, Long long2)
    {
    }

    public final void setTotal(Long long1, Long long2)
    {
    }

    public (String s)
    {
        passwordForOpen = s;
    }
}
