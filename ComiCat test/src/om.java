// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class om
{

    public static RuntimeException a(Throwable throwable)
    {
        Throwable throwable1 = (Throwable)ni.a(throwable);
        nk.a(throwable1, java/lang/Error);
        nk.a(throwable1, java/lang/RuntimeException);
        throw new RuntimeException(throwable);
    }
}
