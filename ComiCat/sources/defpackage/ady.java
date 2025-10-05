package defpackage;

import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFolder;
import org.json.JSONObject;

/* renamed from: ady  reason: default package */
/* compiled from: OneDriveEntry */
public final class ady implements adc {
    JSONObject a;
    String b;

    ady(JSONObject jSONObject, String str) {
        this.a = jSONObject;
        this.b = str;
    }

    public final String a() {
        return this.a.optString("name");
    }

    public final String b() {
        return agp.b(this.b, a());
    }

    public final String c() {
        return this.a.optString(BoxEntity.FIELD_ID);
    }

    public final boolean d() {
        return this.a != null;
    }

    public final boolean e() {
        return this.a.optString("type").equals(BoxFolder.TYPE);
    }

    public final long f() {
        return this.a.optLong("size");
    }

    public final String g() {
        return null;
    }
}
