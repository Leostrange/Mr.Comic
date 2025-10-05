package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: nf  reason: default package */
/* compiled from: AbstractIterator */
abstract class nf<T> implements Iterator<T> {
    int a = a.b;
    private T b;

    /* renamed from: nf$1  reason: invalid class name */
    /* compiled from: AbstractIterator */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[a.a().length];

        static {
            try {
                a[a.c - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[a.a - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: nf$a */
    /* compiled from: AbstractIterator */
    enum a {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = new int[]{a, b, c, d};
        }

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    protected nf() {
    }

    /* access modifiers changed from: protected */
    public abstract T a();

    public final boolean hasNext() {
        ni.b(this.a != a.d);
        switch (AnonymousClass1.a[this.a - 1]) {
            case 1:
                return false;
            case 2:
                return true;
            default:
                this.a = a.d;
                this.b = a();
                if (this.a == a.c) {
                    return false;
                }
                this.a = a.a;
                return true;
        }
    }

    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.a = a.b;
        T t = this.b;
        this.b = null;
        return t;
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
