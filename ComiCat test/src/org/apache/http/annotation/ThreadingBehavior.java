// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.annotation;


public final class ThreadingBehavior extends Enum
{

    private static final ThreadingBehavior $VALUES[];
    public static final ThreadingBehavior IMMUTABLE;
    public static final ThreadingBehavior IMMUTABLE_CONDITIONAL;
    public static final ThreadingBehavior SAFE;
    public static final ThreadingBehavior SAFE_CONDITIONAL;
    public static final ThreadingBehavior UNSAFE;

    private ThreadingBehavior(String s, int i)
    {
        super(s, i);
    }

    public static ThreadingBehavior valueOf(String s)
    {
        return (ThreadingBehavior)Enum.valueOf(org/apache/http/annotation/ThreadingBehavior, s);
    }

    public static ThreadingBehavior[] values()
    {
        return (ThreadingBehavior[])$VALUES.clone();
    }

    static 
    {
        IMMUTABLE = new ThreadingBehavior("IMMUTABLE", 0);
        IMMUTABLE_CONDITIONAL = new ThreadingBehavior("IMMUTABLE_CONDITIONAL", 1);
        SAFE = new ThreadingBehavior("SAFE", 2);
        SAFE_CONDITIONAL = new ThreadingBehavior("SAFE_CONDITIONAL", 3);
        UNSAFE = new ThreadingBehavior("UNSAFE", 4);
        $VALUES = (new ThreadingBehavior[] {
            IMMUTABLE, IMMUTABLE_CONDITIONAL, SAFE, SAFE_CONDITIONAL, UNSAFE
        });
    }
}
