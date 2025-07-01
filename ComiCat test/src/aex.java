// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class aex
    implements afe
{

    ua a;
    List b;

    public aex()
    {
    }

    private void e()
    {
        b = new ArrayList();
        Object obj = a.a();
        if (((List) (obj)).size() <= 0) goto _L2; else goto _L1
_L1:
        obj = ((List) (obj)).iterator();
_L5:
        if (!((Iterator) (obj)).hasNext()) goto _L2; else goto _L3
_L3:
        uo uo1 = (uo)((Iterator) (obj)).next();
        if (uo1 == null) goto _L5; else goto _L4
_L4:
        if (uo1.k() || !afa.a(uo1.l, uo1.n)) goto _L5; else goto _L6
_L6:
        b.add(uo1);
          goto _L5
        Exception exception;
        exception;
        exception.toString();
_L8:
        return;
_L2:
        Collections.sort(b, new Comparator() {

            final aex a;

            public final int compare(Object obj1, Object obj2)
            {
                obj1 = (uo)obj1;
                obj2 = (uo)obj2;
                return agv.a(((uo) (obj1)).l, ((uo) (obj2)).l);
            }

            
            {
                a = aex.this;
                super();
            }
        });
        for (Iterator iterator = b.iterator(); iterator.hasNext(); iterator.next()) { }
        if (b.size() <= 0 || ((uo)b.get(0)).n <= 0x400000L) goto _L8; else goto _L7
_L7:
        b.remove(0);
        return;
    }

    public final aff a(int i)
    {
        return new aey((uo)b.get(i), a);
    }

    public final void a()
    {
    }

    public final boolean a(File file)
    {
        a = new ua(file);
        file = a;
        if (((ua) (file)).e != null)
        {
            if (!((ua) (file)).e.h())
            {
                e();
            }
            break MISSING_BLOCK_LABEL_63;
        } else
        {
            try
            {
                throw new NullPointerException("mainheader is null");
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                Log.e("CBR Open", "Error opening Comics", file);
            }
            return false;
        }
        return true;
    }

    public final void b()
    {
        try
        {
            a.close();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

    public final int c()
    {
        return b.size();
    }

    public final afa.a d()
    {
        return afa.a.a;
    }
}
