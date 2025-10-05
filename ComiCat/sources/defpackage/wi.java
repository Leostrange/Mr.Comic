package defpackage;

/* renamed from: wi  reason: default package */
/* compiled from: Allocator */
public abstract class wi<T> {
    protected Thread a;
    protected T[] b = ((Object[]) new Object[16]);
    protected int c;

    protected wi() {
    }

    public final T a() {
        if (this.c <= 0) {
            return b();
        }
        T[] tArr = this.b;
        int i = this.c - 1;
        this.c = i;
        return tArr[i];
    }

    /* access modifiers changed from: protected */
    public abstract void a(T t);

    /* access modifiers changed from: protected */
    public abstract T b();
}
