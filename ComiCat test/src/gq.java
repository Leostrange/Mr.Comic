// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.amazon.identity.auth.device.dataobject.RequestedScope;

public final class gq
{

    public static final String a = gq.getName();
    public static final boolean b;
    private go c;

    public gq()
    {
        c = new go();
    }

    public static void a(String s, String as[], Context context, gv gv1, gx gx1)
    {
        RequestedScope arequestedscope[] = new RequestedScope[as.length];
        int i = 0;
        while (i < arequestedscope.length) 
        {
            Object obj = gh.a(context);
            String s1 = as[i];
            obj = (RequestedScope)((gh) (obj)).a(new String[] {
                gh.c[com.amazon.identity.auth.device.dataobject.RequestedScope.a.b.g], gh.c[com.amazon.identity.auth.device.dataobject.RequestedScope.a.c.g], gh.c[com.amazon.identity.auth.device.dataobject.RequestedScope.a.d.g]
            }, new String[] {
                s1, s, null
            });
            if (obj != null)
            {
                arequestedscope[i] = ((RequestedScope) (obj));
            } else
            {
                gz.d(a, (new StringBuilder("RequestedScope shouldn't be null!!!! - ")).append(obj).append(", but continuing anyway...").toString());
                arequestedscope[i] = new RequestedScope(as[i], s, null);
            }
            i++;
        }
        int j = arequestedscope.length;
        i = 0;
        while (i < j) 
        {
            s = arequestedscope[i];
            if (((fy) (s)).a == -1L)
            {
                s.f = ((fy) (gv1)).a;
                s.g = ((fy) (gx1)).a;
                gz.c(a, (new StringBuilder("Inserting ")).append(s).append(" : rowid=").append(s.a(context)).toString());
            } else
            {
                as = (ga)gv.d(context).a(((RequestedScope) (s)).f);
                if (as != null)
                {
                    gz.a(a, "Deleting old access token.", (new StringBuilder("accessAtzToken=")).append(as).append(" : ").append(as.b(context)).toString());
                }
                s.f = ((fy) (gv1)).a;
                as = (ga)gx.d(context).a(((RequestedScope) (s)).g);
                if (as != null)
                {
                    gz.a(a, "Deleting old refresh token ", (new StringBuilder("refreshAtzToken=")).append(as).append(" : ").append(as.b(context)).toString());
                }
                s.g = ((fy) (gx1)).a;
                gz.c(a, (new StringBuilder("Updating ")).append(s).append(" : ").append(s.c(context).a(((fy) (s)).a, s.a())).toString());
            }
            i++;
        }
    }

    static 
    {
        boolean flag;
        if (!gq.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
