package defpackage;

import defpackage.xa;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: xc  reason: default package */
/* compiled from: FastIterator */
final class xc implements Iterator {
    private static final wp a = new wp() {
        /* access modifiers changed from: protected */
        public final Object a() {
            return new xc((byte) 0);
        }

        /* access modifiers changed from: protected */
        public final void b(Object obj) {
            xc xcVar = (xc) obj;
            xa unused = xcVar.b = null;
            xa.a unused2 = xcVar.c = null;
            xa.a unused3 = xcVar.d = null;
            xa.a unused4 = xcVar.e = null;
        }
    };
    /* access modifiers changed from: private */
    public xa b;
    /* access modifiers changed from: private */
    public xa.a c;
    /* access modifiers changed from: private */
    public xa.a d;
    /* access modifiers changed from: private */
    public xa.a e;

    private xc() {
    }

    /* synthetic */ xc(byte b2) {
        this();
    }

    public static xc a(xa xaVar) {
        xc xcVar = (xc) a.b();
        xcVar.b = xaVar;
        xcVar.d = xaVar.c().c();
        xcVar.e = xaVar.d();
        return xcVar;
    }

    public final boolean hasNext() {
        return this.d != this.e;
    }

    public final Object next() {
        if (this.d == this.e) {
            throw new NoSuchElementException();
        }
        this.c = this.d;
        this.d = this.d.c();
        return this.b.a(this.c);
    }

    public final void remove() {
        if (this.c != null) {
            xa.a a2 = this.c.a();
            this.b.b(this.c);
            this.c = null;
            this.d = a2.c();
            return;
        }
        throw new IllegalStateException();
    }
}
