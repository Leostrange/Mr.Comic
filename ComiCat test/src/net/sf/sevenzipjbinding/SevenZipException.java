// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


public class SevenZipException extends Exception
{

    private static final long serialVersionUID = 42L;

    public SevenZipException()
    {
    }

    public SevenZipException(String s)
    {
        super(s);
    }

    public SevenZipException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public SevenZipException(Throwable throwable)
    {
        super(throwable);
    }
}
