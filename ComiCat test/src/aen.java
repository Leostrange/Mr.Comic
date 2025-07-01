// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteStatement;
import android.os.Environment;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class aen
{

    ArrayList a;
    private SQLiteStatement b;
    private ArrayList c;
    private HashMap d;
    private HashMap e;

    public aen()
    {
        b = null;
    }

    private static aem a(List list, aem aem1)
    {
        int j;
        if (aem1.d())
        {
            j = aem1.c;
        } else
        {
            j = -1;
        }
        for (list = list.iterator(); list.hasNext();)
        {
            aem aem2 = (aem)list.next();
            int k;
            if (aem2.d())
            {
                k = aem2.c;
            } else
            {
                k = -1;
            }
            if (k == j && aem2.j.equalsIgnoreCase(aem1.j))
            {
                return aem2;
            }
        }

        return null;
    }

    private static aem a(List list, String s)
    {
        for (list = list.iterator(); list.hasNext();)
        {
            aem aem1 = (aem)list.next();
            if (aem1.j.equalsIgnoreCase(s) || aem1.d() && aem1.a().equalsIgnoreCase(s))
            {
                return aem1;
            }
        }

        return null;
    }

    private static ArrayList a(List list, int j)
    {
        ArrayList arraylist = new ArrayList(list.size());
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            aem aem1 = (aem)iterator.next();
            aem1.d = ael.a(aem1, false).size();
            aem1.e = ael.b(list, aem1, false).size();
            if (aem1.d > 0 || aem1.e > j)
            {
                arraylist.add(aem1);
            }
        } while (true);
        return arraylist;
    }

    private static void a(aem aem1, int j, List list, List list1)
    {
        int k = 0;
        for (aem aem2 = aem1; k < j; aem2 = aem1)
        {
            aem aem3 = b(list1, agv.c(aem2.j));
            aem1 = aem3;
            if (aem3 == null)
            {
                aem1 = g(aem2);
                aem1.e = 1;
                aem1.d = 0;
            }
            if (!list.contains(aem1) && b(list, aem1.j) == null)
            {
                list.add(aem1);
            }
            k++;
        }

    }

    private static void a(aem aem1, List list, List list1, List list2)
    {
label0:
        {
            do
            {
                if (aem1 == null)
                {
                    break label0;
                }
                Object obj = aem1.a();
                if (Environment.getExternalStorageDirectory().getAbsolutePath().equalsIgnoreCase(((String) (obj))) || a(list, aem1) != null || a(list1, aem1) != null)
                {
                    break label0;
                }
                obj = a(list2, aem1);
                if (obj == null)
                {
                    break;
                }
                list1.add(obj);
                aem1 = g(aem1);
            } while (true);
            list2.add(aem1);
        }
    }

    public static boolean a(aem aem1, boolean flag)
    {
        int j = aem1.a;
        boolean flag1;
        if (aei.a().a.delete("folders", (new StringBuilder("id=")).append(j).toString(), null) > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            ahd.d(aem1.a);
            if (flag)
            {
                aem1 = ael.b(aem1);
                if (aem1 != null)
                {
                    agm.a(aem1, 0, -1);
                }
            }
            return true;
        } else
        {
            return false;
        }
    }

    private static aem b(List list, String s)
    {
        Object obj = null;
        Iterator iterator = list.iterator();
        list = obj;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            aem aem1 = (aem)iterator.next();
            if (aem1.j.equalsIgnoreCase(s))
            {
                list = aem1;
            }
        } while (true);
        return list;
    }

    public static boolean b(aem aem1)
    {
        boolean flag = false;
        int j;
        try
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("path", aem1.b());
            contentvalues.put("serviceref", Integer.valueOf(aem1.c));
            contentvalues.put("flags", Integer.valueOf(aem1.f.a));
            contentvalues.put("count", Integer.valueOf(aem1.d));
            contentvalues.put("foldercount", Integer.valueOf(aem1.e));
            contentvalues.put("lastread", Long.valueOf(aem1.i));
            contentvalues.put("comicinprogress", Integer.valueOf(aem1.g));
            contentvalues.put("readcomics", Integer.valueOf(aem1.h));
            j = aei.a().a.update("folders", contentvalues, (new StringBuilder("id=")).append(aem1.a).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (aem aem1)
        {
            return false;
        }
        if (j > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean c(aem aem1)
    {
        boolean flag = false;
        int j;
        try
        {
            aem1.i = ahc.b();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("flags", Integer.valueOf(aem1.f.a));
            contentvalues.put("lastread", Long.valueOf(aem1.i));
            contentvalues.put("comicinprogress", Integer.valueOf(aem1.g));
            contentvalues.put("readcomics", Integer.valueOf(aem1.h));
            j = aei.a().a.update("folders", contentvalues, (new StringBuilder("id=")).append(aem1.a).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (aem aem1)
        {
            return false;
        }
        if (j > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean d(aem aem1)
    {
        boolean flag = false;
        int j;
        try
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("name", aem1.b);
            contentvalues.put("path", aem1.b());
            j = aei.a().a.update("folders", contentvalues, (new StringBuilder("id=")).append(aem1.a).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (aem aem1)
        {
            return false;
        }
        if (j > 0)
        {
            flag = true;
        }
        return flag;
    }

    private void e(aem aem1)
    {
        a.add(aem1);
        e.put(aem1.j.toLowerCase(), aem1);
    }

    private static boolean f(aem aem1)
    {
        boolean flag = false;
        int j;
        try
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("flags", Integer.valueOf(aem1.f.a));
            j = aei.a().a.update("folders", contentvalues, (new StringBuilder("id=")).append(aem1.a).toString(), null);
        }
        // Misplaced declaration of an exception variable
        catch (aem aem1)
        {
            return false;
        }
        if (j > 0)
        {
            flag = true;
        }
        return flag;
    }

    private static aem g(aem aem1)
    {
        aem aem3;
label0:
        {
            aem aem2;
label1:
            {
                aem3 = null;
                String s = agv.c(aem1.j);
                aem2 = aem3;
                if (s == null)
                {
                    break label1;
                }
                aem2 = aem3;
                if (s.length() <= 0)
                {
                    break label1;
                }
                aem3 = aem.a(s);
                aem3.c = aem1.c;
                aem3.f.a(2, aem1.d());
                if (aem3.b != null)
                {
                    aem2 = aem3;
                    if (aem3.b.length() != 0)
                    {
                        break label1;
                    }
                }
                if (aem1.c == -1)
                {
                    break label0;
                }
                aem3.b = act.b().a(aem1.c).c();
                aem2 = aem3;
            }
            return aem2;
        }
        aem3.b = ComicReaderApp.a().getString(0x7f060090);
        return aem3;
    }

    private void h()
    {
        a = new ArrayList();
        e = new HashMap();
        d = new HashMap();
        int j = 0;
        do
        {
            Cursor cursor = aei.a().a("SELECT id, path, name, serviceref, count, foldercount, flags, lastread, comicinprogress, readcomics FROM folders ORDER BY name COLLATE NOCASE ASC LIMIT ", j);
            if (cursor != null)
            {
                j += cursor.getCount();
                do
                {
                    aem aem1 = new aem();
                    aem1.a = cursor.getInt(0);
                    aem1.j = cursor.getString(1);
                    int k = aem1.j.indexOf('?');
                    if (k != -1)
                    {
                        aem1.j = aem1.j.substring(k + 1);
                    }
                    aem1.b = cursor.getString(2);
                    aem1.c = cursor.getInt(3);
                    aem1.d = cursor.getInt(4);
                    aem1.e = cursor.getInt(5);
                    aem1.f = new aet(cursor.getInt(6));
                    aem1.i = cursor.getLong(7);
                    aem1.g = cursor.getInt(8);
                    aem1.h = cursor.getInt(9);
                    if (!aem1.f.c(8))
                    {
                        e(aem1);
                    } else
                    {
                        d.put(aem1.j.toLowerCase(), aem1);
                    }
                } while (cursor.moveToNext());
                cursor.close();
            } else
            {
                c = i();
                return;
            }
        } while (true);
    }

    private ArrayList i()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            aem aem1 = (aem)iterator.next();
            if (ael.b(aem1) == null)
            {
                arraylist.add(aem1);
            }
        } while (true);
        return arraylist;
    }

    public final aem a(int j)
    {
label0:
        {
            if (a == null)
            {
                break label0;
            }
            Iterator iterator = a.iterator();
            aem aem1;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                aem1 = (aem)iterator.next();
            } while (aem1.a != j);
            return aem1;
        }
        return null;
    }

    public final aem a(String s)
    {
        aem aem1 = null;
        if (e != null)
        {
            aem1 = (aem)e.get(s.toLowerCase());
        }
        return aem1;
    }

    final void a()
    {
        if (b != null)
        {
            b.close();
        }
        b = aei.a().a("INSERT INTO folders ('path', 'name', 'serviceref', 'count', 'foldercount', 'flags', 'lastread', 'comicinprogress', 'readcomics') VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
    }

    public final void a(ArrayList arraylist, int j, boolean flag, boolean flag1)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = a(((List) (arraylist)), 0);
        arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        for (Iterator iterator = ((ArrayList) (obj)).iterator(); iterator.hasNext(); a(g((aem)iterator.next()), ((List) (obj)), ((List) (arraylist)), ((List) (arraylist1)))) { }
        break MISSING_BLOCK_LABEL_72;
        arraylist;
        this;
        JVM INSTR monitorexit ;
        throw arraylist;
        ArrayList arraylist2;
        Iterator iterator1;
        ((ArrayList) (obj)).addAll(arraylist);
        arraylist2 = a(((List) (obj)), 1);
        iterator1 = (new ArrayList(arraylist2)).iterator();
_L17:
        if (!iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        aem aem1;
        aem1 = (aem)iterator1.next();
        arraylist = agv.c(aem1.j);
        int k = 0;
_L3:
        if (arraylist == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (arraylist.length() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (b(arraylist2, arraylist) == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        if (k <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        a(aem1, k, ((List) (arraylist2)), ((List) (obj)));
        continue; /* Loop/switch isn't completed */
        k++;
        arraylist = agv.c(arraylist);
          goto _L3
_L2:
        obj = a(((List) (arraylist2)), 0);
        arraylist = aei.a().d.b("folders-hidden");
        if (arraylist == null) goto _L5; else goto _L4
_L4:
        if (arraylist.length() <= 0) goto _L5; else goto _L6
_L6:
        arraylist = arraylist.split("#,#");
_L15:
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        int i1;
        if (arraylist.length <= 0)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        i1 = arraylist.length;
        Object obj1;
        Object obj2;
        aem aem2;
        aen aen1;
        for (int l = 0; l >= i1; l++)
        {
            break MISSING_BLOCK_LABEL_276;
        }

        obj1 = a(((List) (obj)), arraylist[l]);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_880;
        }
        ((aem) (obj1)).b(true);
        break MISSING_BLOCK_LABEL_880;
        aei.a().d.a("folders-hidden", "");
        if (j != -1)
        {
            break MISSING_BLOCK_LABEL_362;
        }
        arraylist = ael.e();
_L7:
        obj1 = new ArrayList();
        obj2 = arraylist.iterator();
        do
        {
            if (!((Iterator) (obj2)).hasNext())
            {
                break;
            }
            aem2 = (aem)((Iterator) (obj2)).next();
            if (a(((List) (obj)), aem2) == null)
            {
                ((List) (obj1)).add(aem2);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_370;
        arraylist = ael.b(j);
          goto _L7
        for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); f(((aem) (obj2))))
        {
            obj2 = (aem)((Iterator) (obj1)).next();
            ((aem) (obj2)).c(true);
        }

        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_558;
        }
        obj1 = a.iterator();
_L9:
        do
        {
            do
            {
                if (!((Iterator) (obj1)).hasNext())
                {
                    break MISSING_BLOCK_LABEL_558;
                }
                obj2 = (aem)((Iterator) (obj1)).next();
            } while (((aem) (obj2)).d());
            aem2 = a(((List) (obj)), ((aem) (obj2)).j);
        } while (aem2 == null);
        obj2.c = aem2.c;
        ((aem) (obj2)).f.a(2, true);
        obj2.j = aem2.j;
        obj2.d = aem2.d;
        obj2.e = aem2.e;
        aen1 = aei.a().c;
        b(((aem) (obj2)));
        ahd.a(((aem) (obj2)));
        ((ArrayList) (obj)).remove(aem2);
        if (true) goto _L9; else goto _L8
_L8:
        obj1 = new ArrayList();
        obj2 = ((ArrayList) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj2)).hasNext())
            {
                break;
            }
            aem2 = (aem)((Iterator) (obj2)).next();
            if (a(((List) (arraylist)), aem2) == null)
            {
                ((List) (obj1)).add(aem2);
            }
        } while (true);
        obj1 = ((List) (obj1)).iterator();
_L10:
        if (!((Iterator) (obj1)).hasNext())
        {
            break MISSING_BLOCK_LABEL_724;
        }
        obj2 = (aem)((Iterator) (obj1)).next();
        aem2 = (aem)d.get(((aem) (obj2)).j.toLowerCase());
        if (aem2 == null)
        {
            break MISSING_BLOCK_LABEL_708;
        }
        aem2.c(false);
        f(aem2);
        arraylist.add(aem2);
          goto _L10
        obj2;
        ((SQLiteException) (obj2)).printStackTrace();
          goto _L10
        a(((aem) (obj2)));
        ahd.a(((aem) (obj2)));
          goto _L10
        obj = ((ArrayList) (obj)).iterator();
_L13:
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break MISSING_BLOCK_LABEL_864;
            }
            obj1 = (aem)((Iterator) (obj)).next();
            obj2 = a(((List) (arraylist)), ((aem) (obj1)));
        } while (obj2 == null);
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_805;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_799;
        }
        if (((aem) (obj2)).d == ((aem) (obj1)).d && ahd.b(((aem) (obj2)).a))
        {
            break MISSING_BLOCK_LABEL_805;
        }
        ahd.a(((aem) (obj2)));
        if (flag) goto _L12; else goto _L11
_L11:
        if (((aem) (obj2)).d == ((aem) (obj1)).d && ((aem) (obj2)).e == ((aem) (obj1)).e) goto _L13; else goto _L12
_L12:
        obj2.d = ((aem) (obj1)).d;
        obj2.e = ((aem) (obj1)).e;
        b(((aem) (obj2)));
          goto _L13
        h();
        g();
        this;
        JVM INSTR monitorexit ;
        return;
_L5:
        arraylist = null;
        if (true) goto _L15; else goto _L14
_L14:
        if (true) goto _L17; else goto _L16
_L16:
    }

    public final void a(JSONObject jsonobject)
    {
        JSONArray jsonarray;
        try
        {
            jsonarray = new JSONArray();
            JSONObject jsonobject1;
            for (Iterator iterator = a.iterator(); iterator.hasNext(); jsonarray.put(jsonobject1))
            {
                aem aem1 = (aem)iterator.next();
                jsonobject1 = new JSONObject();
                jsonobject1.put("id", aem1.a);
                jsonobject1.put("path", aem1.b());
                jsonobject1.put("flags", aem1.f);
                jsonobject1.put("count", aem1.d);
                jsonobject1.put("foldercount", aem1.e);
                jsonobject1.put("name", aem1.b);
                jsonobject1.put("serviceref", aem1.c);
                jsonobject1.put("comicinprogress", aem1.g);
                jsonobject1.put("readcomics", aem1.h);
                jsonobject1.put("lastread", aem1.i);
            }

        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new Exception(jsonobject.getMessage());
        }
        jsonobject.put("folders", jsonarray);
        return;
    }

    public final boolean a(aem aem1)
    {
        b.clearBindings();
        SQLiteStatement sqlitestatement = b;
        sqlitestatement.bindString(1, aem1.b());
        sqlitestatement.bindString(2, aem1.b);
        sqlitestatement.bindLong(3, aem1.c);
        sqlitestatement.bindLong(4, aem1.d);
        sqlitestatement.bindLong(5, aem1.e);
        sqlitestatement.bindLong(6, aem1.f.a);
        sqlitestatement.bindLong(7, aem1.i);
        sqlitestatement.bindLong(8, aem1.g);
        sqlitestatement.bindLong(9, aem1.h);
        aem1.a = (int)b.executeInsert();
        if (aem1.a != -1)
        {
            e(aem1);
        }
        return aem1.a != -1;
    }

    final void b()
    {
        aei.a().b.d();
        d();
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            aem aem1 = (aem)iterator.next();
            String s1 = aem1.j;
            String s;
            if (s1.length() > 1)
            {
                s = agp.a(s1);
            } else
            {
                s = s1;
            }
            if (s1.length() != s.length())
            {
                aem1.j = s;
                d(aem1);
            }
        } while (true);
        a(a, -1, true, true);
    }

    public final boolean c()
    {
        Cursor cursor;
        boolean flag;
        boolean flag1;
        if (b != null)
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
            cursor = aei.a().b("SELECT id, path, name, serviceref, count, foldercount, flags, lastread, comicinprogress, readcomics FROM folders LIMIT 1");
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
        this;
        JVM INSTR monitorenter ;
        h();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final List e()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = a;
        this;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final List f()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist = c;
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
        if (b != null)
        {
            b.close();
        }
    }

    final void g()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((aem)iterator.next()).i()) { }
    }
}
