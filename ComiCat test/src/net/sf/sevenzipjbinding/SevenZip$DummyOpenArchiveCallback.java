// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


// Referenced classes of package net.sf.sevenzipjbinding:
//            IArchiveOpenCallback, ICryptoGetTextPassword, SevenZip, SevenZipException

public static class 
    implements IArchiveOpenCallback, ICryptoGetTextPassword
{

    public String cryptoGetTextPassword()
    {
        throw new SevenZipException("No password was provided for opening protected archive.");
    }

    public void setCompleted(Long long1, Long long2)
    {
    }

    public void setTotal(Long long1, Long long2)
    {
    }

    public ()
    {
    }
}
