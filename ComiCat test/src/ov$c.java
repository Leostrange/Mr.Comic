// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class lang.Object
{
    public final class a extends ow
    {

        private Boolean acknowledgeAbuse;
        private String fileId;
        final ov.c g;
        private String projection;
        private String revisionId;
        private Boolean updateViewedDate;

        private a f(String s, Object obj)
        {
            return (a)super.c(s, obj);
        }

        public final lf a(String s, Object obj)
        {
            return f(s, obj);
        }

        public final volatile ow a(Boolean boolean1)
        {
            return (a)super.a(boolean1);
        }

        public final volatile ow a(String s)
        {
            return (a)super.a(s);
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
            return (a)super.b(s);
        }

        public final volatile ow c(String s)
        {
            return (a)super.c(s);
        }

        public final ow c(String s, Object obj)
        {
            return f(s, obj);
        }

        public final nw d(String s, Object obj)
        {
            return f(s, obj);
        }

        protected a(String s)
        {
            g = ov.c.this;
            super(ov.c.this.a, "GET", "files/{fileId}", oz);
            fileId = (String)oh.a(s, "Required parameter fileId must be specified.");
            c1 = super.a.b;
            super.d = new lb(ov.c.this.a, ov.c.this.b);
        }
    }

    public final class b extends ow
    {

        private String corpus;
        final ov.c g;
        public Integer maxResults;
        private String orderBy;
        public String pageToken;
        private String projection;
        public String q;
        public String spaces;

        private b f(String s, Object obj)
        {
            return (b)super.c(s, obj);
        }

        public final lf a(String s, Object obj)
        {
            return f(s, obj);
        }

        public final volatile ow a(Boolean boolean1)
        {
            return (b)super.a(boolean1);
        }

        public final volatile ow a(String s)
        {
            return (b)super.a(s);
        }

        public final lj b(String s, Object obj)
        {
            return f(s, obj);
        }

        public final volatile ow b(String s)
        {
            return (b)super.b(s);
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

        public final b d(String s)
        {
            return (b)super.c(s);
        }

        protected b()
        {
            g = ov.c.this;
            super(ov.c.this.a, "GET", "files", pa);
        }
    }


    final ov a;

    public final a a(String s)
    {
        s = new a(s);
        a.a(s);
        return s;
    }

    public final b a()
    {
        b b1 = new b();
        a.a(b1);
        return b1;
    }

    public >(ov ov1)
    {
        a = ov1;
        super();
    }
}
