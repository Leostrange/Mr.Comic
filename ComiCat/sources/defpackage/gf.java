package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import defpackage.ga;
import defpackage.gb;

/* renamed from: gf  reason: default package */
/* compiled from: AuthorizationTokenDataSource */
public final class gf extends gc<ga> {
    private static final String c = gf.class.getName();
    private static final String[] d = ga.b;
    private static gf e;

    private gf(SQLiteDatabase sQLiteDatabase) {
        super(sQLiteDatabase);
    }

    public static synchronized gf a(Context context) {
        gf gfVar;
        synchronized (gf.class) {
            if (e == null) {
                e = new gf(ha.a(context));
            }
            gfVar = e;
        }
        return gfVar;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public ga a(Cursor cursor) {
        ga gxVar;
        if (cursor == null || cursor.getCount() == 0) {
            return null;
        }
        try {
            ga.a aVar = ga.a.values()[cursor.getInt(a(cursor, ga.b.TYPE.i))];
            switch (gb.AnonymousClass1.a[aVar.ordinal()]) {
                case 1:
                    gxVar = new gv();
                    break;
                case 2:
                    gxVar = new gx();
                    break;
                default:
                    throw new IllegalArgumentException("Unknown token type for factory " + aVar);
            }
            gxVar.a = cursor.getLong(a(cursor, ga.b.ID.i));
            gxVar.a(cursor.getString(a(cursor, ga.b.APP_ID.i)));
            gxVar.b(cursor.getString(a(cursor, ga.b.TOKEN.i)));
            gxVar.a(gg.a.parse(cursor.getString(a(cursor, ga.b.CREATION_TIME.i))));
            gxVar.b(gg.a.parse(cursor.getString(a(cursor, ga.b.EXPIRATION_TIME.i))));
            gxVar.a(cursor.getBlob(a(cursor, ga.b.MISC_DATA.i)));
            gxVar.i = cursor.getString(a(cursor, ga.b.DIRECTED_ID.i));
            return gxVar;
        } catch (Exception e2) {
            gz.a(c, e2.getMessage(), (Throwable) e2);
            return null;
        }
    }

    public final String a() {
        return c;
    }

    public final String b() {
        return "AuthorizationToken";
    }

    public final String[] c() {
        return d;
    }
}
