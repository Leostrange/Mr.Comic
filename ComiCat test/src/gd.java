// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public final class gd extends gc
{

    private static final String c = gd.getName();
    private static final String d[];
    private static gd e;

    private gd(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static gd a(Context context)
    {
        gd;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new gd(ha.a(context));
        }
        context = e;
        gd;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private fz b(Cursor cursor)
    {
        if (cursor == null || cursor.getCount() == 0)
        {
            return null;
        }
        fz fz1;
        fz1 = new fz();
        fz1.a = cursor.getLong(a(cursor, fz.a.a.i));
        fz1.d = cursor.getString(a(cursor, fz.a.b.i));
        fz1.e = cursor.getString(a(cursor, fz.a.g.i));
        fz1.f = cursor.getString(a(cursor, fz.a.c.i));
        fz1.h = ha.a(cursor.getString(a(cursor, fz.a.d.i)), ",");
        fz1.i = ha.a(cursor.getString(a(cursor, fz.a.e.i)), ",");
        fz1.g = cursor.getString(a(cursor, fz.a.f.i));
        cursor = cursor.getString(a(cursor, fz.a.h.i));
        try
        {
            fz1.j = new JSONObject(cursor);
        }
        // Misplaced declaration of an exception variable
        catch (Cursor cursor)
        {
            try
            {
                Log.e(fz.b, "Payload String not correct JSON.  Setting payload to null", cursor);
            }
            // Misplaced declaration of an exception variable
            catch (Cursor cursor)
            {
                gz.a(c, (new StringBuilder()).append(cursor.getMessage()).toString(), cursor);
                return null;
            }
            return fz1;
        }
        return fz1;
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
        return "AppInfo";
    }

    public final String[] c()
    {
        return d;
    }

    static 
    {
        d = fz.c;
    }
}
