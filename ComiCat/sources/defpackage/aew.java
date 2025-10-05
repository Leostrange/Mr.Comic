package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteStatement;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxSharedLink;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: aew  reason: default package */
/* compiled from: Services */
public final class aew {
    SQLiteStatement a = null;
    public ArrayList<aev> b;

    public static boolean b(aev aev) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("lastsynctime", Long.valueOf(aev.k));
            return aei.a().a.update("services", contentValues, new StringBuilder("id=").append(aev.a).toString(), (String[]) null) > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean c(aev aev) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("flags", Integer.valueOf(aev.j.a));
            contentValues.put("name", aev.c);
            contentValues.put("user", aev.f);
            contentValues.put("domain", aev.e);
            contentValues.put("user", aev.f);
            contentValues.put(BoxSharedLink.FIELD_PASSWORD, aev.g);
            contentValues.put(BoxConstants.KEY_TOKEN, aev.h);
            contentValues.put("expiry", Long.valueOf(aev.i));
            return aei.a().a.update("services", contentValues, new StringBuilder("id=").append(aev.a).toString(), (String[]) null) > 0;
        } catch (Exception e) {
            return false;
        }
    }

    public final aev a(int i) {
        if (this.b != null) {
            Iterator<aev> it = this.b.iterator();
            while (it.hasNext()) {
                aev next = it.next();
                if (next.a == i) {
                    return next;
                }
            }
        }
        return null;
    }

    public final List<aev> a() {
        ArrayList<aev> arrayList;
        synchronized (this) {
            arrayList = this.b;
        }
        return arrayList;
    }

    public final List<aev> a(String str) {
        ArrayList arrayList = new ArrayList();
        if (this.b != null) {
            Iterator<aev> it = this.b.iterator();
            while (it.hasNext()) {
                aev next = it.next();
                if (next.b.equals(str)) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    public final void a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<aev> it = this.b.iterator();
            while (it.hasNext()) {
                aev next = it.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(BoxEntity.FIELD_ID, next.a);
                jSONObject2.put("type", next.b);
                jSONObject2.put("name", next.c);
                jSONObject2.put("basepath", next.d);
                jSONObject2.put("domain", next.e);
                jSONObject2.put("user", next.f);
                jSONObject2.put(BoxSharedLink.FIELD_PASSWORD, next.g);
                jSONObject2.put(BoxConstants.KEY_TOKEN, next.h);
                jSONObject2.put("expiry", next.i);
                jSONObject2.put("flags", next.j);
                jSONObject2.put("lastsynctime", next.k);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("services", jSONArray);
        } catch (JSONException e) {
            throw new Exception(e.getMessage());
        }
    }

    public final boolean a(aev aev) {
        this.a.clearBindings();
        SQLiteStatement sQLiteStatement = this.a;
        sQLiteStatement.bindString(1, aev.b);
        sQLiteStatement.bindString(2, aev.c);
        sQLiteStatement.bindString(3, aev.d);
        sQLiteStatement.bindString(4, aev.e);
        sQLiteStatement.bindString(5, aev.f);
        sQLiteStatement.bindString(6, aev.g);
        sQLiteStatement.bindString(7, aev.h);
        sQLiteStatement.bindLong(8, aev.i);
        sQLiteStatement.bindLong(9, (long) aev.j.a);
        sQLiteStatement.bindLong(10, aev.k);
        aev.a = (int) this.a.executeInsert();
        if (!(aev.a == -1 || this.b == null)) {
            this.b.add(aev);
        }
        return aev.a != -1;
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        if (this.a != null) {
            this.a.close();
        }
    }
}
