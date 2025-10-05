package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.List;

/* renamed from: aer  reason: default package */
/* compiled from: Downloads */
public final class aer {
    public SQLiteStatement a = null;
    public List<a> b;

    /* renamed from: aer$a */
    /* compiled from: Downloads */
    public final class a {
        public int a;
        public String b;
        public int c;
        public String d;
        public int e;
        public aet f;
        public String g;
        public int h = 0;

        public a() {
        }

        public final void a(boolean z) {
            this.f.a(1, z);
        }

        public final boolean a() {
            return this.f.c(1);
        }

        public final void b(boolean z) {
            this.f.a(8, z);
        }

        public final boolean b() {
            return this.f.c(2);
        }

        public final boolean c() {
            return this.f.c(8);
        }

        public final boolean d() {
            return this.f.c(NotificationCompat.FLAG_HIGH_PRIORITY);
        }
    }

    public static boolean a(a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("size", Integer.valueOf(aVar.e));
        contentValues.put("flags", Integer.valueOf(aVar.f.a));
        contentValues.put("comicid", Integer.valueOf(aVar.h));
        return aei.a().a.update("download", contentValues, new StringBuilder("downloadid=").append(aVar.a).toString(), (String[]) null) != -1;
    }

    public final a a(String str) {
        for (a next : this.b) {
            if (next.b.equals(str)) {
                return next;
            }
        }
        return null;
    }

    public final void a() {
        this.b = new ArrayList();
        Cursor b2 = aei.a().b("SELECT downloadid, downloadref, service, path, size, flags, hash, comicid FROM download");
        if (b2 != null && b2.getCount() > 0) {
            if (b2.moveToFirst()) {
                do {
                    a aVar = new a();
                    aVar.a = b2.getInt(0);
                    aVar.b = b2.getString(1);
                    aVar.c = b2.getInt(2);
                    aVar.d = b2.getString(3);
                    aVar.e = b2.getInt(4);
                    aVar.f = new aet(b2.getInt(5));
                    aVar.g = b2.getString(6);
                    aVar.h = b2.getInt(7);
                    this.b.add(aVar);
                } while (b2.moveToNext());
            }
            b2.close();
        }
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        if (this.a != null) {
            this.a.close();
        }
    }
}
