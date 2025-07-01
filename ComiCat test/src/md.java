// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public class md extends IOException
{
    public static final class a
    {

        int a;
        String b;
        lw c;
        public String d;
        public String e;

        public a(int i, String s, lw lw1)
        {
            boolean flag;
            if (i >= 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ni.a(flag);
            a = i;
            b = s;
            c = (lw)ni.a(lw1);
        }

        public a(mc mc1)
        {
            this(mc1.c, mc1.d, mc1.e.c);
            try
            {
                d = mc1.e();
                if (d.length() == 0)
                {
                    d = null;
                }
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            mc1 = md.a(mc1);
            if (d != null)
            {
                mc1.append(ok.a).append(d);
            }
            e = mc1.toString();
        }
    }


    private final String a;
    public final int b;
    private final transient lw c;
    private final String d;

    public md(mc mc1)
    {
        this(new a(mc1));
    }

    protected md(a a1)
    {
        super(a1.e);
        b = a1.a;
        a = a1.b;
        c = a1.c;
        d = a1.d;
    }

    public static StringBuilder a(mc mc1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = mc1.c;
        if (i != 0)
        {
            stringbuilder.append(i);
        }
        mc1 = mc1.d;
        if (mc1 != null)
        {
            if (i != 0)
            {
                stringbuilder.append(' ');
            }
            stringbuilder.append(mc1);
        }
        return stringbuilder;
    }
}
