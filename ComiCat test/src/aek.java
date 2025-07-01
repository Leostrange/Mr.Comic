// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class aek
{

    public SQLiteStatement a;
    public ArrayList b;
    private HashMap c;
    private pn d;

    public aek()
    {
        a = null;
    }

    private static Date a(DateFormat dateformat, String s)
    {
        Date date = null;
        if (s != null)
        {
            try
            {
                date = dateformat.parse(s);
            }
            // Misplaced declaration of an exception variable
            catch (DateFormat dateformat)
            {
                dateformat.printStackTrace();
                return null;
            }
        }
        return date;
    }

    public static boolean a(aeq aeq1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("state", Integer.valueOf(aeq1.h.a));
        contentvalues.put("readtill", Integer.valueOf(aeq1.j));
        contentvalues.put("bookmark", Integer.valueOf(aeq1.i));
        contentvalues.put("pages", Integer.valueOf(aeq1.b));
        contentvalues.put("name", aeq1.c);
        contentvalues.put("path", aeq1.d);
        contentvalues.put("remotepath", aeq1.e);
        contentvalues.put("remotekey", aeq1.f);
        contentvalues.put("serviceref", Integer.valueOf(aeq1.g));
        contentvalues.put("pages", Integer.valueOf(aeq1.b));
        contentvalues.put("hash", aeq1.k);
        contentvalues.put("lastread", Long.valueOf(aeq1.l));
        return a(aeq1, contentvalues);
    }

    public static boolean a(aeq aeq1, ContentValues contentvalues)
    {
        boolean flag = false;
        int i;
        try
        {
            i = aei.a().a.update("catalog", contentvalues, (new StringBuilder("comicId=")).append(aeq1.a).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (aeq aeq1)
        {
            return false;
        }
        if (i > 0)
        {
            flag = true;
        }
        return flag;
    }

    static void b()
    {
        int i = 0;
        do
        {
            Object obj = (new StringBuilder("SELECT comicId, state, name, path FROM catalog LIMIT ")).append(i).append(',').append(100).toString();
            obj = aei.a().b(((String) (obj)));
            if (obj != null && ((Cursor) (obj)).getCount() != 0)
            {
                i += ((Cursor) (obj)).getCount();
                if (((Cursor) (obj)).moveToFirst())
                {
                    do
                    {
                        aeq aeq1 = new aeq();
                        aeq1.a = ((Cursor) (obj)).getInt(0);
                        aeq1.h = new aet(((Cursor) (obj)).getInt(1));
                        aeq1.c = ((Cursor) (obj)).getString(2);
                        aeq1.d = ((Cursor) (obj)).getString(3);
                        if (!aeq1.d() && !aeq1.c())
                        {
                            aeq1.k = agm.a(aeq1.d);
                            ContentValues contentvalues = new ContentValues();
                            contentvalues.put("hash", aeq1.k);
                            a(aeq1, contentvalues);
                        }
                    } while (((Cursor) (obj)).moveToNext());
                }
                ((Cursor) (obj)).close();
            } else
            {
                return;
            }
        } while (true);
    }

    private static boolean b(int i)
    {
        boolean flag = false;
        try
        {
            i = aei.a().a.delete("catalog", (new StringBuilder("comicId=")).append(i).toString(), null);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        if (i > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean b(aeq aeq1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("state", Integer.valueOf(aeq1.h.a));
        return a(aeq1, contentvalues);
    }

    public static boolean c(aeq aeq1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("bookmark", Integer.valueOf(aeq1.i));
        return a(aeq1, contentvalues);
    }

    public static boolean d(aeq aeq1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", aeq1.c);
        contentvalues.put("path", aeq1.d);
        if (!aeq1.d())
        {
            aeq1.k = agm.a(aeq1.d);
        }
        contentvalues.put("hash", aeq1.k);
        return a(aeq1, contentvalues);
    }

    public static int e()
    {
        int i = 0;
        boolean flag = false;
        Cursor cursor = aei.a().b("SELECT MAX(comicId) FROM catalog");
        if (cursor != null)
        {
            i = ((flag) ? 1 : 0);
            if (cursor.getCount() > 0)
            {
                cursor.moveToFirst();
                i = cursor.getInt(0);
            }
            cursor.close();
        }
        return i;
    }

    public static boolean e(aeq aeq1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", aeq1.c);
        contentvalues.put("path", aeq1.d);
        contentvalues.put("pages", Integer.valueOf(aeq1.b));
        contentvalues.put("remotepath", aeq1.e);
        contentvalues.put("remotekey", aeq1.f);
        contentvalues.put("state", Integer.valueOf(aeq1.h.a));
        contentvalues.put("serviceref", Integer.valueOf(aeq1.g));
        return a(aeq1, contentvalues);
    }

    public static boolean f(aeq aeq1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("pages", Integer.valueOf(aeq1.b));
        contentvalues.put("state", Integer.valueOf(aeq1.h.a));
        return a(aeq1, contentvalues);
    }

    public final aeq a(int i)
    {
        for (int j = 0; j < b.size(); j++)
        {
            aeq aeq1 = (aeq)b.get(j);
            if (aeq1.a == i)
            {
                return aeq1;
            }
        }

        return null;
    }

    public final aeq a(String s)
    {
        Object obj = agm.a(s);
        if (obj == null || ((String) (obj)).length() == 0) goto _L2; else goto _L1
_L1:
        List list = d.a(obj);
        if (list == null || list.isEmpty()) goto _L4; else goto _L3
_L3:
        if (list.size() <= 1) goto _L6; else goto _L5
_L5:
        Iterator iterator = list.iterator();
_L9:
        if (!iterator.hasNext()) goto _L6; else goto _L7
_L7:
        obj = (aeq)iterator.next();
        if (!agp.a(((aeq) (obj)).d, s)) goto _L9; else goto _L8
_L8:
        s = ((String) (obj));
_L10:
        Object obj1 = s;
        if (s == null)
        {
            obj1 = (aeq)list.get(0);
        }
        return ((aeq) (obj1));
_L2:
        return (aeq)c.get(s);
_L6:
        s = null;
        if (true) goto _L10; else goto _L4
_L4:
        return null;
    }

    final void a()
    {
        if (a != null)
        {
            a.close();
        }
        a = aei.a().a("INSERT INTO catalog ('state', 'readtill', 'bookmark', 'pages', 'name', 'path', 'remotepath', 'remotekey', 'serviceref', 'hash', 'lastread') VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
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
                aeq aeq1 = (aeq)iterator.next();
                jsonobject1 = new JSONObject();
                jsonobject1.put("id", aeq1.a);
                jsonobject1.put("state", aeq1.h.a);
                jsonobject1.put("readtill", aeq1.j);
                jsonobject1.put("bookmark", aeq1.i);
                jsonobject1.put("pages", aeq1.b);
                jsonobject1.put("name", aeq1.c);
                jsonobject1.put("path", aeq1.d);
                jsonobject1.put("remotepath", aeq1.e);
                jsonobject1.put("remotekey", aeq1.f);
                jsonobject1.put("serviceref", aeq1.g);
                jsonobject1.put("hash", aeq1.k);
                jsonobject1.put("lastread", aeq1.l);
                jsonobject1.put("dateadded", aeq1.m.getTime());
            }

        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new Exception(jsonobject.getMessage());
        }
        jsonobject.put("catalog", jsonarray);
        return;
    }

    public final aeq b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = b.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        aeq aeq1 = (aeq)iterator.next();
        if (aeq1 == null) goto _L4; else goto _L3
_L3:
        if (aeq1.d == null || !aeq1.d.equalsIgnoreCase(s)) goto _L4; else goto _L5
_L5:
        s = aeq1;
_L7:
        this;
        JVM INSTR monitorexit ;
        return s;
        s;
        this;
        JVM INSTR monitorexit ;
        throw s;
_L2:
        s = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final boolean c()
    {
        Cursor cursor;
        boolean flag;
        boolean flag1;
        if (a != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        flag1 = flag;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        try
        {
            cursor = aei.a().b("SELECT comicId, state, readtill, bookmark, pages, name, path, remotepath, remotekey, serviceref, hash, lastread, added FROM catalog LIMIT 1");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        if (cursor != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        flag1 = flag;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        cursor.close();
        flag1 = flag;
        return flag1;
    }

    public final void d()
    {
        int i = 0;
        this;
        JVM INSTR monitorenter ;
        SimpleDateFormat simpledateformat;
        b = new ArrayList();
        c = new HashMap();
        d = pn.h();
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
_L9:
        Cursor cursor = aei.a().a("SELECT comicId, state, readtill, bookmark, pages, name, path, remotepath, remotekey, serviceref, hash, lastread, added FROM catalog ORDER BY path LIMIT ", i);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        i += cursor.getCount();
_L7:
        aeq aeq1;
        aeq1 = new aeq();
        aeq1.a = cursor.getInt(0);
        aeq1.h = new aet(cursor.getInt(1));
        aeq1.j = cursor.getInt(2);
        aeq1.i = cursor.getInt(3);
        aeq1.b = cursor.getInt(4);
        aeq1.c = cursor.getString(5);
        aeq1.d = cursor.getString(6);
        aeq1.e = cursor.getString(7);
        aeq1.f = cursor.getString(8);
        aeq1.g = cursor.getInt(9);
        aeq1.k = cursor.getString(10);
        aeq1.l = cursor.getLong(11);
        aeq1.m = a(simpledateformat, cursor.getString(12));
        if (aeq1.c()) goto _L4; else goto _L3
_L3:
        b.add(aeq1);
_L5:
        if (!cursor.moveToNext())
        {
            cursor.close();
            continue; /* Loop/switch isn't completed */
        }
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
label0:
        {
            if (aeq1.k == null || aeq1.k.length() == 0)
            {
                break label0;
            }
            d.a(aeq1.k, aeq1);
        }
          goto _L5
        c.put(aeq1.d, aeq1);
        if (true) goto _L5; else goto _L6
_L6:
        if (true) goto _L7; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public final List f()
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

    protected final void finalize()
    {
        if (a != null)
        {
            a.close();
        }
    }

    public final boolean g(aeq aeq1)
    {
        int i = 0;
        this;
        JVM INSTR monitorenter ;
        if (!b(aeq1.a)) goto _L2; else goto _L1
_L1:
        boolean flag = b.remove(aeq1);
        if (flag) goto _L4; else goto _L3
_L3:
        String s = aeq1.d.toLowerCase();
        if ((aeq)c.get(s) == null) goto _L6; else goto _L5
_L5:
        c.remove(s);
        flag = true;
_L4:
        boolean flag1;
        flag1 = flag;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        ahd.a(aeq1.a);
        flag1 = flag;
_L8:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L6:
        if (i >= b.size()) goto _L4; else goto _L7
_L7:
        if (((aeq)b.get(i)).a != aeq1.a)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        b.remove(i);
        flag = true;
          goto _L4
        aeq1;
        this;
        JVM INSTR monitorexit ;
        throw aeq1;
_L2:
        flag1 = false;
          goto _L8
        i++;
          goto _L6
    }
}
