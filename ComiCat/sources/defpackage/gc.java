package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import defpackage.fy;

/* renamed from: gc  reason: default package */
/* compiled from: AbstractDataSource */
public abstract class gc<K extends fy> {
    static final /* synthetic */ boolean b = (!gc.class.desiredAssertionStatus());
    private static final String c = gc.class.getName();
    protected SQLiteDatabase a;

    public gc(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase == null) {
            throw new IllegalArgumentException("database can't be null!");
        }
        this.a = sQLiteDatabase;
    }

    public final int a(Cursor cursor, int i) {
        if (!b && cursor == null) {
            throw new AssertionError();
        } else if (i >= 0 && i < c().length) {
            return cursor.getColumnIndexOrThrow(c()[i]);
        } else {
            throw new IllegalArgumentException("colIndex is out of bound!");
        }
    }

    public final long a(K k) {
        if (k == null) {
            return -1;
        }
        gz.a(c, "Insert Row table=" + b(), "vals=" + k.a());
        long insert = this.a.insert(b(), (String) null, k.a());
        k.a = insert;
        return insert;
    }

    public final K a(long j) {
        return a(new String[]{"rowid"}, new String[]{String.valueOf(j)});
    }

    public abstract K a(Cursor cursor);

    /* JADX WARNING: Removed duplicated region for block: B:33:0x00ad  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final K a(java.lang.String[] r10, java.lang.String[] r11) {
        /*
            r9 = this;
            r8 = 0
            int r0 = r10.length     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            int r1 = r11.length     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            if (r0 == r1) goto L_0x002e
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.String r1 = "selectionFields and selectionValues differ in length!"
            r0.<init>(r1)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            throw r0     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
        L_0x000d:
            r0 = move-exception
            r1 = r8
        L_0x000f:
            java.lang.String r2 = r9.a()     // Catch:{ all -> 0x00b1 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00b1 }
            r3.<init>()     // Catch:{ all -> 0x00b1 }
            java.lang.String r4 = r0.getMessage()     // Catch:{ all -> 0x00b1 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00b1 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00b1 }
            defpackage.gz.a((java.lang.String) r2, (java.lang.String) r3, (java.lang.Throwable) r0)     // Catch:{ all -> 0x00b1 }
            if (r1 == 0) goto L_0x00b7
            r1.close()
            r0 = r8
        L_0x002d:
            return r0
        L_0x002e:
            java.lang.String r3 = ""
            r0 = 0
            r1 = r0
        L_0x0032:
            int r0 = r10.length     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            if (r1 >= r0) goto L_0x0089
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            r0.<init>()     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            r2 = r10[r1]     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.StringBuilder r2 = r0.append(r2)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            r0 = r11[r1]     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            if (r0 != 0) goto L_0x006e
            java.lang.String r0 = " IS NULL"
        L_0x004a:
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.String r0 = r0.toString()     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            r2.<init>()     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.StringBuilder r2 = r2.append(r0)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            int r0 = r10.length     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            int r0 = r0 + -1
            if (r1 == r0) goto L_0x0086
            java.lang.String r0 = " AND "
        L_0x0062:
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.String r3 = r0.toString()     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0032
        L_0x006e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.String r3 = " = '"
            r0.<init>(r3)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            r3 = r11[r1]     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.String r3 = "'"
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.String r0 = r0.toString()     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            goto L_0x004a
        L_0x0086:
            java.lang.String r0 = ""
            goto L_0x0062
        L_0x0089:
            android.database.sqlite.SQLiteDatabase r0 = r9.a     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.String r1 = r9.b()     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            java.lang.String[] r2 = r9.c()     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ IllegalArgumentException -> 0x000d, all -> 0x00aa }
            if (r1 == 0) goto L_0x00ba
            r1.moveToFirst()     // Catch:{ IllegalArgumentException -> 0x00b4 }
            fy r0 = r9.a((android.database.Cursor) r1)     // Catch:{ IllegalArgumentException -> 0x00b4 }
        L_0x00a4:
            if (r1 == 0) goto L_0x002d
            r1.close()
            goto L_0x002d
        L_0x00aa:
            r0 = move-exception
        L_0x00ab:
            if (r8 == 0) goto L_0x00b0
            r8.close()
        L_0x00b0:
            throw r0
        L_0x00b1:
            r0 = move-exception
            r8 = r1
            goto L_0x00ab
        L_0x00b4:
            r0 = move-exception
            goto L_0x000f
        L_0x00b7:
            r0 = r8
            goto L_0x002d
        L_0x00ba:
            r0 = r8
            goto L_0x00a4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gc.a(java.lang.String[], java.lang.String[]):fy");
    }

    public abstract String a();

    public final boolean a(long j, ContentValues contentValues) {
        return contentValues != null && this.a.update(b(), contentValues, new StringBuilder("rowid = ").append(j).toString(), (String[]) null) == 1;
    }

    public abstract String b();

    public final boolean b(long j) {
        return this.a.delete(b(), new StringBuilder("rowid = ").append(j).toString(), (String[]) null) == 1;
    }

    public abstract String[] c();
}
