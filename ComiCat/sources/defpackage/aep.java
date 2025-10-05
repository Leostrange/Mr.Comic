package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.box.androidsdk.content.models.BoxEntity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: aep  reason: default package */
/* compiled from: CloudExclusions */
public final class aep {
    SQLiteStatement a = null;
    public HashMap<String, aeo> b = new HashMap<>();

    private static List<aeo> a() {
        ArrayList arrayList = new ArrayList();
        Cursor b2 = aei.a().b("SELECT exclusionid, downloadref, serviceref, reason FROM cloud_exclusions");
        if (b2 != null) {
            if (b2.moveToFirst()) {
                do {
                    aeo aeo = new aeo();
                    aeo.a = b2.getInt(0);
                    aeo.b = b2.getString(1);
                    aeo.c = b2.getInt(2);
                    aeo.d = b2.getInt(3);
                    arrayList.add(aeo);
                } while (b2.moveToNext());
            }
            b2.close();
        }
        return arrayList;
    }

    public static void a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (aeo next : a()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(BoxEntity.FIELD_ID, next.a);
                jSONObject2.put("downloadref", next.b);
                jSONObject2.put("serviceref", next.c);
                jSONObject2.put("reason", next.d);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("cloud_exclusions", jSONArray);
        } catch (JSONException e) {
            throw new Exception(e.getMessage());
        }
    }

    public static String b(String str, int i, int i2) {
        return str + ":" + i + ":" + i2;
    }

    public final boolean a(String str, int i, int i2) {
        String b2 = b(str, i, i2);
        if (this.b.get(b2) == null) {
            this.a.clearBindings();
            this.a.bindString(1, str);
            this.a.bindLong(2, (long) i);
            this.a.bindLong(3, (long) i2);
            int executeInsert = (int) this.a.executeInsert();
            if (executeInsert != -1) {
                aeo aeo = new aeo();
                aeo.a = executeInsert;
                aeo.b = str;
                aeo.c = i;
                aeo.d = i2;
                this.b.put(b2, aeo);
            }
        }
        return true;
    }

    public final boolean c(String str, int i, int i2) {
        return this.b.get(b(str, i, i2)) != null;
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        if (this.a != null) {
            this.a.close();
        }
    }
}
