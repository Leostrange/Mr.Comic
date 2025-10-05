package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: fz  reason: default package */
/* compiled from: AppInfo */
public class fz extends fy {
    public static final String b = fz.class.getName();
    public static final String[] c = {"rowid", "AppFamilyId", "PackageName", "AllowedScopes", "GrantedPermissions", "ClientId", "AppVariantId", "Payload"};
    public String d;
    public String e;
    public String f;
    public String g;
    public String[] h;
    public String[] i;
    public JSONObject j;

    /* renamed from: fz$a */
    /* compiled from: AppInfo */
    public enum a {
        ROW_ID(0),
        APP_FAMILY_ID(1),
        PACKAGE_NAME(2),
        ALLOWED_SCOPES(3),
        GRANTED_PERMISSIONS(4),
        CLIENT_ID(5),
        APP_VARIANT_ID(6),
        PAYLOAD(7);
        
        public final int i;

        private a(int i2) {
            this.i = i2;
        }
    }

    public fz() {
    }

    private fz(long j2, String str, String str2, String str3, String[] strArr, String[] strArr2, String str4, JSONObject jSONObject) {
        this(str, str2, str3, strArr, strArr2, str4, jSONObject);
        this.a = j2;
    }

    public fz(String str, String str2, String str3, String[] strArr, String[] strArr2, String str4, JSONObject jSONObject) {
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.h = strArr;
        this.i = strArr2;
        this.g = str4;
        this.j = jSONObject;
    }

    private boolean a(fz fzVar) {
        JSONObject jSONObject = fzVar.j;
        if (this.j == null) {
            return jSONObject == null;
        }
        if (jSONObject == null) {
            return false;
        }
        Iterator<String> keys = this.j.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                if (!this.j.getString(next).equals(jSONObject.getString(next))) {
                    Log.e(b, "APIKeys not equal: key " + next + " not equal");
                    return false;
                }
            } catch (JSONException e2) {
                Log.e(b, "APIKeys not equal: JSONException", e2);
                return false;
            } catch (ClassCastException e3) {
                Log.e(b, "APIKeys not equal: ClassCastExceptionException", e3);
                return false;
            }
        }
        return true;
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(c[a.APP_FAMILY_ID.i], this.d);
        contentValues.put(c[a.PACKAGE_NAME.i], this.f);
        contentValues.put(c[a.ALLOWED_SCOPES.i], ha.a(this.h, ","));
        contentValues.put(c[a.GRANTED_PERMISSIONS.i], ha.a(this.i, ","));
        contentValues.put(c[a.CLIENT_ID.i], this.g);
        contentValues.put(c[a.APP_VARIANT_ID.i], this.e);
        contentValues.put(c[a.PAYLOAD.i], this.j != null ? this.j.toString() : null);
        return contentValues;
    }

    public final /* synthetic */ gc c(Context context) {
        return gd.a(context);
    }

    public /* synthetic */ Object clone() {
        return new fz(this.a, this.d, this.e, this.f, this.h, this.i, this.g, this.j);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof fz)) {
            return false;
        }
        fz fzVar = (fz) obj;
        return TextUtils.equals(this.d, fzVar.d) && TextUtils.equals(this.e, fzVar.e) && TextUtils.equals(this.f, fzVar.f) && Arrays.equals(this.h, fzVar.h) && Arrays.equals(this.i, fzVar.i) && TextUtils.equals(this.g, fzVar.g) && a(fzVar);
    }

    public String toString() {
        try {
            return this.j.toString(4);
        } catch (Exception e2) {
            return "{ rowid=" + this.a + ", appFamilyId=" + this.d + ", appVariantId=" + this.e + ", packageName=" + this.f + ", allowedScopes=" + Arrays.toString(this.h) + ", grantedPermissions=" + Arrays.toString(this.i) + ", clientId=" + this.g + " }";
        }
    }
}
