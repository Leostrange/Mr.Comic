package defpackage;

import android.database.sqlite.SQLiteStatement;

/* renamed from: aej  reason: default package */
/* compiled from: Bookmarks */
public final class aej {
    SQLiteStatement a = null;

    /* access modifiers changed from: protected */
    public final void finalize() {
        if (this.a != null) {
            this.a.close();
        }
    }
}
