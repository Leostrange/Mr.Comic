package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.identity.auth.device.dataobject.RequestedScope;

/* renamed from: gh  reason: default package */
/* compiled from: RequestedScopeDataSource */
public final class gh extends gc<RequestedScope> {
    public static final String[] c = RequestedScope.b;
    private static final String d = gh.class.getName();
    private static gh e;

    private gh(SQLiteDatabase sQLiteDatabase) {
        super(sQLiteDatabase);
    }

    public static synchronized gh a(Context context) {
        gh ghVar;
        synchronized (gh.class) {
            if (e == null) {
                e = new gh(ha.a(context));
            }
            ghVar = e;
        }
        return ghVar;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public RequestedScope a(Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            return null;
        }
        try {
            RequestedScope requestedScope = new RequestedScope();
            requestedScope.a = cursor.getLong(a(cursor, RequestedScope.a.ROW_ID.g));
            requestedScope.c = cursor.getString(a(cursor, RequestedScope.a.SCOPE.g));
            requestedScope.d = cursor.getString(a(cursor, RequestedScope.a.APP_FAMILY_ID.g));
            requestedScope.e = cursor.getString(a(cursor, RequestedScope.a.DIRECTED_ID.g));
            requestedScope.f = cursor.getLong(a(cursor, RequestedScope.a.AUTHORIZATION_ACCESS_TOKEN_ID.g));
            requestedScope.g = cursor.getLong(a(cursor, RequestedScope.a.AUTHORIZATION_REFRESH_TOKEN_ID.g));
            return requestedScope;
        } catch (Exception e2) {
            gz.a(d, e2.getMessage(), (Throwable) e2);
            return null;
        }
    }

    public final String a() {
        return d;
    }

    public final String b() {
        return "RequestedScope";
    }

    public final String[] c() {
        return c;
    }
}
