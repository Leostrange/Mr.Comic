// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.lang.ref.SoftReference;

public final class aid
{

    static final int a = aii.a.a();
    static final int b = aif.a.a();
    protected static final ThreadLocal c = new ThreadLocal();
    protected ajl d;
    protected ajk e;
    protected aim f;
    protected int g;
    protected int h;
    protected ajb i;
    protected ajd j;
    protected ajh k;

    public aid()
    {
        this((byte)0);
    }

    private aid(byte byte0)
    {
        d = ajl.a();
        long l = System.currentTimeMillis();
        byte0 = (int)l;
        e = new ajk(((int)l >>> 32) + byte0 | 1);
        g = a;
        h = b;
        f = null;
    }

    private static ajc a(Object obj, boolean flag)
    {
        Object obj1 = (SoftReference)c.get();
        Object obj2;
        if (obj1 == null)
        {
            obj1 = null;
        } else
        {
            obj1 = (ajr)((SoftReference) (obj1)).get();
        }
        obj2 = obj1;
        if (obj1 == null)
        {
            obj2 = new ajr();
            c.set(new SoftReference(obj2));
        }
        return new ajc(((ajr) (obj2)), obj, flag);
    }

    private boolean a(aii.a a1)
    {
        return (g & 1 << a1.ordinal()) != 0;
    }

    public final aid a(aif.a a1)
    {
        h = h & ~a1.i;
        return this;
    }

    public final aif a(OutputStream outputstream, aic aic1)
    {
        ajc ajc1 = a(outputstream, false);
        ajc1.a(aic1);
        if (aic1 == aic.a)
        {
            if (k != null)
            {
                outputstream = k.a();
            }
            outputstream = new aix(ajc1, h, f, outputstream);
            if (i != null)
            {
                outputstream.a(i);
            }
            return outputstream;
        }
        if (aic1 == aic.a)
        {
            outputstream = new ajj(ajc1, outputstream);
        } else
        {
            outputstream = new OutputStreamWriter(outputstream, aic1.a());
        }
        if (k != null)
        {
            outputstream = k.b();
        }
        outputstream = new aiz(ajc1, h, f, outputstream);
        if (i != null)
        {
            outputstream.a(i);
        }
        return outputstream;
    }

    public final aii a(InputStream inputstream)
    {
        ajc ajc1 = a(inputstream, false);
        if (j != null)
        {
            inputstream = j.a();
        }
        return (new aip(ajc1, inputstream)).a(g, f, e, d);
    }

    public final aii a(String s)
    {
        s = new StringReader(s);
        ajc ajc1 = a(s, true);
        if (j != null)
        {
            s = j.b();
        }
        return new aiw(ajc1, g, s, f, d.a(a(aii.a.j), a(aii.a.i)));
    }

}
