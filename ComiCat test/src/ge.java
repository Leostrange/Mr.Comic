// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.AuthorizationCode;

public final class ge extends gc
{

    private static final String c = ge.getName();
    private static ge d;
    private static final String e[];

    private ge(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static ge a(Context context)
    {
        ge;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new ge(ha.a(context));
        }
        context = d;
        ge;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private AuthorizationCode b(Cursor cursor)
    {
        if (cursor == null || cursor.getCount() == 0)
        {
            return null;
        }
        AuthorizationCode authorizationcode;
        try
        {
            authorizationcode = new AuthorizationCode();
            authorizationcode.a = cursor.getLong(a(cursor, com.amazon.identity.auth.device.dataobject.AuthorizationCode.a.a.e));
            authorizationcode.b = cursor.getString(a(cursor, com.amazon.identity.auth.device.dataobject.AuthorizationCode.a.b.e));
            authorizationcode.c = cursor.getString(a(cursor, com.amazon.identity.auth.device.dataobject.AuthorizationCode.a.c.e));
            authorizationcode.d = cursor.getLong(a(cursor, com.amazon.identity.auth.device.dataobject.AuthorizationCode.a.d.e));
        }
        // Misplaced declaration of an exception variable
        catch (Cursor cursor)
        {
            gz.a(c, (new StringBuilder()).append(cursor.getMessage()).toString(), cursor);
            return null;
        }
        return authorizationcode;
    }

    public final fy a(Cursor cursor)
    {
        return b(cursor);
    }

    public final String a()
    {
        return c;
    }

    public final String b()
    {
        return "AuthorizationCode";
    }

    public final String[] c()
    {
        return e;
    }

    static 
    {
        e = AuthorizationCode.e;
    }
}
