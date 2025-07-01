// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class po
{

    static void a(boolean flag)
    {
        if (!flag)
        {
            throw new IllegalStateException(String.valueOf("no calls to next() since the last call to remove()"));
        } else
        {
            return;
        }
    }
}
