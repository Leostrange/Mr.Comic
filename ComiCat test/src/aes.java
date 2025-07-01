// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class aes
{

    SQLiteStatement a;
    public HashMap b;

    public aes()
    {
        a = null;
        b = new HashMap();
    }

    public static void a(JSONObject jsonobject)
    {
        JSONArray jsonarray;
        try
        {
            jsonarray = new JSONArray();
            for (Iterator iterator = b().iterator(); iterator.hasNext(); jsonarray.put(iterator.next())) { }
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new Exception(jsonobject.getMessage());
        }
        jsonobject.put("exclusions", jsonarray);
        return;
    }

    public static List b()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = aei.a().b("SELECT path FROM exclusions ORDER BY path ASC");
        if (cursor != null)
        {
            if (cursor.moveToFirst())
            {
                do
                {
                    arraylist.add(cursor.getString(0));
                } while (cursor.moveToNext());
            }
            cursor.close();
        }
        return arraylist;
    }

    public final void a()
    {
        b.clear();
        Cursor cursor = aei.a().b("SELECT exclusionid, path FROM exclusions");
        if (cursor != null)
        {
            if (cursor.moveToFirst())
            {
                do
                {
                    b.put(cursor.getString(1), Integer.valueOf(cursor.getInt(0)));
                } while (cursor.moveToNext());
            }
            cursor.close();
        }
    }

    public final boolean a(String s)
    {
        if ((Integer)b.get(s) == null)
        {
            a.clearBindings();
            a.bindString(1, s);
            boolean flag;
            if (a.executeInsert() != -1L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                a();
            }
            return flag;
        } else
        {
            return true;
        }
    }

    public final boolean b(String s)
    {
        return b.get(s) != null;
    }

    protected final void finalize()
    {
        if (a != null)
        {
            a.close();
        }
    }
}
