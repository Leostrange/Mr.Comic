package defpackage;

import java.util.NoSuchElementException;

/* renamed from: wm  reason: default package */
/* compiled from: HeapContext */
public class wm extends wj {
    private static final ThreadLocal e = new ThreadLocal() {
        /* access modifiers changed from: protected */
        public final Object initialValue() {
            return new xd();
        }
    };
    private static final ThreadLocal f = new ThreadLocal() {
        /* access modifiers changed from: protected */
        public final Object initialValue() {
            return new xf();
        }
    };

    /* renamed from: wm$a */
    /* compiled from: HeapContext */
    static final class a extends wi {
        private final wp d;
        private final xf e = new xf();

        public a(wp wpVar) {
            this.d = wpVar;
        }

        /* access modifiers changed from: protected */
        public final void a(Object obj) {
            if (this.d.b) {
                this.d.b(obj);
            }
            this.e.add(obj);
        }

        /* access modifiers changed from: protected */
        public final Object b() {
            if (this.e.isEmpty()) {
                return this.d.a();
            }
            xf xfVar = this.e;
            if (xfVar.b == 0) {
                throw new NoSuchElementException();
            }
            xfVar.b--;
            E[] eArr = xfVar.a[xfVar.b >> 10];
            E e2 = eArr[xfVar.b & 1023];
            eArr[xfVar.b & 1023] = null;
            return e2;
        }

        public final String toString() {
            return "Heap allocator for " + this.d.getClass();
        }
    }

    /* access modifiers changed from: protected */
    public final wi a(wp wpVar) {
        xd xdVar = (xd) e.get();
        a aVar = (a) xdVar.get(wpVar);
        if (aVar == null) {
            aVar = new a(wpVar);
            xdVar.put(wpVar, aVar);
        }
        if (aVar.a == null) {
            aVar.a = Thread.currentThread();
            ((xf) f.get()).add(aVar);
        }
        return aVar;
    }
}
