// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.RequestedScope;

public final class gh extends gc
{

    public static final String c[];
    private static final String d = gh.getName();
    private static gh e;

    private gh(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static gh a(Context context)
    {
        gh;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new gh(ha.a(context));
        }
        context = e;
        gh;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private RequestedScope b(Cursor cursor)
    {
        if (cursor == null || cursor.getCount() == 0)
        {
            return null;
        }
        RequestedScope requestedscope;
        try
        {
            requestedscope = new RequestedScope();
            requestedscope.a = cursor.getLong(a(cursor, com.amazon.identity.auth.device.dataobject.RequestedScope.a.a.g));
            requestedscope.c = cursor.getString(a(cursor, com.amazon.identity.auth.device.dataobject.RequestedScope.a.b.g));
            requestedscope.d = cursor.getString(a(cursor, com.amazon.identity.auth.device.dataobject.RequestedScope.a.c.g));
            requestedscope.e = cursor.getString(a(cursor, com.amazon.identity.auth.device.dataobject.RequestedScope.a.d.g));
            requestedscope.f = cursor.getLong(a(cursor, com.amazon.identity.auth.device.dataobject.RequestedScope.a.e.g));
            requestedscope.g = cursor.getLong(a(cursor, com.amazon.identity.auth.device.dataobject.RequestedScope.a.f.g));
        }
        // Misplaced declaration of an exception variable
        catch (Cursor cursor)
        {
            gz.a(d, (new StringBuilder()).append(cursor.getMessage()).toString(), cursor);
            return null;
        }
        return requestedscope;
    }

    public final fy a(Cursor cursor)
    {
        return b(cursor);
    }

    public final String a()
    {
        return d;
    }

    public final String b()
    {
        return "RequestedScope";
    }

    public final String[] c()
    {
        return c;
    }

    static 
    {
        c = RequestedScope.b;
    }
}
