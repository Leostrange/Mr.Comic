// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class aer
{
    public final class a
    {

        public int a;
        public String b;
        public int c;
        public String d;
        public int e;
        public aet f;
        public String g;
        public int h;
        final aer i;

        public final void a(boolean flag)
        {
            f.a(1, flag);
        }

        public final boolean a()
        {
            return f.c(1);
        }

        public final void b(boolean flag)
        {
            f.a(8, flag);
        }

        public final boolean b()
        {
            return f.c(2);
        }

        public final boolean c()
        {
            return f.c(8);
        }

        public final boolean d()
        {
            return f.c(128);
        }

        public a()
        {
            i = aer.this;
            super();
            h = 0;
        }
    }


    public SQLiteStatement a;
    public List b;

    public aer()
    {
        a = null;
    }

    public static boolean a(a a1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("size", Integer.valueOf(a1.e));
        contentvalues.put("flags", Integer.valueOf(a1.f.a));
        contentvalues.put("comicid", Integer.valueOf(a1.h));
        return aei.a().a.update("download", contentvalues, (new StringBuilder("downloadid=")).append(a1.a).toString(), null) != -1;
    }

    public final a a(String s)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1.b.equals(s))
            {
                return a1;
            }
        }

        return null;
    }

    public final void a()
    {
        b = new ArrayList();
        Cursor cursor = aei.a().b("SELECT downloadid, downloadref, service, path, size, flags, hash, comicid FROM download");
        if (cursor != null && cursor.getCount() > 0)
        {
            if (cursor.moveToFirst())
            {
                do
                {
                    a a1 = new a();
                    a1.a = cursor.getInt(0);
                    a1.b = cursor.getString(1);
                    a1.c = cursor.getInt(2);
                    a1.d = cursor.getString(3);
                    a1.e = cursor.getInt(4);
                    a1.f = new aet(cursor.getInt(5));
                    a1.g = cursor.getString(6);
                    a1.h = cursor.getInt(7);
                    b.add(a1);
                } while (cursor.moveToNext());
            }
            cursor.close();
        }
    }

    protected final void finalize()
    {
        if (a != null)
        {
            a.close();
        }
    }
}
