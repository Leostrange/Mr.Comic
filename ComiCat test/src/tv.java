// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Paint;
import com.radaee.pdf.Document;
import com.radaee.pdf.Page;

public final class tv
{

    String a;
    boolean b;
    boolean c;
    int d;
    int e;
    int f;
    Page g;
    Document h;
    com.radaee.pdf.Page.a i;
    int j;
    boolean k;
    private boolean l;
    private boolean m;
    private Paint n;
    private Paint o;

    protected tv()
    {
        a = null;
        b = false;
        c = false;
        d = -1;
        e = -1;
        f = 0;
        g = null;
        h = null;
        i = null;
        j = 0;
        k = true;
        l = false;
        m = false;
        n = new Paint();
        o = new Paint();
        n.setARGB(64, 0, 0, 255);
        n.setStyle(android.graphics.Paint.Style.FILL);
        o.setARGB(64, 64, 64, 64);
        o.setStyle(android.graphics.Paint.Style.FILL);
    }

    final void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (!m) goto _L2; else goto _L1
_L1:
        notify();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        l = true;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }
}
