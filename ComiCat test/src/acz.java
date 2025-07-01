// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class acz
{

    public List a;

    public acz()
    {
        a = new ArrayList();
        aer aer1 = aei.a().f;
        aer1.a();
        Object obj = aer1.b;
        if (obj != null && ((List) (obj)).size() != 0)
        {
            aew aew1 = aei.a().g;
            obj = ((List) (obj)).iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                aer.a a1 = (aer.a)((Iterator) (obj)).next();
                if (aew1.a(a1.c) != null)
                {
                    a(a1);
                }
            } while (true);
        }
    }

    public final acv a(aer.a a1)
    {
        a1 = new acv(a1);
        a.add(a1);
        return a1;
    }

    public final void a(int i)
    {
        acv acv1 = b(i);
        if (acv1 != null)
        {
            aer aer1 = aei.a().f;
            aer.a a1 = acv1.a;
            aer1.b.remove(a1);
            aei.a().a.delete("download", (new StringBuilder("downloadid=")).append(a1.a).toString(), null);
            a.remove(acv1);
        }
    }

    public final acv b(int i)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            acv acv1 = (acv)iterator.next();
            if (acv1.a.a == i)
            {
                return acv1;
            }
        }

        return null;
    }
}
