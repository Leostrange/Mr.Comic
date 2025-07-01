// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class wi
{

    protected Thread a;
    protected Object b[];
    protected int c;

    protected wi()
    {
        b = (Object[])new Object[16];
    }

    public final Object a()
    {
        if (c > 0)
        {
            Object aobj[] = b;
            int i = c - 1;
            c = i;
            return aobj[i];
        } else
        {
            return b();
        }
    }

    protected abstract void a(Object obj);

    protected abstract Object b();
}
