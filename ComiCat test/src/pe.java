// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class pe
{
    public static final class a
    {

        private final pe a;
        private final String b;

        private a(pe pe1, String s)
        {
            a = pe1;
            b = (String)pg.a(s);
        }

        public a(pe pe1, String s, byte byte0)
        {
            this(pe1, s);
        }
    }


    private final String a;

    public pe(String s)
    {
        a = (String)pg.a(s);
    }

    private pe(pe pe1)
    {
        a = pe1.a;
    }

    pe(pe pe1, byte byte0)
    {
        this(pe1);
    }

    public pe a(String s)
    {
        pg.a(s);
        return new pe(this, s) {

            final String a;
            final pe b;

            public final pe a(String s1)
            {
                throw new UnsupportedOperationException("already specified useForNull");
            }

            
            {
                b = pe.this;
                a = s;
                super(pe2, (byte)0);
            }
        };
    }
}
