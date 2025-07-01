// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Map;

static final class lang.Object extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    public static final h e;
    public static final h f;
    public static final h g;
    public static final h h;
    private static final h n[];
    final Character i;
    final String j;
    final String k;
    final boolean l;
    final boolean m;

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(ml$a, s);
    }

    public static lang.String[] values()
    {
        return (s[])n.clone();
    }

    final String a(String s)
    {
        if (m)
        {
            return op.c(s);
        } else
        {
            return op.a(s);
        }
    }

    static 
    {
        a = new <init>("PLUS", 0, Character.valueOf('+'), "", ",", false, true);
        b = new <init>("HASH", 1, Character.valueOf('#'), "#", ",", false, true);
        c = new <init>("DOT", 2, Character.valueOf('.'), ".", ".", false, false);
        d = new <init>("FORWARD_SLASH", 3, Character.valueOf('/'), "/", "/", false, false);
        e = new <init>("SEMI_COLON", 4, Character.valueOf(';'), ";", ";", true, false);
        f = new <init>("QUERY", 5, Character.valueOf('?'), "?", "&", true, false);
        g = new <init>("AMP", 6, Character.valueOf('&'), "&", "&", true, false);
        h = new <init>("SIMPLE", 7, null, "", ",", false, false);
        n = (new n[] {
            a, b, c, d, e, f, g, h
        });
    }

    private >(String s, int i1, Character character, String s1, String s2, boolean flag, boolean flag1)
    {
        super(s, i1);
        i = character;
        j = (String)ni.a(s1);
        k = (String)ni.a(s2);
        l = flag;
        m = flag1;
        if (character != null)
        {
            ml.a.put(character, this);
        }
    }
}
