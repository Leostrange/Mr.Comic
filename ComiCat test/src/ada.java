// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import meanlabs.comicreader.utils.ConnectivityReceiver;

public final class ada
    implements meanlabs.comicreader.utils.ConnectivityReceiver.b
{

    static final Lock c = new ReentrantLock();
    public acz a;
    public boolean b;

    public ada()
    {
        b = false;
        a = new acz();
        b = false;
        ConnectivityReceiver.a().a(this);
    }

    public final acv a(String s, int i, String s1, int j, String s2, int k, int l)
    {
        Object obj = null;
        acz acz1 = a;
        aer aer1 = aei.a().f;
        int i1;
        if (s2 == null)
        {
            s2 = "";
        }
        aer1.a.clearBindings();
        aer1.a.bindString(1, s);
        aer1.a.bindLong(2, i);
        aer1.a.bindString(3, s1);
        aer1.a.bindLong(4, j);
        aer1.a.bindLong(5, l);
        aer1.a.bindString(6, s2);
        aer1.a.bindLong(7, k);
        i1 = (int)aer1.a.executeInsert();
        if (i1 != -1)
        {
            aer.a a1 = new aer.a(aer1);
            a1.a = i1;
            a1.b = s;
            a1.c = i;
            a1.d = s1;
            a1.e = j;
            a1.g = s2;
            a1.h = k;
            a1.f = new aet(l);
            aer1.b.add(a1);
            s = a1;
        } else
        {
            s = null;
        }
        s1 = obj;
        if (s != null)
        {
            s1 = acz1.a(s);
        }
        a();
        return s1;
    }

    public final void a()
    {
        if (b)
        {
            break MISSING_BLOCK_LABEL_297;
        }
        c.lock();
        b = true;
        int j = (int)aei.a().d.a("max-parallel-downloads", 1L);
        if (ConnectivityReceiver.a().c() != meanlabs.comicreader.utils.ConnectivityReceiver.a.a)
        {
            j = 0;
        }
        Object obj;
        Object obj1;
        Iterator iterator;
        obj = a.a;
        obj1 = new ArrayList();
        iterator = ((List) (obj)).iterator();
        int i = 0;
_L5:
        acv acv1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_224;
        }
        acv1 = (acv)iterator.next();
        if (!acv1.e()) goto _L2; else goto _L1
_L1:
        i++;
        if (i <= j) goto _L4; else goto _L3
_L3:
        acv1.d();
        i--;
          goto _L5
_L4:
        if (acv1.a.d()) goto _L5; else goto _L6
_L6:
        ((List) (obj1)).add(acv1);
          goto _L5
_L2:
        if (!acv1.a.d() || !acv1.f()) goto _L5; else goto _L7
_L7:
        if (i >= j) goto _L9; else goto _L8
_L8:
        acv1.c();
        i++;
          goto _L5
_L9:
        if (((List) (obj1)).size() <= 0) goto _L5; else goto _L10
_L10:
        ((acv)((List) (obj1)).remove(0)).d();
        acv1.c();
          goto _L5
        obj = ((List) (obj)).iterator();
_L12:
        if (!((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_284;
        }
        obj1 = (acv)((Iterator) (obj)).next();
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (((acv) (obj1)).e() || !((acv) (obj1)).f()) goto _L12; else goto _L11
_L11:
        ((acv) (obj1)).c();
        i++;
          goto _L12
        b = false;
        c.unlock();
        return;
        Exception exception;
        exception;
        b = false;
        c.unlock();
        throw exception;
    }

    public final void b()
    {
        a();
    }

    public final void c()
    {
        d();
    }

    public final void d()
    {
        c.lock();
        for (Iterator iterator = a.a.iterator(); iterator.hasNext(); ((acv)iterator.next()).d()) { }
        break MISSING_BLOCK_LABEL_56;
        Exception exception;
        exception;
        c.unlock();
        throw exception;
        c.unlock();
        return;
    }

}
