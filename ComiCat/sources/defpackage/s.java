package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: s  reason: default package */
/* compiled from: ParcelableCompat */
public final class s {

    /* renamed from: s$a */
    /* compiled from: ParcelableCompat */
    public static class a<T> implements Parcelable.Creator<T> {
        final t<T> a;

        public a(t<T> tVar) {
            this.a = tVar;
        }

        public final T createFromParcel(Parcel parcel) {
            return this.a.a(parcel, (ClassLoader) null);
        }

        public final T[] newArray(int i) {
            return this.a.a(i);
        }
    }
}
