package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.requests.BoxRequestsMetadata;
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

/* renamed from: aek  reason: default package */
/* compiled from: Catalog */
public final class aek {
    public SQLiteStatement a = null;
    public ArrayList<aeq> b;
    private HashMap<String, aeq> c;
    private pn<String, aeq> d;

    private static Date a(DateFormat dateFormat, String str) {
        if (str == null) {
            return null;
        }
        try {
            return dateFormat.parse(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean a(aeq aeq) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", Integer.valueOf(aeq.h.a));
        contentValues.put("readtill", Integer.valueOf(aeq.j));
        contentValues.put("bookmark", Integer.valueOf(aeq.i));
        contentValues.put("pages", Integer.valueOf(aeq.b));
        contentValues.put("name", aeq.c);
        contentValues.put(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH, aeq.d);
        contentValues.put("remotepath", aeq.e);
        contentValues.put("remotekey", aeq.f);
        contentValues.put("serviceref", Integer.valueOf(aeq.g));
        contentValues.put("pages", Integer.valueOf(aeq.b));
        contentValues.put("hash", aeq.k);
        contentValues.put("lastread", Long.valueOf(aeq.l));
        return a(aeq, contentValues);
    }

    public static boolean a(aeq aeq, ContentValues contentValues) {
        try {
            return aei.a().a.update("catalog", contentValues, new StringBuilder("comicId=").append(aeq.a).toString(), (String[]) null) > 0;
        } catch (Exception e) {
            return false;
        }
    }

    static void b() {
        int i = 0;
        while (true) {
            Cursor b2 = aei.a().b("SELECT comicId, state, name, path FROM catalog LIMIT " + i + ',' + 100);
            if (b2 != null && b2.getCount() != 0) {
                i += b2.getCount();
                if (b2.moveToFirst()) {
                    do {
                        aeq aeq = new aeq();
                        aeq.a = b2.getInt(0);
                        aeq.h = new aet(b2.getInt(1));
                        aeq.c = b2.getString(2);
                        aeq.d = b2.getString(3);
                        if (!aeq.d() && !aeq.c()) {
                            aeq.k = agm.a(aeq.d);
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("hash", aeq.k);
                            a(aeq, contentValues);
                        }
                    } while (b2.moveToNext());
                }
                b2.close();
            } else {
                return;
            }
        }
    }

    private static boolean b(int i) {
        try {
            return aei.a().a.delete("catalog", new StringBuilder("comicId=").append(i).toString(), (String[]) null) > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean b(aeq aeq) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", Integer.valueOf(aeq.h.a));
        return a(aeq, contentValues);
    }

    public static boolean c(aeq aeq) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("bookmark", Integer.valueOf(aeq.i));
        return a(aeq, contentValues);
    }

    public static boolean d(aeq aeq) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", aeq.c);
        contentValues.put(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH, aeq.d);
        if (!aeq.d()) {
            aeq.k = agm.a(aeq.d);
        }
        contentValues.put("hash", aeq.k);
        return a(aeq, contentValues);
    }

    public static int e() {
        int i = 0;
        Cursor b2 = aei.a().b("SELECT MAX(comicId) FROM catalog");
        if (b2 != null) {
            if (b2.getCount() > 0) {
                b2.moveToFirst();
                i = b2.getInt(0);
            }
            b2.close();
        }
        return i;
    }

    public static boolean e(aeq aeq) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", aeq.c);
        contentValues.put(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH, aeq.d);
        contentValues.put("pages", Integer.valueOf(aeq.b));
        contentValues.put("remotepath", aeq.e);
        contentValues.put("remotekey", aeq.f);
        contentValues.put("state", Integer.valueOf(aeq.h.a));
        contentValues.put("serviceref", Integer.valueOf(aeq.g));
        return a(aeq, contentValues);
    }

    public static boolean f(aeq aeq) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("pages", Integer.valueOf(aeq.b));
        contentValues.put("state", Integer.valueOf(aeq.h.a));
        return a(aeq, contentValues);
    }

    public final aeq a(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.b.size()) {
                return null;
            }
            aeq aeq = this.b.get(i3);
            if (aeq.a == i) {
                return aeq;
            }
            i2 = i3 + 1;
        }
    }

    public final aeq a(String str) {
        aeq aeq;
        String a2 = agm.a(str);
        if (a2 == null || a2.length() == 0) {
            return this.c.get(str);
        }
        List a3 = this.d.a(a2);
        if (a3 == null || a3.isEmpty()) {
            return null;
        }
        if (a3.size() > 1) {
            Iterator it = a3.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                aeq = (aeq) it.next();
                if (agp.a(aeq.d, str)) {
                    break;
                }
            }
        }
        aeq = null;
        return aeq == null ? (aeq) a3.get(0) : aeq;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.a != null) {
            this.a.close();
        }
        this.a = aei.a().a("INSERT INTO catalog ('state', 'readtill', 'bookmark', 'pages', 'name', 'path', 'remotepath', 'remotekey', 'serviceref', 'hash', 'lastread') VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    }

    public final void a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<aeq> it = this.b.iterator();
            while (it.hasNext()) {
                aeq next = it.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(BoxEntity.FIELD_ID, next.a);
                jSONObject2.put("state", next.h.a);
                jSONObject2.put("readtill", next.j);
                jSONObject2.put("bookmark", next.i);
                jSONObject2.put("pages", next.b);
                jSONObject2.put("name", next.c);
                jSONObject2.put(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH, next.d);
                jSONObject2.put("remotepath", next.e);
                jSONObject2.put("remotekey", next.f);
                jSONObject2.put("serviceref", next.g);
                jSONObject2.put("hash", next.k);
                jSONObject2.put("lastread", next.l);
                jSONObject2.put("dateadded", next.m.getTime());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("catalog", jSONArray);
        } catch (JSONException e) {
            throw new Exception(e.getMessage());
        }
    }

    public final aeq b(String str) {
        aeq aeq;
        synchronized (this) {
            Iterator<aeq> it = this.b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    aeq = null;
                    break;
                }
                aeq = it.next();
                if (aeq != null && aeq.d != null && aeq.d.equalsIgnoreCase(str)) {
                    break;
                }
            }
        }
        return aeq;
    }

    public final boolean c() {
        boolean z = this.a != null;
        if (!z) {
            return z;
        }
        try {
            Cursor b2 = aei.a().b("SELECT comicId, state, readtill, bookmark, pages, name, path, remotepath, remotekey, serviceref, hash, lastread, added FROM catalog LIMIT 1");
            boolean z2 = b2 != null;
            if (b2 == null) {
                return z2;
            }
            b2.close();
            return z2;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void d() {
        int i = 0;
        synchronized (this) {
            this.b = new ArrayList<>();
            this.c = new HashMap<>();
            this.d = pn.h();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            while (true) {
                Cursor a2 = aei.a().a("SELECT comicId, state, readtill, bookmark, pages, name, path, remotepath, remotekey, serviceref, hash, lastread, added FROM catalog ORDER BY path LIMIT ", i);
                if (a2 != null) {
                    i += a2.getCount();
                    do {
                        aeq aeq = new aeq();
                        aeq.a = a2.getInt(0);
                        aeq.h = new aet(a2.getInt(1));
                        aeq.j = a2.getInt(2);
                        aeq.i = a2.getInt(3);
                        aeq.b = a2.getInt(4);
                        aeq.c = a2.getString(5);
                        aeq.d = a2.getString(6);
                        aeq.e = a2.getString(7);
                        aeq.f = a2.getString(8);
                        aeq.g = a2.getInt(9);
                        aeq.k = a2.getString(10);
                        aeq.l = a2.getLong(11);
                        aeq.m = a((DateFormat) simpleDateFormat, a2.getString(12));
                        if (!aeq.c()) {
                            this.b.add(aeq);
                        } else if (aeq.k == null || aeq.k.length() == 0) {
                            this.c.put(aeq.d, aeq);
                        } else {
                            this.d.a(aeq.k, aeq);
                        }
                    } while (a2.moveToNext());
                    a2.close();
                }
            }
        }
    }

    public final List<aeq> f() {
        ArrayList<aeq> arrayList;
        synchronized (this) {
            arrayList = this.b;
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        if (this.a != null) {
            this.a.close();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x002b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean g(defpackage.aeq r6) {
        /*
            r5 = this;
            r2 = 1
            r1 = 0
            monitor-enter(r5)
            int r0 = r6.a     // Catch:{ all -> 0x0051 }
            boolean r0 = b((int) r0)     // Catch:{ all -> 0x0051 }
            if (r0 == 0) goto L_0x0056
            java.util.ArrayList<aeq> r0 = r5.b     // Catch:{ all -> 0x0051 }
            boolean r3 = r0.remove(r6)     // Catch:{ all -> 0x0051 }
            if (r3 != 0) goto L_0x0054
            java.lang.String r0 = r6.d     // Catch:{ all -> 0x0051 }
            java.lang.String r4 = r0.toLowerCase()     // Catch:{ all -> 0x0051 }
            java.util.HashMap<java.lang.String, aeq> r0 = r5.c     // Catch:{ all -> 0x0051 }
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x0051 }
            aeq r0 = (defpackage.aeq) r0     // Catch:{ all -> 0x0051 }
            if (r0 == 0) goto L_0x0034
            java.util.HashMap<java.lang.String, aeq> r0 = r5.c     // Catch:{ all -> 0x0051 }
            r0.remove(r4)     // Catch:{ all -> 0x0051 }
            r0 = r2
        L_0x0029:
            if (r0 == 0) goto L_0x0030
            int r1 = r6.a     // Catch:{ all -> 0x0051 }
            defpackage.ahd.a((int) r1)     // Catch:{ all -> 0x0051 }
        L_0x0030:
            monitor-exit(r5)     // Catch:{ all -> 0x0051 }
            return r0
        L_0x0032:
            int r1 = r1 + 1
        L_0x0034:
            java.util.ArrayList<aeq> r0 = r5.b     // Catch:{ all -> 0x0051 }
            int r0 = r0.size()     // Catch:{ all -> 0x0051 }
            if (r1 >= r0) goto L_0x0054
            java.util.ArrayList<aeq> r0 = r5.b     // Catch:{ all -> 0x0051 }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ all -> 0x0051 }
            aeq r0 = (defpackage.aeq) r0     // Catch:{ all -> 0x0051 }
            int r0 = r0.a     // Catch:{ all -> 0x0051 }
            int r4 = r6.a     // Catch:{ all -> 0x0051 }
            if (r0 != r4) goto L_0x0032
            java.util.ArrayList<aeq> r0 = r5.b     // Catch:{ all -> 0x0051 }
            r0.remove(r1)     // Catch:{ all -> 0x0051 }
            r0 = r2
            goto L_0x0029
        L_0x0051:
            r0 = move-exception
            monitor-exit(r5)     // Catch:{ all -> 0x0051 }
            throw r0
        L_0x0054:
            r0 = r3
            goto L_0x0029
        L_0x0056:
            r0 = r1
            goto L_0x0030
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aek.g(aeq):boolean");
    }
}
