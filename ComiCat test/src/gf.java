// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.text.SimpleDateFormat;

public final class gf extends gc
{

    private static final String c = gf.getName();
    private static final String d[];
    private static gf e;

    private gf(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase);
    }

    public static gf a(Context context)
    {
        gf;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new gf(ha.a(context));
        }
        context = e;
        gf;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private ga b(Cursor cursor)
    {
        if (cursor == null || cursor.getCount() == 0)
        {
            return null;
        }
        Object obj = ga.a.values()[cursor.getInt(a(cursor, ga.b.g.i))];
        switch (gb._cls1.a[((ga.a) (obj)).ordinal()])
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Unknown token type for factory ")).append(obj).toString());

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_289;

        case 1: // '\001'
            break;
        }
        obj = new gv();
_L1:
        obj.a = cursor.getLong(a(cursor, ga.b.a.i));
        ((ga) (obj)).a(cursor.getString(a(cursor, ga.b.b.i)));
        ((ga) (obj)).b(cursor.getString(a(cursor, ga.b.c.i)));
        ((ga) (obj)).a(gg.a.parse(cursor.getString(a(cursor, ga.b.d.i))));
        ((ga) (obj)).b(gg.a.parse(cursor.getString(a(cursor, ga.b.e.i))));
        ((ga) (obj)).a(cursor.getBlob(a(cursor, ga.b.f.i)));
        obj.i = cursor.getString(a(cursor, ga.b.h.i));
        return ((ga) (obj));
        try
        {
            obj = new gx();
        }
        // Misplaced declaration of an exception variable
        catch (Cursor cursor)
        {
            gz.a(c, (new StringBuilder()).append(cursor.getMessage()).toString(), cursor);
            return null;
        }
          goto _L1
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
        return "AuthorizationToken";
    }

    public final String[] c()
    {
        return d;
    }

    static 
    {
        d = ga.b;
    }
}
