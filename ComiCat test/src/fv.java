// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class fv
{
    static final class a
    {

        static b a = null;
        static long b = 0L;

        public static b a()
        {
            return a;
        }

        static void b()
        {
            a = null;
            b = 0L;
        }

    }

    final class b
    {

        fu a;
        Intent b;
    }


    static String a = "2e0b46f8d04a06ac187a2eb0429558fe";
    static final boolean b;
    private static final String c = fv.getName();
    private static String d = "97e83c003bded24445aefd4c72dc4b85";
    private static Object e = new Object();

    public fv()
    {
    }

    public static void a(Context context)
    {
        Object obj1 = e;
        obj1;
        JVM INSTR monitorenter ;
        Object obj;
        gz.c(c, "Clearing Highest Versioned Service");
        obj = a.a();
        if (obj == null) goto _L2; else goto _L1
_L1:
        fu fu;
        Intent intent;
        fu = ((b) (obj)).a;
        intent = ((b) (obj)).b;
        obj = null;
        if (intent == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        obj = intent.getComponent().getPackageName();
        gz.a(c, (new StringBuilder("Unbinding pkg=")).append(((String) (obj))).toString());
        if (fu == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        context.unbindService(fu);
_L3:
        a.b();
_L2:
        obj1;
        JVM INSTR monitorexit ;
        return;
        context;
        Log.w(c, String.format("IllegalArgumentException is received during unbinding from %s. Ignored.", new Object[] {
            obj
        }));
          goto _L3
        context;
        obj1;
        JVM INSTR monitorexit ;
        throw context;
    }

    static 
    {
        boolean flag;
        if (!fv.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
