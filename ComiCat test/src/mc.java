// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;

public final class mc
{

    public final String a;
    mj b;
    public final int c;
    public final String d;
    public final lz e;
    private InputStream f;
    private final String g;
    private final ly h;
    private int i;
    private boolean j;
    private boolean k;

    mc(lz lz1, mj mj1)
    {
        Object obj1 = null;
        super();
        e = lz1;
        i = lz1.d;
        j = lz1.e;
        b = mj1;
        g = mj1.b();
        int i1 = mj1.e();
        int l = i1;
        if (i1 < 0)
        {
            l = 0;
        }
        c = l;
        Object obj = mj1.f();
        d = ((String) (obj));
        Logger logger = mf.a;
        StringBuilder stringbuilder;
        boolean flag;
        if (j && logger.isLoggable(Level.CONFIG))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            stringbuilder = new StringBuilder();
            stringbuilder.append("-------------- RESPONSE --------------").append(ok.a);
            Object obj2 = mj1.d();
            if (obj2 != null)
            {
                stringbuilder.append(((String) (obj2)));
            } else
            {
                stringbuilder.append(c);
                if (obj != null)
                {
                    stringbuilder.append(' ').append(((String) (obj)));
                }
            }
            stringbuilder.append(ok.a);
        } else
        {
            stringbuilder = null;
        }
        obj2 = lz1.c;
        if (flag)
        {
            obj = stringbuilder;
        } else
        {
            obj = null;
        }
        ((lw) (obj2)).a(mj1, ((StringBuilder) (obj)));
        obj = mj1.c();
        mj1 = ((mj) (obj));
        if (obj == null)
        {
            mj1 = (String)lw.a(lz1.c.contentType);
        }
        a = mj1;
        if (mj1 == null)
        {
            lz1 = obj1;
        } else
        {
            lz1 = new ly(mj1);
        }
        h = lz1;
        if (flag)
        {
            logger.config(stringbuilder.toString());
        }
    }

    public final Object a(Class class1)
    {
        boolean flag = true;
        int l = c;
        if (e.h.equals("HEAD") || l / 100 == 1 || l == 204 || l == 304)
        {
            c();
            flag = false;
        }
        if (!flag)
        {
            return null;
        } else
        {
            return e.m.a(b(), f(), class1);
        }
    }

    public final boolean a()
    {
        int l = c;
        return l >= 200 && l < 300;
    }

    public final InputStream b()
    {
        Object obj1;
        Object obj2;
        if (k)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        obj1 = b.a();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        obj2 = obj1;
        Object obj3 = g;
        Object obj;
        obj = obj1;
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        obj = obj1;
        obj2 = obj1;
        if (!((String) (obj3)).contains("gzip"))
        {
            break MISSING_BLOCK_LABEL_59;
        }
        obj2 = obj1;
        obj = new GZIPInputStream(((InputStream) (obj1)));
        obj2 = obj;
        obj3 = obj;
        Logger logger = mf.a;
        obj1 = obj;
        obj2 = obj;
        obj3 = obj;
        if (!j)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        obj1 = obj;
        obj2 = obj;
        obj3 = obj;
        if (!logger.isLoggable(Level.CONFIG))
        {
            break MISSING_BLOCK_LABEL_124;
        }
        obj2 = obj;
        obj3 = obj;
        obj1 = new ob(((InputStream) (obj)), logger, Level.CONFIG, i);
        obj2 = obj1;
        obj3 = obj1;
        Exception exception;
        try
        {
            f = ((InputStream) (obj1));
        }
        catch (EOFException eofexception)
        {
            ((InputStream) (obj2)).close();
        }
        finally
        {
            obj1 = obj3;
        }
        k = true;
        return f;
        exception;
        ((InputStream) (obj1)).close();
        throw exception;
    }

    public final void c()
    {
        InputStream inputstream = b();
        if (inputstream != null)
        {
            inputstream.close();
        }
    }

    public final void d()
    {
        c();
        b.h();
    }

    public final String e()
    {
        InputStream inputstream = b();
        if (inputstream == null)
        {
            return "";
        } else
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            nx.a(inputstream, bytearrayoutputstream, true);
            return bytearrayoutputstream.toString(f().name());
        }
    }

    public final Charset f()
    {
        if (h == null || h.b() == null)
        {
            return np.b;
        } else
        {
            return h.b();
        }
    }
}
