package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: aes  reason: default package */
/* compiled from: Exclusions */
public final class aes {
    SQLiteStatement a = null;
    public HashMap<String, Integer> b = new HashMap<>();

    public static void a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (String put : b()) {
                jSONArray.put(put);
            }
            jSONObject.put("exclusions", jSONArray);
        } catch (JSONException e) {
            throw new Exception(e.getMessage());
        }
    }

    public static List<String> b() {
        ArrayList arrayList = new ArrayList();
        Cursor b2 = aei.a().b("SELECT path FROM exclusions ORDER BY path ASC");
        if (b2 != null) {
            if (b2.moveToFirst()) {
                do {
                    arrayList.add(b2.getString(0));
                } while (b2.moveToNext());
            }
            b2.close();
        }
        return arrayList;
    }

    public final void a() {
        this.b.clear();
        Cursor b2 = aei.a().b("SELECT exclusionid, path FROM exclusions");
        if (b2 != null) {
            if (b2.moveToFirst()) {
                do {
                    this.b.put(b2.getString(1), Integer.valueOf(b2.getInt(0)));
                } while (b2.moveToNext());
            }
            b2.close();
        }
    }

    public final boolean a(String str) {
        if (this.b.get(str) != null) {
            return true;
        }
        this.a.clearBindings();
        this.a.bindString(1, str);
        boolean z = this.a.executeInsert() != -1;
        if (!z) {
            return z;
        }
        a();
        return z;
    }

    public final boolean b(String str) {
        return this.b.get(str) != null;
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        if (this.a != null) {
            this.a.close();
        }
    }
}
