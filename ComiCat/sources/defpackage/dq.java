package defpackage;

/* renamed from: dq  reason: default package */
/* compiled from: BaseWrapper */
public class dq<T> {
    public final T d;

    dq(T t) {
        if (t == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.d = t;
    }
}
