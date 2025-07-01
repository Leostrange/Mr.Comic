// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class ait extends aii
{

    protected ait()
    {
    }

    protected static final String b(int i)
    {
        char c1 = (char)i;
        if (Character.isISOControl(c1))
        {
            return (new StringBuilder("(CTRL-CHAR, code ")).append(i).append(")").toString();
        }
        if (i > 255)
        {
            return (new StringBuilder("'")).append(c1).append("' (code ").append(i).append(" / 0x").append(Integer.toHexString(i)).append(")").toString();
        } else
        {
            return (new StringBuilder("'")).append(c1).append("' (code ").append(i).append(")").toString();
        }
    }

    protected static void x()
    {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }

    protected final char a(char c1)
    {
        while (a(aii.a.f) || c1 == '\'' && a(aii.a.d)) 
        {
            return c1;
        }
        throw a((new StringBuilder("Unrecognized character escape ")).append(b(c1)).toString());
    }

    public abstract ail a();

    protected final void a(int i)
    {
        i = (char)i;
        throw a((new StringBuilder("Illegal character (")).append(b(i)).append("): only regular white space (\\r, \\n, \\t) is allowed between tokens").toString());
    }

    protected final void a(String s, Throwable throwable)
    {
        throw new aih(s, e(), throwable);
    }

    public final aii b()
    {
        if (b != ail.b && b != ail.d)
        {
            return this;
        }
        int i = 1;
        int j;
        do
        {
label0:
            do
            {
                ail ail1 = a();
                if (ail1 == null)
                {
                    t();
                    return this;
                }
                static final class _cls1
                {

                    static final int a[];

                    static 
                    {
                        a = new int[ail.values().length];
                        try
                        {
                            a[ail.b.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror10) { }
                        try
                        {
                            a[ail.d.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror9) { }
                        try
                        {
                            a[ail.c.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror8) { }
                        try
                        {
                            a[ail.e.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror7) { }
                        try
                        {
                            a[ail.i.ordinal()] = 5;
                        }
                        catch (NoSuchFieldError nosuchfielderror6) { }
                        try
                        {
                            a[ail.k.ordinal()] = 6;
                        }
                        catch (NoSuchFieldError nosuchfielderror5) { }
                        try
                        {
                            a[ail.l.ordinal()] = 7;
                        }
                        catch (NoSuchFieldError nosuchfielderror4) { }
                        try
                        {
                            a[ail.m.ordinal()] = 8;
                        }
                        catch (NoSuchFieldError nosuchfielderror3) { }
                        try
                        {
                            a[ail.g.ordinal()] = 9;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            a[ail.h.ordinal()] = 10;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            a[ail.j.ordinal()] = 11;
                        }
                        catch (NoSuchFieldError nosuchfielderror)
                        {
                            return;
                        }
                    }
                }

                switch (_cls1.a[ail1.ordinal()])
                {
                default:
                    break;

                case 1: // '\001'
                case 2: // '\002'
                    i++;
                    break;

                case 3: // '\003'
                case 4: // '\004'
                    j = i - 1;
                    break label0;
                }
            } while (true);
            i = j;
        } while (j != 0);
        return this;
    }

    protected final void b(int i, String s)
    {
        String s2 = (new StringBuilder("Unexpected character (")).append(b(i)).append(")").toString();
        String s1 = s2;
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s2).append(": ").append(s).toString();
        }
        throw a(s1);
    }

    protected final void c(int i, String s)
    {
        if (!a(aii.a.e) || i >= 32)
        {
            i = (char)i;
            throw a((new StringBuilder("Illegal unquoted character (")).append(b(i)).append("): has to be escaped using backslash to be included in ").append(s).toString());
        } else
        {
            return;
        }
    }

    protected final void c(String s)
    {
        throw a((new StringBuilder("Unexpected end-of-input")).append(s).toString());
    }

    protected final void d(String s)
    {
        throw a(s);
    }

    public abstract String f();

    protected abstract void t();

    protected final void v()
    {
        c((new StringBuilder(" in ")).append(b).toString());
    }

    protected final void w()
    {
        c(" in a value");
    }
}
