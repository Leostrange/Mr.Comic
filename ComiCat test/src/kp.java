// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;

public class kp extends nw
{

    mb a;
    lv b;
    private final mf c;
    private final mv d;
    private lr g;
    private String grantType;
    private String scopes;

    public kp(mf mf1, mv mv1, lr lr1, String s)
    {
        c = (mf)ni.a(mf1);
        d = (mv)ni.a(mv1);
        b(lr1);
        d(s);
    }

    public final mc a()
    {
        Object obj = c.a(new mb() {

            final kp a;

            public final void a(lz lz1)
            {
                if (a.a != null)
                {
                    a.a.a(lz1);
                }
                lz1.a = new lv(this, lz1.a) {

                    final lv a;
                    final _cls1 b;

                    public final void b(lz lz1)
                    {
                        if (a != null)
                        {
                            a.b(lz1);
                        }
                        if (b.a.b != null)
                        {
                            b.a.b.b(lz1);
                        }
                    }

            
            {
                b = _pcls1;
                a = lv1;
                super();
            }
                };
            }

            
            {
                a = kp.this;
                super();
            }
        }).a("POST", g, new mm(this));
        obj.m = new mx(d);
        obj.o = false;
        obj = ((lz) (obj)).a();
        if (((mc) (obj)).a())
        {
            return ((mc) (obj));
        } else
        {
            throw kr.a(d, ((mc) (obj)));
        }
    }

    public kp b(String s, Object obj)
    {
        return (kp)super.d(s, obj);
    }

    public kp b(Collection collection)
    {
        if (collection == null)
        {
            collection = null;
        } else
        {
            collection = ny.a().a(collection);
        }
        scopes = collection;
        return this;
    }

    public kp b(lr lr1)
    {
        g = lr1;
        boolean flag;
        if (lr1.b == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        return this;
    }

    public kp b(lv lv)
    {
        b = lv;
        return this;
    }

    public kp b(mb mb)
    {
        a = mb;
        return this;
    }

    public kq b()
    {
        return (kq)a().a(kq);
    }

    public kp d(String s)
    {
        grantType = (String)ni.a(s);
        return this;
    }

    public nw d(String s, Object obj)
    {
        return b(s, obj);
    }
}
