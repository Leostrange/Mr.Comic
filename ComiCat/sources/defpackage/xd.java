package defpackage;

import defpackage.xa;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* renamed from: xd  reason: default package */
/* compiled from: FastMap */
public final class xd<K, V> implements Map<K, V>, wt, wv, xi {
    static volatile int e = 1;
    private static final wp q = new wp() {
        public final Object a() {
            return new xd();
        }
    };
    private static final a[] r = new a[1024];
    /* access modifiers changed from: package-private */
    public transient a<K, V> a;
    /* access modifiers changed from: package-private */
    public transient a<K, V> b;
    /* access modifiers changed from: package-private */
    public transient xb c;
    public transient boolean d;
    /* access modifiers changed from: private */
    public transient a<K, V>[] f;
    /* access modifiers changed from: private */
    public transient int g;
    /* access modifiers changed from: private */
    public transient int h;
    /* access modifiers changed from: private */
    public transient xd[] i;
    /* access modifiers changed from: private */
    public transient boolean j;
    /* access modifiers changed from: private */
    public transient int k;
    /* access modifiers changed from: private */
    public transient xd<K, V>.g l;
    /* access modifiers changed from: private */
    public transient xd<K, V>.e m;
    /* access modifiers changed from: private */
    public transient xd<K, V>.c n;
    private transient boolean o;
    /* access modifiers changed from: private */
    public transient xb p;

    /* renamed from: xd$a */
    /* compiled from: FastMap */
    public static class a<K, V> implements Map.Entry<K, V>, wt, xa.a {
        public static final a a = new a();
        /* access modifiers changed from: private */
        public a<K, V> b;
        /* access modifiers changed from: private */
        public a<K, V> c;
        /* access modifiers changed from: private */
        public K d;
        /* access modifiers changed from: private */
        public V e;
        /* access modifiers changed from: private */
        public int f;

        protected a() {
        }

        public final /* bridge */ /* synthetic */ xa.a a() {
            return this.c;
        }

        public final ww b() {
            return ww.a((Object) this.d).a("=").b((Object) this.e);
        }

        public final /* bridge */ /* synthetic */ xa.a c() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return xb.c.a(this.d, entry.getKey()) && xb.c.a(this.e, entry.getValue());
        }

        public final K getKey() {
            return this.d;
        }

        public final V getValue() {
            return this.e;
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = this.d != null ? this.d.hashCode() : 0;
            if (this.e != null) {
                i = this.e.hashCode();
            }
            return hashCode ^ i;
        }

        public final V setValue(V v) {
            V v2 = this.e;
            this.e = v;
            return v2;
        }
    }

    /* renamed from: xd$b */
    /* compiled from: FastMap */
    static final class b implements Iterator {
        private static final wp a = new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new b((byte) 0);
            }

            /* access modifiers changed from: protected */
            public final void b(Object obj) {
                b bVar = (b) obj;
                xd unused = bVar.b = null;
                a unused2 = bVar.c = null;
                a unused3 = bVar.d = null;
                a unused4 = bVar.e = null;
            }
        };
        /* access modifiers changed from: private */
        public xd b;
        /* access modifiers changed from: private */
        public a c;
        /* access modifiers changed from: private */
        public a d;
        /* access modifiers changed from: private */
        public a e;

        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        public static b a(xd xdVar) {
            b bVar = (b) a.b();
            bVar.b = xdVar;
            bVar.d = xdVar.a.b;
            bVar.e = xdVar.b;
            return bVar;
        }

        public final boolean hasNext() {
            return this.d != this.e;
        }

        public final Object next() {
            if (this.d == this.e) {
                throw new NoSuchElementException();
            }
            this.c = this.d;
            this.d = this.d.b;
            return this.c;
        }

        public final void remove() {
            if (this.c != null) {
                this.d = this.c.b;
                this.b.remove(this.c.d);
                this.c = null;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: xd$c */
    /* compiled from: FastMap */
    final class c extends xa implements Set {
        private final xb b;

        private c() {
            this.b = new xb() {
                public final int a(Object obj) {
                    Map.Entry entry = (Map.Entry) obj;
                    return xd.this.c.a(entry.getKey()) + xd.this.p.a(entry.getValue());
                }

                public final boolean a(Object obj, Object obj2) {
                    if (!(obj instanceof Map.Entry) || !(obj2 instanceof Map.Entry)) {
                        return obj == null && obj2 == null;
                    }
                    Map.Entry entry = (Map.Entry) obj;
                    Map.Entry entry2 = (Map.Entry) obj2;
                    return xd.this.c.a(entry.getKey(), entry2.getKey()) && xd.this.p.a(entry.getValue(), entry2.getValue());
                }

                public final int compare(Object obj, Object obj2) {
                    return xd.this.c.compare(obj, obj2);
                }
            };
        }

        /* synthetic */ c(xd xdVar, byte b2) {
            this();
        }

        public final Object a(xa.a aVar) {
            return (Map.Entry) aVar;
        }

        public final void b(xa.a aVar) {
            xd.this.remove(((a) aVar).getKey());
        }

        public final xa.a c() {
            return xd.this.a;
        }

        public final void clear() {
            xd.this.clear();
        }

        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            a a2 = xd.this.a(entry.getKey());
            if (a2 == null) {
                return false;
            }
            return xd.this.p.a(a2.getValue(), entry.getValue());
        }

        public final xa.a d() {
            return xd.this.b;
        }

        public final xb e() {
            return this.b;
        }

        public final Iterator iterator() {
            return b.a(xd.this);
        }

        public final int size() {
            return xd.this.size();
        }
    }

    /* renamed from: xd$d */
    /* compiled from: FastMap */
    static final class d implements Iterator {
        private static final wp a = new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new d((byte) 0);
            }

            /* access modifiers changed from: protected */
            public final void b(Object obj) {
                d dVar = (d) obj;
                xd unused = dVar.b = null;
                a unused2 = dVar.c = null;
                a unused3 = dVar.d = null;
                a unused4 = dVar.e = null;
            }
        };
        /* access modifiers changed from: private */
        public xd b;
        /* access modifiers changed from: private */
        public a c;
        /* access modifiers changed from: private */
        public a d;
        /* access modifiers changed from: private */
        public a e;

        private d() {
        }

        /* synthetic */ d(byte b2) {
            this();
        }

        public static d a(xd xdVar) {
            d dVar = (d) a.b();
            dVar.b = xdVar;
            dVar.d = xdVar.a.b;
            dVar.e = xdVar.b;
            return dVar;
        }

        public final boolean hasNext() {
            return this.d != this.e;
        }

        public final Object next() {
            if (this.d == this.e) {
                throw new NoSuchElementException();
            }
            this.c = this.d;
            this.d = this.d.b;
            return this.c.d;
        }

        public final void remove() {
            if (this.c != null) {
                this.d = this.c.b;
                this.b.remove(this.c.d);
                this.c = null;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: xd$e */
    /* compiled from: FastMap */
    final class e extends xa implements Set {
        private e() {
        }

        /* synthetic */ e(xd xdVar, byte b) {
            this();
        }

        public final Object a(xa.a aVar) {
            return ((a) aVar).d;
        }

        public final void b(xa.a aVar) {
            xd.this.remove(((a) aVar).getKey());
        }

        public final xa.a c() {
            return xd.this.a;
        }

        public final void clear() {
            xd.this.clear();
        }

        public final boolean contains(Object obj) {
            return xd.this.containsKey(obj);
        }

        public final xa.a d() {
            return xd.this.b;
        }

        public final xb e() {
            return xd.this.c;
        }

        public final Iterator iterator() {
            return d.a(xd.this);
        }

        public final boolean remove(Object obj) {
            return xd.this.remove(obj) != null;
        }

        public final int size() {
            return xd.this.size();
        }
    }

    /* renamed from: xd$f */
    /* compiled from: FastMap */
    static final class f implements Iterator {
        private static final wp a = new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new f((byte) 0);
            }

            /* access modifiers changed from: protected */
            public final void b(Object obj) {
                f fVar = (f) obj;
                xd unused = fVar.b = null;
                a unused2 = fVar.c = null;
                a unused3 = fVar.d = null;
                a unused4 = fVar.e = null;
            }
        };
        /* access modifiers changed from: private */
        public xd b;
        /* access modifiers changed from: private */
        public a c;
        /* access modifiers changed from: private */
        public a d;
        /* access modifiers changed from: private */
        public a e;

        private f() {
        }

        /* synthetic */ f(byte b2) {
            this();
        }

        public static f a(xd xdVar) {
            f fVar = (f) a.b();
            fVar.b = xdVar;
            fVar.d = xdVar.a.b;
            fVar.e = xdVar.b;
            return fVar;
        }

        public final boolean hasNext() {
            return this.d != this.e;
        }

        public final Object next() {
            if (this.d == this.e) {
                throw new NoSuchElementException();
            }
            this.c = this.d;
            this.d = this.d.b;
            return this.c.e;
        }

        public final void remove() {
            if (this.c != null) {
                this.d = this.c.b;
                this.b.remove(this.c.d);
                this.c = null;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: xd$g */
    /* compiled from: FastMap */
    final class g extends xa {
        private g() {
        }

        /* synthetic */ g(xd xdVar, byte b) {
            this();
        }

        public final Object a(xa.a aVar) {
            return ((a) aVar).e;
        }

        public final void b(xa.a aVar) {
            xd.this.remove(((a) aVar).getKey());
        }

        public final xa.a c() {
            return xd.this.a;
        }

        public final void clear() {
            xd.this.clear();
        }

        public final xa.a d() {
            return xd.this.b;
        }

        public final xb e() {
            return xd.this.p;
        }

        public final Iterator iterator() {
            return f.a(xd.this);
        }

        public final int size() {
            return xd.this.size();
        }
    }

    public xd() {
        this((byte) 0);
    }

    private xd(byte b2) {
        a(xb.c);
        this.p = xb.c;
        d();
    }

    private xd(a[] aVarArr) {
        this.f = aVarArr;
    }

    private final Object a(Object obj, int i2, boolean z) {
        a<K, V> aVar;
        Object a2;
        xd a3 = a(i2);
        a<K, V>[] aVarArr = a3.f;
        int length = aVarArr.length - 1;
        int i3 = i2 >> a3.k;
        while (true) {
            aVar = aVarArr[i3 & length];
            if (aVar == null) {
                return null;
            }
            if (obj == aVar.d) {
                break;
            }
            if (i2 == aVar.f) {
                if (!this.o) {
                    if (this.c.a(obj, aVar.d)) {
                        break;
                    }
                } else if (obj.equals(aVar.d)) {
                    break;
                }
            }
            i3++;
        }
        if (z) {
            synchronized (this) {
                a2 = a(obj, i2, false);
            }
            return a2;
        }
        a unused = aVar.c.b = aVar.b;
        a unused2 = aVar.b.c = aVar.c;
        aVarArr[i3 & length] = a.a;
        a3.h++;
        a3.g--;
        Object b2 = aVar.e;
        if (this.d) {
            return b2;
        }
        Object unused3 = aVar.d = null;
        Object unused4 = aVar.e = null;
        a a4 = this.b.b;
        a unused5 = aVar.c = this.b;
        a unused6 = aVar.b = a4;
        a unused7 = this.b.b = aVar;
        if (a4 == null) {
            return b2;
        }
        a unused8 = a4.c = aVar;
        return b2;
    }

    private final Object a(Object obj, Object obj2, int i2, boolean z, boolean z2, boolean z3) {
        a<K, V> aVar;
        a<K, V> a2;
        Object a3;
        xd a4 = a(i2);
        a<K, V>[] aVarArr = a4.f;
        int length = aVarArr.length - 1;
        int i3 = -1;
        int i4 = i2 >> a4.k;
        while (true) {
            aVar = aVarArr[i4 & length];
            if (aVar == null) {
                if (i3 < 0) {
                    i3 = i4 & length;
                }
                if (z) {
                    synchronized (this) {
                        a3 = a(obj, obj2, i2, false, z2, z3);
                    }
                    return a3;
                }
                if (!this.d) {
                    a2 = this.b;
                    Object unused = a2.d = obj;
                    Object unused2 = a2.e = obj2;
                    int unused3 = a2.f = i2;
                    if (a2.b == null) {
                        e();
                    }
                    aVarArr[i3] = a2;
                    a4.g += e;
                    this.b = this.b.b;
                } else {
                    if (this.b.b == null) {
                        e();
                    }
                    a2 = this.b.b;
                    a unused4 = this.b.b = a2.b;
                    Object unused5 = a2.d = obj;
                    Object unused6 = a2.e = obj2;
                    int unused7 = a2.f = i2;
                    a unused8 = a2.b = this.b;
                    a unused9 = a2.c = this.b.c;
                    aVarArr[i3] = a2;
                    a4.g += e;
                    a unused10 = a2.b.c = a2;
                    a unused11 = a2.c.b = a2;
                }
                if (a4.g + a4.h > (aVarArr.length >> 1)) {
                    final boolean z4 = this.d;
                    wh.a();
                    wh.a(new Runnable() {
                        public final void run() {
                            boolean z = false;
                            int b2 = xd.this.h;
                            int unused = xd.this.h = 0;
                            if (b2 <= xd.this.g) {
                                int length = xd.this.f.length << 1;
                                if (length <= 1024) {
                                    a[] aVarArr = new a[length];
                                    xd.a(xd.this, xd.this.f, aVarArr, xd.this.f.length);
                                    a[] unused2 = xd.this.f = aVarArr;
                                    return;
                                }
                                if (xd.this.i == null) {
                                    xd[] unused3 = xd.this.i = xd.a(xd.this, length >> 5);
                                }
                                int i = 0;
                                while (i < xd.this.f.length) {
                                    int i2 = i + 1;
                                    a aVar = xd.this.f[i];
                                    if (aVar == null || aVar == a.a) {
                                        i = i2;
                                    } else {
                                        xd xdVar = xd.this.i[(aVar.f >> xd.this.k) & 63];
                                        xd.a(xdVar, aVar);
                                        if (((xdVar.g + xdVar.h) << 1) >= xdVar.f.length) {
                                            wo.a((CharSequence) "Unevenly distributed hash code - Degraded Performance");
                                            a[] aVarArr2 = new a[length];
                                            xd.a(xd.this, xd.this.f, aVarArr2, xd.this.f.length);
                                            a[] unused4 = xd.this.f = aVarArr2;
                                            xd[] unused5 = xd.this.i = null;
                                            return;
                                        }
                                        i = i2;
                                    }
                                }
                                if (z4) {
                                    xd.b((Object[]) xd.this.f);
                                    int unused6 = xd.this.h = 0;
                                    int unused7 = xd.this.g = 0;
                                }
                                xd xdVar2 = xd.this;
                                if (xd.e == 1) {
                                    z = true;
                                }
                                boolean unused8 = xdVar2.j = z;
                            } else if (z4) {
                                a[] aVarArr3 = new a[xd.this.f.length];
                                xd.a(xd.this, xd.this.f, aVarArr3, xd.this.f.length);
                                a[] unused9 = xd.this.f = aVarArr3;
                            } else {
                                Object[] a2 = wk.i.a(xd.this.f.length);
                                System.arraycopy(xd.this.f, 0, a2, 0, xd.this.f.length);
                                xd.b((Object[]) xd.this.f);
                                xd.a(xd.this, a2, xd.this.f, xd.this.f.length);
                                xd.b(a2);
                                wk.i.a(a2);
                            }
                        }
                    });
                }
                if (!z3) {
                    return null;
                }
                return a2;
            }
            if (aVar == a.a) {
                if (i3 < 0) {
                    i3 = i4 & length;
                }
            } else if (obj == aVar.d) {
                break;
            } else if (i2 != aVar.f) {
                continue;
            } else if (this.o) {
                if (obj.equals(aVar.d)) {
                    break;
                }
            } else if (this.c.a(obj, aVar.d)) {
                break;
            }
            i4++;
        }
        if (z2) {
            return z3 ? aVar : aVar.e;
        }
        Object b2 = aVar.e;
        Object unused12 = aVar.e = obj2;
        return z3 ? aVar : b2;
    }

    private final xd a(int i2) {
        while (this.j) {
            this = this.i[i2 & 63];
            i2 >>= 6;
        }
        return this;
    }

    static /* synthetic */ void a(xd xdVar, a aVar) {
        int length = xdVar.f.length - 1;
        int d2 = aVar.f >> xdVar.k;
        while (xdVar.f[d2 & length] != null) {
            d2++;
        }
        xdVar.f[d2 & length] = aVar;
        xdVar.g++;
    }

    static /* synthetic */ void a(xd xdVar, Object[] objArr, a[] aVarArr, int i2) {
        int length = aVarArr.length - 1;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i3 + 1;
            a aVar = objArr[i3];
            if (aVar == null || aVar == a.a) {
                i3 = i4;
            } else {
                int d2 = aVar.f >> xdVar.k;
                while (aVarArr[d2 & length] != null) {
                    d2++;
                }
                aVarArr[d2 & length] = aVar;
                i3 = i4;
            }
        }
    }

    static /* synthetic */ xd[] a(xd xdVar, int i2) {
        xd[] xdVarArr = new xd[64];
        for (int i3 = 0; i3 < 64; i3++) {
            xd xdVar2 = new xd(new a[i2]);
            xdVar2.k = xdVar.k + 6;
            xdVarArr[i3] = xdVar2;
        }
        return xdVarArr;
    }

    /* access modifiers changed from: private */
    public static void b(Object[] objArr) {
        int i2 = 0;
        while (i2 < objArr.length) {
            int a2 = ws.a(objArr.length - i2, 1024);
            System.arraycopy(r, 0, objArr, i2, a2);
            i2 += a2;
        }
    }

    protected static a<K, V> c() {
        return new a<>();
    }

    private void d() {
        this.f = (a[]) new a[32];
        this.a = new a<>();
        this.b = new a<>();
        a unused = this.a.b = this.b;
        a unused2 = this.b.c = this.a;
        int i2 = 0;
        a<K, V> aVar = this.b;
        while (true) {
            int i3 = i2 + 1;
            if (i2 < 4) {
                a<K, V> aVar2 = new a<>();
                a unused3 = aVar2.c = aVar;
                a unused4 = aVar.b = aVar2;
                aVar = aVar2;
                i2 = i3;
            } else {
                return;
            }
        }
    }

    private void e() {
        wh.a();
        wh.a(new Runnable() {
            public final void run() {
                a a2 = xd.this.b;
                int i = 0;
                while (i < 8) {
                    a c = xd.c();
                    a unused = c.c = a2;
                    a unused2 = a2.b = c;
                    i++;
                    a2 = c;
                }
            }
        });
    }

    private void f() {
        if (this.j) {
            for (int i2 = 0; i2 < 64; i2++) {
                this.i[i2].f();
            }
            this.j = false;
        }
        b((Object[]) this.f);
        this.h = 0;
        this.g = 0;
    }

    private synchronized void g() {
        a unused = this.a.b = this.b;
        a unused2 = this.b.c = this.a;
        wh.a();
        wh.a(new Runnable() {
            public final void run() {
                a[] unused = xd.this.f = new a[16];
                if (xd.this.j) {
                    boolean unused2 = xd.this.j = false;
                    xd[] unused3 = xd.this.i = xd.a(xd.this, 16);
                }
                int unused4 = xd.this.g = 0;
                int unused5 = xd.this.h = 0;
            }
        });
    }

    public final a<K, V> a(Object obj) {
        a<K, V> aVar;
        int hashCode = this.o ? obj.hashCode() : this.c.a(obj);
        xd a2 = a(hashCode);
        a<K, V>[] aVarArr = a2.f;
        int length = aVarArr.length - 1;
        int i2 = hashCode >> a2.k;
        while (true) {
            aVar = aVarArr[i2 & length];
            if (aVar == null) {
                return null;
            }
            if (obj == aVar.d) {
                break;
            }
            if (hashCode == aVar.f) {
                if (!this.o) {
                    if (this.c.a(obj, aVar.d)) {
                        break;
                    }
                } else if (obj.equals(aVar.d)) {
                    break;
                }
            }
            i2++;
        }
        return aVar;
    }

    public final xd<K, V> a(xb<? super K> xbVar) {
        this.c = xbVar;
        this.o = xbVar == xb.d || (this.c == xb.c && !((Boolean) xb.a.a).booleanValue());
        return this;
    }

    public final void a() {
        this.d = false;
        clear();
        a(xb.c);
        this.p = xb.c;
    }

    public final ww b() {
        return ww.a((Object) entrySet());
    }

    public final void clear() {
        if (this.d) {
            g();
            return;
        }
        a<K, V> aVar = this.a;
        a<K, V> aVar2 = this.b;
        while (true) {
            aVar = aVar.b;
            if (aVar != aVar2) {
                Object unused = aVar.d = null;
                Object unused2 = aVar.e = null;
            } else {
                this.b = this.a.b;
                f();
                return;
            }
        }
    }

    public final boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.n == null) {
            wh.a();
            wh.a(new Runnable() {
                public final void run() {
                    c unused = xd.this.n = new c(xd.this, (byte) 0);
                }
            });
        }
        return this.n;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public final V get(Object obj) {
        a a2 = a(obj);
        if (a2 != null) {
            return a2.e;
        }
        return null;
    }

    public final int hashCode() {
        int i2 = 0;
        a<K, V> aVar = this.a;
        a<K, V> aVar2 = this.b;
        while (true) {
            aVar = aVar.b;
            if (aVar == aVar2) {
                return i2;
            }
            i2 += aVar.hashCode();
        }
    }

    public final boolean isEmpty() {
        return this.a.b == this.b;
    }

    public final Set<K> keySet() {
        if (this.m == null) {
            wh.a();
            wh.a(new Runnable() {
                public final void run() {
                    e unused = xd.this.m = new e(xd.this, (byte) 0);
                }
            });
        }
        return this.m;
    }

    public final V put(K k2, V v) {
        return a(k2, v, this.o ? k2.hashCode() : this.c.a(k2), this.d, false, false);
    }

    public final void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry next : map.entrySet()) {
            put(next.getKey(), next.getValue());
        }
    }

    public final V remove(Object obj) {
        return a(obj, this.o ? obj.hashCode() : this.c.a(obj), this.d);
    }

    public final int size() {
        if (!this.j) {
            return this.g;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.i.length; i3++) {
            i2 = this.i[i3].size() + i2;
        }
        return i2;
    }

    public final String toString() {
        return ww.a((Object) entrySet()).toString();
    }

    public final Collection<V> values() {
        if (this.l == null) {
            wh.a();
            wh.a(new Runnable() {
                public final void run() {
                    g unused = xd.this.l = new g(xd.this, (byte) 0);
                }
            });
        }
        return this.l;
    }
}
