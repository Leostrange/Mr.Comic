// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.PrintStream;

public abstract class wo extends wl
{
    static class a extends c
    {

        private a()
        {
            super((byte)0);
        }

        a(byte byte0)
        {
            this();
        }
    }

    static final class b extends c
    {

        protected final void a(String s, CharSequence charsequence)
        {
        }

        private b()
        {
            super((byte)0);
        }

        b(byte byte0)
        {
            this();
        }
    }

    static class c extends wo
    {

        protected void a(String s, CharSequence charsequence)
        {
            System.out.print("[");
            System.out.print(s);
            System.out.print("] ");
            System.out.println(charsequence);
        }

        private c()
        {
        }

        c(byte byte0)
        {
            this();
        }
    }


    public static final Class a;
    public static final Class e;
    public static final Class f;
    public static final Class g;
    public static final wr h;
    private static volatile wo i = new xh();

    protected wo()
    {
    }

    private static wo a()
    {
        for (wl wl1 = wl.b(); wl1 != null; wl1 = wl1.c)
        {
            if (wl1 instanceof wo)
            {
                return (wo)wl1;
            }
        }

        return i;
    }

    public static void a(CharSequence charsequence)
    {
        a().b(charsequence);
    }

    public static void a(Throwable throwable)
    {
        a().b(throwable);
    }

    public abstract void a(String s, CharSequence charsequence);

    public void b(CharSequence charsequence)
    {
        a("warning", charsequence);
    }

    public void b(Throwable throwable)
    {
        wx wx1;
        wx1 = wx.c();
        if (throwable == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        wx1.a(throwable.getClass().getName());
        wx1.a(" - ");
        if (throwable == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        wx1.a(throwable.getMessage());
        if (throwable == null) goto _L2; else goto _L1
_L1:
        throwable = throwable.getStackTrace();
        int j = 0;
_L26:
        if (j >= throwable.length) goto _L2; else goto _L3
_L3:
        wx1.a("\n\tat ");
        Object obj = throwable[j];
        if (!(obj instanceof String)) goto _L5; else goto _L4
_L4:
        wx1.a((String)obj);
          goto _L6
_L5:
        if (!(obj instanceof wt)) goto _L8; else goto _L7
_L7:
        obj = ((wt)obj).b();
        if (obj != null) goto _L10; else goto _L9
_L9:
        wx1.a("null");
          goto _L6
        throwable;
        wx.a(wx1);
        throw throwable;
_L10:
        int j1 = ((ww) (obj)).length();
        if (obj != null) goto _L12; else goto _L11
_L11:
        wx1.a("null");
          goto _L6
_L12:
        if (j1 < 0 || j1 < 0)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        if (j1 <= ((ww) (obj)).length())
        {
            break MISSING_BLOCK_LABEL_175;
        }
        throw new IndexOutOfBoundsException();
        int k1;
        for (k1 = wx1.b + j1 + 0; wx1.c < k1;)
        {
            wx1.d();
        }

        int k = wx1.b;
        int l = 0;
_L14:
        if (l >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        char ac[] = wx1.a[k >> 10];
        int l1 = k & 0x3ff;
        int i2 = ws.a(1024 - l1, j1 - l);
        int i1 = l + i2;
        ((ww) (obj)).a(l, i1, ac, l1);
        k += i2;
        l = i1;
        if (true) goto _L14; else goto _L13
_L13:
        wx1.b = k1;
          goto _L6
_L8:
        if (!(obj instanceof Number)) goto _L16; else goto _L15
_L15:
        obj = (Number)obj;
        if (!(obj instanceof Integer)) goto _L18; else goto _L17
_L17:
        wx1.a(((Integer)obj).intValue());
          goto _L6
_L18:
        if (!(obj instanceof Long)) goto _L20; else goto _L19
_L19:
        wx1.a(((Long)obj).longValue());
          goto _L6
_L20:
        if (!(obj instanceof Float)) goto _L22; else goto _L21
_L21:
        wx1.a(((Float)obj).floatValue());
          goto _L6
_L22:
        if (!(obj instanceof Double)) goto _L24; else goto _L23
_L23:
        wx1.a(((Double)obj).doubleValue());
          goto _L6
_L24:
        wx1.a(String.valueOf(obj));
          goto _L6
_L16:
        wx1.a(String.valueOf(obj));
          goto _L6
_L2:
        a("error", wx1);
        wx.a(wx1);
        return;
_L6:
        j++;
        if (true) goto _L26; else goto _L25
_L25:
    }

    static 
    {
        a = xh;
        e = wo$b;
        f = wo$c;
        g = wo$a;
        h = new wr(a) {

        };
        wp.a(new wp() {

            protected final Object a()
            {
                return new a((byte)0);
            }

        }, g);
        wp.a(new wp() {

            protected final Object a()
            {
                return new b((byte)0);
            }

        }, e);
        wp.a(new wp() {

            protected final Object a()
            {
                return new c((byte)0);
            }

        }, f);
    }
}
