package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: u  reason: default package */
/* compiled from: ParcelableCompatHoneycombMR2 */
public final class u<T> implements Parcelable.ClassLoaderCreator<T> {
    private final t<T> a;

    public u(t<T> tVar) {
        this.a = tVar;
    }

    public final T createFromParcel(Parcel parcel) {
        return this.a.a(parcel, (ClassLoader) null);
    }

    public final T createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.a.a(parcel, classLoader);
    }

    public final T[] newArray(int i) {
        return this.a.a(i);
    }
}
