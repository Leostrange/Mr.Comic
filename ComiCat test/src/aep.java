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

public final class aep
{

    SQLiteStatement a;
    public HashMap b;

    public aep()
    {
        a = null;
        b = new HashMap();
    }

    private static List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = aei.a().b("SELECT exclusionid, downloadref, serviceref, reason FROM cloud_exclusions");
        if (cursor != null)
        {
            if (cursor.moveToFirst())
            {
                do
                {
                    aeo aeo1 = new aeo();
                    aeo1.a = cursor.getInt(0);
                    aeo1.b = cursor.getString(1);
                    aeo1.c = cursor.getInt(2);
                    aeo1.d = cursor.getInt(3);
                    arraylist.add(aeo1);
                } while (cursor.moveToNext());
            }
            cursor.close();
        }
        return arraylist;
    }

    public static void a(JSONObject jsonobject)
    {
        JSONArray jsonarray;
        try
        {
            jsonarray = new JSONArray();
            JSONObject jsonobject1;
            for (Iterator iterator = a().iterator(); iterator.hasNext(); jsonarray.put(jsonobject1))
            {
                aeo aeo1 = (aeo)iterator.next();
                jsonobject1 = new JSONObject();
                jsonobject1.put("id", aeo1.a);
                jsonobject1.put("downloadref", aeo1.b);
                jsonobject1.put("serviceref", aeo1.c);
                jsonobject1.put("reason", aeo1.d);
            }

        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new Exception(jsonobject.getMessage());
        }
        jsonobject.put("cloud_exclusions", jsonarray);
        return;
    }

    public static String b(String s, int i, int j)
    {
        return (new StringBuilder()).append(s).append(":").append(i).append(":").append(j).toString();
    }

    public final boolean a(String s, int i, int j)
    {
        String s1 = b(s, i, j);
        if ((aeo)b.get(s1) == null)
        {
            a.clearBindings();
            a.bindString(1, s);
            a.bindLong(2, i);
            a.bindLong(3, j);
            int k = (int)a.executeInsert();
            if (k != -1)
            {
                aeo aeo1 = new aeo();
                aeo1.a = k;
                aeo1.b = s;
                aeo1.c = i;
                aeo1.d = j;
                b.put(s1, aeo1);
            }
        }
        return true;
    }

    public final boolean c(String s, int i, int j)
    {
        return b.get(b(s, i, j)) != null;
    }

    protected final void finalize()
    {
        if (a != null)
        {
            a.close();
        }
    }
}
