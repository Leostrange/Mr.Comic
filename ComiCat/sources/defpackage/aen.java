package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteStatement;
import android.os.Environment;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: aen  reason: default package */
/* compiled from: CatalogFolders */
public final class aen {
    ArrayList<aem> a;
    private SQLiteStatement b = null;
    private ArrayList<aem> c;
    private HashMap<String, aem> d;
    private HashMap<String, aem> e;

    private static aem a(List<aem> list, aem aem) {
        int i = aem.d() ? aem.c : -1;
        for (aem next : list) {
            if ((next.d() ? next.c : -1) == i && next.j.equalsIgnoreCase(aem.j)) {
                return next;
            }
        }
        return null;
    }

    private static aem a(List<aem> list, String str) {
        for (aem next : list) {
            if (next.j.equalsIgnoreCase(str)) {
                return next;
            }
            if (next.d() && next.a().equalsIgnoreCase(str)) {
                return next;
            }
        }
        return null;
    }

    private static ArrayList<aem> a(List<aem> list, int i) {
        ArrayList<aem> arrayList = new ArrayList<>(list.size());
        for (aem next : list) {
            next.d = ael.a(next, false).size();
            next.e = ael.b(list, next, false).size();
            if (next.d > 0 || next.e > i) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    private static void a(aem aem, int i, List<aem> list, List<aem> list2) {
        int i2 = 0;
        while (i2 < i) {
            aem b2 = b(list2, agv.c(aem.j));
            if (b2 == null) {
                b2 = g(aem);
                b2.e = 1;
                b2.d = 0;
            }
            if (!list.contains(b2) && b(list, b2.j) == null) {
                list.add(b2);
            }
            i2++;
            aem = b2;
        }
    }

    private static void a(aem aem, List<aem> list, List<aem> list2, List<aem> list3) {
        while (aem != null) {
            if (!Environment.getExternalStorageDirectory().getAbsolutePath().equalsIgnoreCase(aem.a()) && a(list, aem) == null && a(list2, aem) == null) {
                aem a2 = a(list3, aem);
                if (a2 != null) {
                    list2.add(a2);
                    aem = g(aem);
                } else {
                    list3.add(aem);
                    return;
                }
            } else {
                return;
            }
        }
    }

    public static boolean a(aem aem, boolean z) {
        aem b2;
        if (!(aei.a().a.delete("folders", new StringBuilder("id=").append(aem.a).toString(), (String[]) null) > 0)) {
            return false;
        }
        ahd.d(aem.a);
        if (!z || (b2 = ael.b(aem)) == null) {
            return true;
        }
        agm.a(b2, 0, -1);
        return true;
    }

    private static aem b(List<aem> list, String str) {
        aem aem = null;
        for (aem next : list) {
            if (!next.j.equalsIgnoreCase(str)) {
                next = aem;
            }
            aem = next;
        }
        return aem;
    }

    public static boolean b(aem aem) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH, aem.b());
            contentValues.put("serviceref", Integer.valueOf(aem.c));
            contentValues.put("flags", Integer.valueOf(aem.f.a));
            contentValues.put("count", Integer.valueOf(aem.d));
            contentValues.put("foldercount", Integer.valueOf(aem.e));
            contentValues.put("lastread", Long.valueOf(aem.i));
            contentValues.put("comicinprogress", Integer.valueOf(aem.g));
            contentValues.put("readcomics", Integer.valueOf(aem.h));
            return aei.a().a.update("folders", contentValues, new StringBuilder("id=").append(aem.a).toString(), (String[]) null) > 0;
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean c(aem aem) {
        try {
            aem.i = ahc.b();
            ContentValues contentValues = new ContentValues();
            contentValues.put("flags", Integer.valueOf(aem.f.a));
            contentValues.put("lastread", Long.valueOf(aem.i));
            contentValues.put("comicinprogress", Integer.valueOf(aem.g));
            contentValues.put("readcomics", Integer.valueOf(aem.h));
            return aei.a().a.update("folders", contentValues, new StringBuilder("id=").append(aem.a).toString(), (String[]) null) > 0;
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean d(aem aem) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", aem.b);
            contentValues.put(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH, aem.b());
            return aei.a().a.update("folders", contentValues, new StringBuilder("id=").append(aem.a).toString(), (String[]) null) > 0;
        } catch (Exception e2) {
            return false;
        }
    }

    private void e(aem aem) {
        this.a.add(aem);
        this.e.put(aem.j.toLowerCase(), aem);
    }

    private static boolean f(aem aem) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("flags", Integer.valueOf(aem.f.a));
            return aei.a().a.update("folders", contentValues, new StringBuilder("id=").append(aem.a).toString(), (String[]) null) > 0;
        } catch (Exception e2) {
            return false;
        }
    }

    private static aem g(aem aem) {
        aem aem2 = null;
        String c2 = agv.c(aem.j);
        if (c2 != null && c2.length() > 0) {
            aem2 = aem.a(c2);
            aem2.c = aem.c;
            aem2.f.a(2, aem.d());
            if (aem2.b == null || aem2.b.length() == 0) {
                if (aem.c != -1) {
                    aem2.b = act.b().a(aem.c).c();
                } else {
                    aem2.b = ComicReaderApp.a().getString(R.string.comics);
                }
            }
        }
        return aem2;
    }

    private void h() {
        this.a = new ArrayList<>();
        this.e = new HashMap<>();
        this.d = new HashMap<>();
        int i = 0;
        while (true) {
            Cursor a2 = aei.a().a("SELECT id, path, name, serviceref, count, foldercount, flags, lastread, comicinprogress, readcomics FROM folders ORDER BY name COLLATE NOCASE ASC LIMIT ", i);
            if (a2 != null) {
                i += a2.getCount();
                do {
                    aem aem = new aem();
                    aem.a = a2.getInt(0);
                    aem.j = a2.getString(1);
                    int indexOf = aem.j.indexOf(63);
                    if (indexOf != -1) {
                        aem.j = aem.j.substring(indexOf + 1);
                    }
                    aem.b = a2.getString(2);
                    aem.c = a2.getInt(3);
                    aem.d = a2.getInt(4);
                    aem.e = a2.getInt(5);
                    aem.f = new aet(a2.getInt(6));
                    aem.i = a2.getLong(7);
                    aem.g = a2.getInt(8);
                    aem.h = a2.getInt(9);
                    if (!aem.f.c(8)) {
                        e(aem);
                    } else {
                        this.d.put(aem.j.toLowerCase(), aem);
                    }
                } while (a2.moveToNext());
                a2.close();
            } else {
                this.c = i();
                return;
            }
        }
    }

    private ArrayList<aem> i() {
        ArrayList<aem> arrayList = new ArrayList<>();
        Iterator<aem> it = this.a.iterator();
        while (it.hasNext()) {
            aem next = it.next();
            if (ael.b(next) == null) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public final aem a(int i) {
        if (this.a != null) {
            Iterator<aem> it = this.a.iterator();
            while (it.hasNext()) {
                aem next = it.next();
                if (next.a == i) {
                    return next;
                }
            }
        }
        return null;
    }

    public final aem a(String str) {
        if (this.e != null) {
            return this.e.get(str.toLowerCase());
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.b != null) {
            this.b.close();
        }
        this.b = aei.a().a("INSERT INTO folders ('path', 'name', 'serviceref', 'count', 'foldercount', 'flags', 'lastread', 'comicinprogress', 'readcomics') VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
    }

    public final void a(ArrayList<aem> arrayList, int i, boolean z, boolean z2) {
        aem a2;
        synchronized (this) {
            ArrayList<aem> a3 = a((List<aem>) arrayList, 0);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator<aem> it = a3.iterator();
            while (it.hasNext()) {
                a(g(it.next()), (List<aem>) a3, (List<aem>) arrayList2, (List<aem>) arrayList3);
            }
            a3.addAll(arrayList2);
            ArrayList<aem> a4 = a((List<aem>) a3, 1);
            Iterator it2 = new ArrayList(a4).iterator();
            while (it2.hasNext()) {
                aem aem = (aem) it2.next();
                String c2 = agv.c(aem.j);
                int i2 = 0;
                while (true) {
                    if (c2 == null || c2.length() <= 0) {
                        break;
                    } else if (b(a4, c2) == null) {
                        i2++;
                        c2 = agv.c(c2);
                    } else if (i2 > 0) {
                        a(aem, i2, (List<aem>) a4, (List<aem>) a3);
                    }
                }
            }
            ArrayList<aem> a5 = a((List<aem>) a4, 0);
            String b2 = aei.a().d.b("folders-hidden");
            String[] split = (b2 == null || b2.length() <= 0) ? null : b2.split("#,#");
            if (split != null && split.length > 0) {
                for (String a6 : split) {
                    aem a7 = a((List<aem>) a5, a6);
                    if (a7 != null) {
                        a7.b(true);
                    }
                }
                aei.a().d.a("folders-hidden", "");
            }
            ArrayList<aem> e2 = i == -1 ? ael.e() : ael.b(i);
            ArrayList<aem> arrayList4 = new ArrayList<>();
            for (aem next : e2) {
                if (a((List<aem>) a5, next) == null) {
                    arrayList4.add(next);
                }
            }
            for (aem aem2 : arrayList4) {
                aem2.c(true);
                f(aem2);
            }
            if (i != -1) {
                Iterator<aem> it3 = this.a.iterator();
                while (it3.hasNext()) {
                    aem next2 = it3.next();
                    if (!next2.d() && (a2 = a((List<aem>) a5, next2.j)) != null) {
                        next2.c = a2.c;
                        next2.f.a(2, true);
                        next2.j = a2.j;
                        next2.d = a2.d;
                        next2.e = a2.e;
                        aen aen = aei.a().c;
                        b(next2);
                        ahd.a(next2);
                        a5.remove(a2);
                    }
                }
            }
            ArrayList<aem> arrayList5 = new ArrayList<>();
            Iterator<aem> it4 = a5.iterator();
            while (it4.hasNext()) {
                aem next3 = it4.next();
                if (a(e2, next3) == null) {
                    arrayList5.add(next3);
                }
            }
            for (aem aem3 : arrayList5) {
                try {
                    aem aem4 = this.d.get(aem3.j.toLowerCase());
                    if (aem4 != null) {
                        aem4.c(false);
                        f(aem4);
                        e2.add(aem4);
                    } else {
                        a(aem3);
                        ahd.a(aem3);
                    }
                } catch (SQLiteException e3) {
                    e3.printStackTrace();
                }
            }
            Iterator<aem> it5 = a5.iterator();
            while (it5.hasNext()) {
                aem next4 = it5.next();
                aem a8 = a(e2, next4);
                if (a8 != null) {
                    if (z2 && (z || a8.d != next4.d || !ahd.b(a8.a))) {
                        ahd.a(a8);
                    }
                    if (z || a8.d != next4.d || a8.e != next4.e) {
                        a8.d = next4.d;
                        a8.e = next4.e;
                        b(a8);
                    }
                }
            }
            h();
            g();
        }
    }

    public final void a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<aem> it = this.a.iterator();
            while (it.hasNext()) {
                aem next = it.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(BoxEntity.FIELD_ID, next.a);
                jSONObject2.put(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH, next.b());
                jSONObject2.put("flags", next.f);
                jSONObject2.put("count", next.d);
                jSONObject2.put("foldercount", next.e);
                jSONObject2.put("name", next.b);
                jSONObject2.put("serviceref", next.c);
                jSONObject2.put("comicinprogress", next.g);
                jSONObject2.put("readcomics", next.h);
                jSONObject2.put("lastread", next.i);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("folders", jSONArray);
        } catch (JSONException e2) {
            throw new Exception(e2.getMessage());
        }
    }

    public final boolean a(aem aem) {
        this.b.clearBindings();
        SQLiteStatement sQLiteStatement = this.b;
        sQLiteStatement.bindString(1, aem.b());
        sQLiteStatement.bindString(2, aem.b);
        sQLiteStatement.bindLong(3, (long) aem.c);
        sQLiteStatement.bindLong(4, (long) aem.d);
        sQLiteStatement.bindLong(5, (long) aem.e);
        sQLiteStatement.bindLong(6, (long) aem.f.a);
        sQLiteStatement.bindLong(7, aem.i);
        sQLiteStatement.bindLong(8, (long) aem.g);
        sQLiteStatement.bindLong(9, (long) aem.h);
        aem.a = (int) this.b.executeInsert();
        if (aem.a != -1) {
            e(aem);
        }
        return aem.a != -1;
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        aei.a().b.d();
        d();
        Iterator<aem> it = this.a.iterator();
        while (it.hasNext()) {
            aem next = it.next();
            String str = next.j;
            String a2 = str.length() > 1 ? agp.a(str) : str;
            if (str.length() != a2.length()) {
                next.j = a2;
                d(next);
            }
        }
        a(this.a, -1, true, true);
    }

    public final boolean c() {
        boolean z = this.b != null;
        if (!z) {
            return z;
        }
        try {
            Cursor b2 = aei.a().b("SELECT id, path, name, serviceref, count, foldercount, flags, lastread, comicinprogress, readcomics FROM folders LIMIT 1");
            boolean z2 = b2 != null;
            if (b2 == null) {
                return z2;
            }
            b2.close();
            return z2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final void d() {
        synchronized (this) {
            h();
        }
    }

    public final List<aem> e() {
        ArrayList<aem> arrayList;
        synchronized (this) {
            arrayList = this.a;
        }
        return arrayList;
    }

    public final List<aem> f() {
        ArrayList<aem> arrayList;
        synchronized (this) {
            arrayList = this.c;
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        if (this.b != null) {
            this.b.close();
        }
    }

    /* access modifiers changed from: package-private */
    public final void g() {
        Iterator<aem> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().i();
        }
    }
}
