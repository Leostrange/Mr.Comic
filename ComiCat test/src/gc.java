// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public abstract class gc
{

    static final boolean b;
    private static final String c = gc.getName();
    protected SQLiteDatabase a;

    public gc(SQLiteDatabase sqlitedatabase)
    {
        if (sqlitedatabase == null)
        {
            throw new IllegalArgumentException("database can't be null!");
        } else
        {
            a = sqlitedatabase;
            return;
        }
    }

    public final int a(Cursor cursor, int i)
    {
        if (!b && cursor == null)
        {
            throw new AssertionError();
        }
        if (i < 0 || i >= c().length)
        {
            throw new IllegalArgumentException("colIndex is out of bound!");
        } else
        {
            return cursor.getColumnIndexOrThrow(c()[i]);
        }
    }

    public final long a(fy fy1)
    {
        if (fy1 == null)
        {
            return -1L;
        } else
        {
            gz.a(c, (new StringBuilder("Insert Row table=")).append(b()).toString(), (new StringBuilder("vals=")).append(fy1.a()).toString());
            long l = a.insert(b(), null, fy1.a());
            fy1.a = l;
            return l;
        }
    }

    public final fy a(long l)
    {
        return a(new String[] {
            "rowid"
        }, new String[] {
            String.valueOf(l)
        });
    }

    public abstract fy a(Cursor cursor);

    public final fy a(String as[], String as1[])
    {
        Object obj1 = null;
        if (as.length != as1.length)
        {
            throw new IllegalArgumentException("selectionFields and selectionValues differ in length!");
        }
          goto _L1
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        as = null;
_L10:
        as1 = as;
        gz.a(a(), (new StringBuilder()).append(illegalargumentexception.getMessage()).toString(), illegalargumentexception);
        if (as == null) goto _L3; else goto _L2
_L2:
        Object obj;
        as.close();
        obj = null;
_L7:
        return ((fy) (obj));
_L1:
        int i;
        obj = "";
        i = 0;
_L4:
        StringBuilder stringbuilder;
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_190;
        }
        stringbuilder = (new StringBuilder()).append(((String) (obj))).append(as[i]);
        if (as1[i] != null)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        obj = " IS NULL";
_L5:
        obj = stringbuilder.append(((String) (obj))).toString();
        stringbuilder = (new StringBuilder()).append(((String) (obj)));
        if (i != as.length - 1)
        {
            obj = " AND ";
        } else
        {
            obj = "";
        }
        obj = stringbuilder.append(((String) (obj))).toString();
        i++;
          goto _L4
        obj = (new StringBuilder(" = '")).append(as1[i]).append("'").toString();
          goto _L5
        as = a.query(b(), c(), ((String) (obj)), null, null, null, null);
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        as1 = as;
        as.moveToFirst();
        as1 = as;
        obj = a(((Cursor) (as)));
        as1 = ((String []) (obj));
_L11:
        obj = as1;
        if (as == null) goto _L7; else goto _L6
_L6:
        as.close();
        return as1;
        as;
        as1 = obj1;
_L9:
        if (as1 != null)
        {
            as1.close();
        }
        throw as;
        as;
        if (true) goto _L9; else goto _L8
_L8:
        obj;
          goto _L10
_L3:
        return null;
        as1 = null;
          goto _L11
    }

    public abstract String a();

    public final boolean a(long l, ContentValues contentvalues)
    {
        while (contentvalues == null || a.update(b(), contentvalues, (new StringBuilder("rowid = ")).append(l).toString(), null) != 1) 
        {
            return false;
        }
        return true;
    }

    public abstract String b();

    public final boolean b(long l)
    {
        return a.delete(b(), (new StringBuilder("rowid = ")).append(l).toString(), null) == 1;
    }

    public abstract String[] c();

    static 
    {
        boolean flag;
        if (!gc.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
