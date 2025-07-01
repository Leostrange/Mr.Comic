// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ov extends li
{
    public final class a
    {

        final ov a;

        public final a a()
        {
            a a1 = new a(this);
            a.a(a1);
            return a1;
        }

        public a()
        {
            a = ov.this;
            super();
        }
    }

    public final class a.a extends ow
    {

        final a g;
        private Boolean includeSubscribed;
        private Long maxChangeIdCount;
        private Long startChangeId;

        private a.a f(String s, Object obj)
        {
            return (a.a)super.c(s, obj);
        }

        public final lf a(String s, Object obj)
        {
            return f(s, obj);
        }

        public final volatile ow a(Boolean boolean1)
        {
            return (a.a)super.a(boolean1);
        }

        public final volatile ow a(String s)
        {
            return (a.a)super.a(s);
        }

        public final lj b(String s, Object obj)
        {
            return f(s, obj);
        }

        public final volatile ow b(String s)
        {
            return (a.a)super.b(s);
        }

        public final volatile ow c(String s)
        {
            return (a.a)super.c(s);
        }

        public final ow c(String s, Object obj)
        {
            return f(s, obj);
        }

        public final nw d(String s, Object obj)
        {
            return f(s, obj);
        }

        protected a.a(a a1)
        {
            g = a1;
            super(a1.a, "GET", "about", oy);
        }
    }

    public static final class b extends li.a
    {

        private b c(lh lh)
        {
            return (b)super.b(lh);
        }

        private b h(String s)
        {
            return (b)super.d(s);
        }

        private b i(String s)
        {
            return (b)super.e(s);
        }

        public final le.a a(String s)
        {
            return h(s);
        }

        public final le.a a(lh lh)
        {
            return c(lh);
        }

        public final b a(ox ox)
        {
            return (b)super.b(ox);
        }

        public final le.a b(String s)
        {
            return i(s);
        }

        public final li.a b(lh lh)
        {
            return c(lh);
        }

        public final le.a c(String s)
        {
            return g(s);
        }

        public final li.a d(String s)
        {
            return h(s);
        }

        public final li.a e(String s)
        {
            return i(s);
        }

        public final li.a f(String s)
        {
            return g(s);
        }

        public final b g(String s)
        {
            return (b)super.f(s);
        }

        public b(mf mf, mv mv)
        {
            super(mf, mv, "https://www.googleapis.com/", "drive/v2/");
        }
    }

    public final class c
    {

        final ov a;

        public final a a(String s)
        {
            s = new a(this, s);
            a.a(s);
            return s;
        }

        public final b a()
        {
            b b1 = new b(this);
            a.a(b1);
            return b1;
        }

        public c()
        {
            a = ov.this;
            super();
        }
    }

    public final class c.a extends ow
    {

        private Boolean acknowledgeAbuse;
        private String fileId;
        final c g;
        private String projection;
        private String revisionId;
        private Boolean updateViewedDate;

        private c.a f(String s, Object obj)
        {
            return (c.a)super.c(s, obj);
        }

        public final lf a(String s, Object obj)
        {
            return f(s, obj);
        }

        public final volatile ow a(Boolean boolean1)
        {
            return (c.a)super.a(boolean1);
        }

        public final volatile ow a(String s)
        {
            return (c.a)super.a(s);
        }

        public final lj b(String s, Object obj)
        {
            return f(s, obj);
        }

        public final lr b()
        {
            String s;
            if ("media".equals(get("alt")) && super.c == null)
            {
                s = (new StringBuilder()).append(((le) (g.a)).c).append("download/").append(((le) (g.a)).d).toString();
            } else
            {
                s = g.a.a();
            }
            return new lr(ml.a(s, super.b, this));
        }

        public final volatile ow b(String s)
        {
            return (c.a)super.b(s);
        }

        public final volatile ow c(String s)
        {
            return (c.a)super.c(s);
        }

        public final ow c(String s, Object obj)
        {
            return f(s, obj);
        }

        public final nw d(String s, Object obj)
        {
            return f(s, obj);
        }

        protected c.a(c c1, String s)
        {
            g = c1;
            super(c1.a, "GET", "files/{fileId}", oz);
            fileId = (String)oh.a(s, "Required parameter fileId must be specified.");
            c1 = super.a.b;
            super.d = new lb(((ma) (c1)).a, ((ma) (c1)).b);
        }
    }

    public final class c.b extends ow
    {

        private String corpus;
        final c g;
        public Integer maxResults;
        private String orderBy;
        public String pageToken;
        private String projection;
        public String q;
        public String spaces;

        private c.b f(String s, Object obj)
        {
            return (c.b)super.c(s, obj);
        }

        public final lf a(String s, Object obj)
        {
            return f(s, obj);
        }

        public final volatile ow a(Boolean boolean1)
        {
            return (c.b)super.a(boolean1);
        }

        public final volatile ow a(String s)
        {
            return (c.b)super.a(s);
        }

        public final lj b(String s, Object obj)
        {
            return f(s, obj);
        }

        public final volatile ow b(String s)
        {
            return (c.b)super.b(s);
        }

        public final ow c(String s)
        {
            return d(s);
        }

        public final ow c(String s, Object obj)
        {
            return f(s, obj);
        }

        public final nw d(String s, Object obj)
        {
            return f(s, obj);
        }

        public final c.b d(String s)
        {
            return (c.b)super.c(s);
        }

        protected c.b(c c1)
        {
            g = c1;
            super(c1.a, "GET", "files", pa);
        }
    }


    public ov(b b1)
    {
        super(b1);
    }

    protected final void a(lf lf)
    {
        super.a(lf);
    }

    public final c d()
    {
        return new c();
    }

    static 
    {
        String s;
        boolean flag;
        if (ks.a.intValue() == 1 && ks.b.intValue() >= 15)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s = ks.d;
        if (!flag)
        {
            throw new IllegalStateException(ni.a("You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.22.0 of the Drive API library.", new Object[] {
                s
            }));
        }
    }
}
