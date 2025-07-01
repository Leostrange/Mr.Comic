// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class aew
{

    SQLiteStatement a;
    public ArrayList b;

    public aew()
    {
        a = null;
    }

    public static boolean b(aev aev1)
    {
        boolean flag = false;
        int i;
        try
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("lastsynctime", Long.valueOf(aev1.k));
            i = aei.a().a.update("services", contentvalues, (new StringBuilder("id=")).append(aev1.a).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (aev aev1)
        {
            return false;
        }
        if (i > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean c(aev aev1)
    {
        boolean flag = false;
        int i;
        try
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("flags", Integer.valueOf(aev1.j.a));
            contentvalues.put("name", aev1.c);
            contentvalues.put("user", aev1.f);
            contentvalues.put("domain", aev1.e);
            contentvalues.put("user", aev1.f);
            contentvalues.put("password", aev1.g);
            contentvalues.put("token", aev1.h);
            contentvalues.put("expiry", Long.valueOf(aev1.i));
            i = aei.a().a.update("services", contentvalues, (new StringBuilder("id=")).append(aev1.a).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (aev aev1)
        {
            return false;
        }
        if (i > 0)
        {
            flag = true;
        }
        return flag;
    }

    public final aev a(int i)
    {
label0:
        {
            if (b == null)
            {
                break label0;
            }
            Iterator iterator = b.iterator();
            aev aev1;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                aev1 = (aev)iterator.next();
            } while (aev1.a != i);
            return aev1;
        }
        return null;
    }

    public final List a()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = b;
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        if (b != null)
        {
            Iterator iterator = b.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                aev aev1 = (aev)iterator.next();
                if (aev1.b.equals(s))
                {
                    arraylist.add(aev1);
                }
            } while (true);
        }
        return arraylist;
    }

    public final void a(JSONObject jsonobject)
    {
        JSONArray jsonarray;
        try
        {
            jsonarray = new JSONArray();
            JSONObject jsonobject1;
            for (Iterator iterator = b.iterator(); iterator.hasNext(); jsonarray.put(jsonobject1))
            {
                aev aev1 = (aev)iterator.next();
                jsonobject1 = new JSONObject();
                jsonobject1.put("id", aev1.a);
                jsonobject1.put("type", aev1.b);
                jsonobject1.put("name", aev1.c);
                jsonobject1.put("basepath", aev1.d);
                jsonobject1.put("domain", aev1.e);
                jsonobject1.put("user", aev1.f);
                jsonobject1.put("password", aev1.g);
                jsonobject1.put("token", aev1.h);
                jsonobject1.put("expiry", aev1.i);
                jsonobject1.put("flags", aev1.j);
                jsonobject1.put("lastsynctime", aev1.k);
            }

        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new Exception(jsonobject.getMessage());
        }
        jsonobject.put("services", jsonarray);
        return;
    }

    public final boolean a(aev aev1)
    {
        a.clearBindings();
        SQLiteStatement sqlitestatement = a;
        sqlitestatement.bindString(1, aev1.b);
        sqlitestatement.bindString(2, aev1.c);
        sqlitestatement.bindString(3, aev1.d);
        sqlitestatement.bindString(4, aev1.e);
        sqlitestatement.bindString(5, aev1.f);
        sqlitestatement.bindString(6, aev1.g);
        sqlitestatement.bindString(7, aev1.h);
        sqlitestatement.bindLong(8, aev1.i);
        sqlitestatement.bindLong(9, aev1.j.a);
        sqlitestatement.bindLong(10, aev1.k);
        aev1.a = (int)a.executeInsert();
        if (aev1.a != -1 && b != null)
        {
            b.add(aev1);
        }
        return aev1.a != -1;
    }

    protected final void finalize()
    {
        if (a != null)
        {
            a.close();
        }
    }
}
