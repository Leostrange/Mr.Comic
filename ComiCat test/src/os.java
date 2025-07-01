// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class os
{

    private static final ThreadLocal a = new ThreadLocal() {

        protected final volatile Object initialValue()
        {
            return new char[1024];
        }

    };

    static char[] a()
    {
        return (char[])a.get();
    }

}
