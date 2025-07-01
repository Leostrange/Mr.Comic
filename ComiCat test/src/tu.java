// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.radaee.pdf.BMP;
import com.radaee.pdf.DIB;
import com.radaee.pdf.Document;
import com.radaee.pdf.Page;

public final class tu
{

    Document a;
    Page b;
    public int c;
    float d;
    int e;
    int f;
    int g;
    int h;
    DIB i;
    public int j;
    public boolean k;

    protected tu(Document document, int l, float f1, int i1, int j1, int k1, int l1)
    {
        a = document;
        c = l;
        b = null;
        d = f1;
        e = i1;
        f = j1;
        g = k1;
        h = l1;
        i = null;
        j = 0;
        k = false;
    }

    protected final tu a()
    {
        return new tu(a, c, d, e, f, g, h);
    }

    protected final void a(BMP bmp, int l, int i1)
    {
        if (k && i != null)
        {
            i.a(bmp, l, i1);
            return;
        } else
        {
            bmp.a(l, i1, g, h);
            return;
        }
    }

    protected final void b()
    {
        if (i != null)
        {
            i.a();
        }
        if (b != null)
        {
            b.a();
        }
        j = 0;
        i = null;
        b = null;
        k = false;
    }

    protected final Object clone()
    {
        return a();
    }

    protected final void finalize()
    {
        b();
        super.finalize();
    }
}
