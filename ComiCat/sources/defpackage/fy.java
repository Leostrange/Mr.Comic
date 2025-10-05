package defpackage;

import android.content.ContentValues;
import android.content.Context;

/* renamed from: fy  reason: default package */
/* compiled from: AbstractDataObject */
public abstract class fy {
    public long a = -1;

    protected static boolean a(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public final long a(Context context) {
        return c(context).a(this);
    }

    public abstract ContentValues a();

    public final boolean b(Context context) {
        boolean b = c(context).b(this.a);
        if (b) {
            this.a = -1;
        }
        return b;
    }

    public abstract <K extends fy> gc<K> c(Context context);

    public String toString() {
        return "rowid = " + this.a + "|" + a().toString();
    }
}
