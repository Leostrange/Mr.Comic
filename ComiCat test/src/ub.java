// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class ub
{
    public final class a
    {

        public byte a[];
        public boolean b;
        final ub c;

        public a()
        {
            c = ub.this;
            super();
            a = null;
            b = true;
        }
    }


    public a a;
    public Lock b;

    ub()
    {
        a = new a();
        b = new ReentrantLock();
    }

    public final void a()
    {
        a.b = true;
    }
}
