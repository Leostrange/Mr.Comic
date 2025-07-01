// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;

public abstract class tq extends Enum
{

    public static final tq a;
    public static final tq b;
    public static final tq c;
    public static final tq d;
    private static final tq e[];

    private tq(String s, int i)
    {
        super(s, i);
    }

    tq(String s, int i, byte byte0)
    {
        this(s, i);
    }

    public static tq a(Activity activity)
    {
        switch (activity.getResources().getConfiguration().screenLayout & 0xf)
        {
        default:
            return b;

        case 1: // '\001'
            return a;

        case 2: // '\002'
            return b;

        case 3: // '\003'
            return c;

        case 4: // '\004'
            return d;
        }
    }

    public static tq valueOf(String s)
    {
        return (tq)Enum.valueOf(tq, s);
    }

    public static tq[] values()
    {
        return (tq[])e.clone();
    }

    public abstract sr a();

    static 
    {
        a = new tq("SMALL") {

            public final sr a()
            {
                return sr.a;
            }

        };
        b = new tq("NORMAL") {

            public final sr a()
            {
                return sr.a;
            }

        };
        c = new tq("LARGE") {

            public final sr a()
            {
                return sr.b;
            }

        };
        d = new tq("XLARGE") {

            public final sr a()
            {
                return sr.b;
            }

        };
        e = (new tq[] {
            a, b, c, d
        });
    }
}
