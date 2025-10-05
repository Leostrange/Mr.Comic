package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import defpackage.fz;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: gd  reason: default package */
/* compiled from: AppInfoDataSource */
public final class gd extends gc<fz> {
    private static final String c = gd.class.getName();
    private static final String[] d = fz.c;
    private static gd e;

    private gd(SQLiteDatabase sQLiteDatabase) {
        super(sQLiteDatabase);
    }

    public static synchronized gd a(Context context) {
        gd gdVar;
        synchronized (gd.class) {
            if (e == null) {
                e = new gd(ha.a(context));
            }
            gdVar = e;
        }
        return gdVar;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public fz a(Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            return null;
        }
        try {
            fz fzVar = new fz();
            fzVar.a = cursor.getLong(a(cursor, fz.a.ROW_ID.i));
            fzVar.d = cursor.getString(a(cursor, fz.a.APP_FAMILY_ID.i));
            fzVar.e = cursor.getString(a(cursor, fz.a.APP_VARIANT_ID.i));
            fzVar.f = cursor.getString(a(cursor, fz.a.PACKAGE_NAME.i));
            fzVar.h = ha.a(cursor.getString(a(cursor, fz.a.ALLOWED_SCOPES.i)), ",");
            fzVar.i = ha.a(cursor.getString(a(cursor, fz.a.GRANTED_PERMISSIONS.i)), ",");
            fzVar.g = cursor.getString(a(cursor, fz.a.CLIENT_ID.i));
            try {
                fzVar.j = new JSONObject(cursor.getString(a(cursor, fz.a.PAYLOAD.i)));
                return fzVar;
            } catch (JSONException e2) {
                Log.e(fz.b, "Payload String not correct JSON.  Setting payload to null", e2);
                return fzVar;
            }
        } catch (Exception e3) {
            gz.a(c, e3.getMessage(), (Throwable) e3);
            return null;
        }
    }

    public final String a() {
        return c;
    }

    public final String b() {
        return "AppInfo";
    }

    public final String[] c() {
        return d;
    }
}
