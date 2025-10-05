package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.AuthorizationCode;

/* renamed from: ge  reason: default package */
/* compiled from: AuthorizationCodeDataSource */
public final class ge extends gc<AuthorizationCode> {
    private static final String c = ge.class.getName();
    private static ge d;
    private static final String[] e = AuthorizationCode.e;

    private ge(SQLiteDatabase sQLiteDatabase) {
        super(sQLiteDatabase);
    }

    public static synchronized ge a(Context context) {
        ge geVar;
        synchronized (ge.class) {
            if (d == null) {
                d = new ge(ha.a(context));
            }
            geVar = d;
        }
        return geVar;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public AuthorizationCode a(Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            return null;
        }
        try {
            AuthorizationCode authorizationCode = new AuthorizationCode();
            authorizationCode.a = cursor.getLong(a(cursor, AuthorizationCode.a.ROW_ID.e));
            authorizationCode.b = cursor.getString(a(cursor, AuthorizationCode.a.CODE.e));
            authorizationCode.c = cursor.getString(a(cursor, AuthorizationCode.a.APP_FAMILY_ID.e));
            authorizationCode.d = cursor.getLong(a(cursor, AuthorizationCode.a.AUTHORIZATION_TOKEN_ID.e));
            return authorizationCode;
        } catch (Exception e2) {
            gz.a(c, e2.getMessage(), (Throwable) e2);
            return null;
        }
    }

    public final String a() {
        return c;
    }

    public final String b() {
        return "AuthorizationCode";
    }

    public final String[] c() {
        return e;
    }
}
