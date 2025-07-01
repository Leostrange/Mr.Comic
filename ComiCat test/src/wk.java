// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class wk
{

    public static final wk a = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((boolean[])(boolean[])obj).length);
        }

        protected final Object b(int i1)
        {
            return new boolean[i1];
        }

    };
    public static final wk b = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((byte[])(byte[])obj).length);
        }

        protected final Object b(int i1)
        {
            return new byte[i1];
        }

    };
    public static final wk c = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((char[])(char[])obj).length);
        }

        protected final Object b(int i1)
        {
            return new char[i1];
        }

    };
    public static final wk d = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((short[])(short[])obj).length);
        }

        protected final Object b(int i1)
        {
            return new short[i1];
        }

    };
    public static final wk e = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((int[])(int[])obj).length);
        }

        protected final Object b(int i1)
        {
            return new int[i1];
        }

    };
    public static final wk f = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((long[])(long[])obj).length);
        }

        protected final Object b(int i1)
        {
            return new long[i1];
        }

    };
    public static final wk g = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((float[])(float[])obj).length);
        }

        protected final Object b(int i1)
        {
            return new float[i1];
        }

    };
    public static final wk h = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((double[])(double[])obj).length);
        }

        protected final Object b(int i1)
        {
            return new double[i1];
        }

    };
    public static final wk i = new wk() {

        public final void a(Object obj)
        {
            a(obj, ((Object[])(Object[])obj).length);
        }

        protected final Object b(int i1)
        {
            return ((Object) (new Object[i1]));
        }

    };
    private final wp j = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(4);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp k = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(8);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp l = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(16);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp m = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(32);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp n = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(64);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp o = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(128);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp p = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(256);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp q = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(512);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp r = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(1024);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp s = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(2048);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp t = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(4096);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp u = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(8192);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp v = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(16384);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp w = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(32768);
        }

            
            {
                a = wk.this;
                super();
            }
    };
    private final wp x = new wp() {

        final wk a;

        protected final Object a()
        {
            return a.b(0x10000);
        }

            
            {
                a = wk.this;
                super();
            }
    };

    public wk()
    {
    }

    public final Object a(int i1)
    {
        if (i1 <= 4)
        {
            return j.b();
        }
        if (i1 <= 8)
        {
            return k.b();
        }
        if (i1 <= 16)
        {
            return l.b();
        }
        if (i1 <= 32)
        {
            return m.b();
        }
        if (i1 <= 64)
        {
            return n.b();
        }
        if (i1 <= 128)
        {
            return o.b();
        }
        if (i1 <= 256)
        {
            return p.b();
        }
        if (i1 <= 512)
        {
            return q.b();
        }
        if (i1 <= 1024)
        {
            return r.b();
        }
        if (i1 <= 2048)
        {
            return s.b();
        }
        if (i1 <= 4096)
        {
            return t.b();
        }
        if (i1 <= 8192)
        {
            return u.b();
        }
        if (i1 <= 16384)
        {
            return v.b();
        }
        if (i1 <= 32768)
        {
            return w.b();
        }
        if (i1 <= 0x10000)
        {
            return x.b();
        } else
        {
            return b(i1);
        }
    }

    public void a(Object obj)
    {
        int i1 = ((Object[])(Object[])obj).length;
        if (i1 <= 4)
        {
            j.a(obj);
            return;
        } else
        {
            a(obj, i1);
            return;
        }
    }

    final void a(Object obj, int i1)
    {
        if (i1 <= 8)
        {
            k.a(obj);
        } else
        {
            if (i1 <= 16)
            {
                l.a(obj);
                return;
            }
            if (i1 <= 32)
            {
                m.a(obj);
                return;
            }
            if (i1 <= 64)
            {
                n.a(obj);
                return;
            }
            if (i1 <= 128)
            {
                o.a(obj);
                return;
            }
            if (i1 <= 256)
            {
                p.a(obj);
                return;
            }
            if (i1 <= 512)
            {
                q.a(obj);
                return;
            }
            if (i1 <= 1024)
            {
                r.a(obj);
                return;
            }
            if (i1 <= 2048)
            {
                s.a(obj);
                return;
            }
            if (i1 <= 4096)
            {
                t.a(obj);
                return;
            }
            if (i1 <= 8192)
            {
                u.a(obj);
                return;
            }
            if (i1 <= 16384)
            {
                v.a(obj);
                return;
            }
            if (i1 <= 32768)
            {
                w.a(obj);
                return;
            }
            if (i1 <= 0x10000)
            {
                x.a(obj);
                return;
            }
        }
    }

    protected abstract Object b(int i1);

}
