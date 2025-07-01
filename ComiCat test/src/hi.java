// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Closeable;
import java.io.InputStream;

public final class hi
    implements Closeable
{

    public final InputStream a;
    public boolean b;
    private final Object c;

    public hi(Object obj, InputStream inputstream)
    {
        c = obj;
        a = inputstream;
        b = false;
    }

    public final void close()
    {
        if (!b)
        {
            ij.a(a);
            b = true;
        }
    }
}
