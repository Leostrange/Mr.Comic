package defpackage;

import defpackage.xa;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* renamed from: xf  reason: default package */
/* compiled from: FastTable */
public final class xf<E> extends xa<E> implements List<E>, RandomAccess, wv {
    private static final wp d = new wp() {
        public final Object a() {
            return new xf();
        }
    };
    private static final Object[] g = new Object[1024];
    public transient E[][] a = ((Object[][]) new Object[1][]);
    public transient int b;
    transient xb<? super E> c = xb.c;
    /* access modifiers changed from: private */
    public transient E[] e = ((Object[]) new Object[16]);
    /* access modifiers changed from: private */
    public transient int f = 16;

    /* renamed from: xf$a */
    /* compiled from: FastTable */
    static final class a implements ListIterator {
        private static final wp a = new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new a((byte) 0);
            }

            /* access modifiers changed from: protected */
            public final void b(Object obj) {
                a aVar = (a) obj;
                xf unused = aVar.b = null;
                Object[] unused2 = aVar.g = null;
                Object[][] unused3 = aVar.h = null;
            }
        };
        /* access modifiers changed from: private */
        public xf b;
        private int c;
        private int d;
        private int e;
        private int f;
        /* access modifiers changed from: private */
        public Object[] g;
        /* access modifiers changed from: private */
        public Object[][] h;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        public static a a(xf xfVar, int i, int i2, int i3) {
            a aVar = (a) a.b();
            aVar.b = xfVar;
            aVar.d = i2;
            aVar.e = i3;
            aVar.f = i;
            aVar.g = xfVar.e;
            aVar.h = xfVar.a;
            aVar.c = -1;
            return aVar;
        }

        public final void add(Object obj) {
            xf xfVar = this.b;
            int i = this.f;
            this.f = i + 1;
            xfVar.add(i, obj);
            this.e++;
            this.c = -1;
        }

        public final boolean hasNext() {
            return this.f != this.e;
        }

        public final boolean hasPrevious() {
            return this.f != this.d;
        }

        public final Object next() {
            if (this.f == this.e) {
                throw new NoSuchElementException();
            }
            int i = this.f;
            this.f = i + 1;
            this.c = i;
            return i < 1024 ? this.g[i] : this.h[i >> 10][i & 1023];
        }

        public final int nextIndex() {
            return this.f;
        }

        public final Object previous() {
            if (this.f == this.d) {
                throw new NoSuchElementException();
            }
            int i = this.f - 1;
            this.f = i;
            this.c = i;
            return i < 1024 ? this.g[i] : this.h[i >> 10][i & 1023];
        }

        public final int previousIndex() {
            return this.f - 1;
        }

        public final void remove() {
            if (this.c >= 0) {
                this.b.remove(this.c);
                this.e--;
                if (this.c < this.f) {
                    this.f--;
                }
                this.c = -1;
                return;
            }
            throw new IllegalStateException();
        }

        public final void set(Object obj) {
            if (this.c >= 0) {
                this.b.set(this.c, obj);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: xf$b */
    /* compiled from: FastTable */
    static final class b extends xa implements List, RandomAccess {
        private static final wp a = new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new b((byte) 0);
            }

            /* access modifiers changed from: protected */
            public final void b(Object obj) {
                xf unused = ((b) obj).b = null;
            }
        };
        /* access modifiers changed from: private */
        public xf b;
        private int c;
        private int d;

        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        public static b a(xf xfVar, int i, int i2) {
            b bVar = (b) a.b();
            bVar.b = xfVar;
            bVar.c = i;
            bVar.d = i2;
            return bVar;
        }

        public final Object a(xa.a aVar) {
            return this.b.get(((xg) aVar).intValue() + this.c);
        }

        public final void add(int i, Object obj) {
            throw new UnsupportedOperationException("Insertion not supported, thread-safe collections.");
        }

        public final boolean addAll(int i, Collection collection) {
            throw new UnsupportedOperationException("Insertion not supported, thread-safe collections.");
        }

        public final void b(xa.a aVar) {
            throw new UnsupportedOperationException("Deletion not supported, thread-safe collections.");
        }

        public final xa.a c() {
            return xg.a(-1);
        }

        public final xa.a d() {
            return xg.a(this.d);
        }

        public final Object get(int i) {
            if (i >= 0 && i < this.d) {
                return this.b.get(this.c + i);
            }
            throw new IndexOutOfBoundsException("index: " + i);
        }

        public final int indexOf(Object obj) {
            xb<? super E> xbVar = this.b.c;
            int i = -1;
            do {
                i++;
                if (i >= this.d) {
                    return -1;
                }
            } while (!xbVar.a(obj, this.b.get(this.c + i)));
            return i;
        }

        public final int lastIndexOf(Object obj) {
            xb<? super E> xbVar = this.b.c;
            int i = this.d;
            do {
                i--;
                if (i < 0) {
                    return -1;
                }
            } while (!xbVar.a(obj, this.b.get(this.c + i)));
            return i;
        }

        public final ListIterator listIterator() {
            return listIterator(0);
        }

        public final ListIterator listIterator(int i) {
            if (i >= 0 && i <= this.d) {
                return a.a(this.b, this.c + i, this.c, this.c + this.d);
            }
            throw new IndexOutOfBoundsException("index: " + i + " for table of size: " + this.d);
        }

        public final Object remove(int i) {
            throw new UnsupportedOperationException("Deletion not supported, thread-safe collections.");
        }

        public final Object set(int i, Object obj) {
            if (i >= 0 && i < this.d) {
                return this.b.set(this.c + i, obj);
            }
            throw new IndexOutOfBoundsException("index: " + i);
        }

        public final int size() {
            return this.d;
        }

        public final List subList(int i, int i2) {
            if (i >= 0 && i2 <= this.d && i <= i2) {
                return a(this.b, this.c + i, i2 - i);
            }
            throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + " for list of size: " + this.d);
        }
    }

    public xf() {
        this.a[0] = this.e;
    }

    private void a(int i, int i2) {
        while (this.b + i2 >= this.f) {
            g();
        }
        int i3 = this.b;
        while (true) {
            i3--;
            if (i3 >= i) {
                int i4 = i3 + i2;
                this.a[i4 >> 10][i4 & 1023] = this.a[i3 >> 10][i3 & 1023];
            } else {
                return;
            }
        }
    }

    private static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj == obj2 || obj.equals(obj2);
    }

    private void g() {
        wh.a();
        wh.a(new Runnable() {
            public final void run() {
                if (xf.this.f < 1024) {
                    int unused = xf.this.f = xf.this.f << 1;
                    Object[] objArr = new Object[xf.this.f];
                    System.arraycopy(xf.this.e, 0, objArr, 0, xf.this.b);
                    Object[] unused2 = xf.this.e = objArr;
                    xf.this.a[0] = objArr;
                    return;
                }
                int a2 = xf.this.f >> 10;
                if (a2 >= xf.this.a.length) {
                    Object[][] objArr2 = new Object[(xf.this.a.length * 2)][];
                    System.arraycopy(xf.this.a, 0, objArr2, 0, xf.this.a.length);
                    Object[][] unused3 = xf.this.a = objArr2;
                }
                xf.this.a[a2] = new Object[1024];
                int unused4 = xf.this.f = xf.this.f + 1024;
            }
        });
    }

    public final E a(xa.a aVar) {
        return get(((xg) aVar).intValue());
    }

    public final void a() {
        clear();
        this.c = xb.c;
    }

    public final void add(int i, E e2) {
        if (i < 0 || i > this.b) {
            throw new IndexOutOfBoundsException("index: " + i);
        }
        a(i, 1);
        this.a[i >> 10][i & 1023] = e2;
        this.b++;
    }

    public final boolean add(E e2) {
        if (this.b >= this.f) {
            g();
        }
        this.a[this.b >> 10][this.b & 1023] = e2;
        this.b++;
        return true;
    }

    public final boolean addAll(int i, Collection<? extends E> collection) {
        if (i < 0 || i > this.b) {
            throw new IndexOutOfBoundsException("index: " + i);
        }
        int size = collection.size();
        a(i, size);
        Iterator<? extends E> it = collection.iterator();
        int i2 = i + size;
        while (i < i2) {
            this.a[i >> 10][i & 1023] = it.next();
            i++;
        }
        this.b += size;
        return size != 0;
    }

    public final void b(xa.a aVar) {
        remove(((xg) aVar).intValue());
    }

    public final xa.a c() {
        return xg.a(-1);
    }

    public final void clear() {
        for (int i = 0; i < this.b; i += 1024) {
            System.arraycopy(g, 0, this.a[i >> 10], 0, ws.a(this.b - i, 1024));
        }
        this.b = 0;
    }

    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    public final xa.a d() {
        return xg.a(this.b);
    }

    public final xb<? super E> e() {
        return this.c;
    }

    public final E get(int i) {
        if (i < this.b) {
            return i < 1024 ? this.e[i] : this.a[i >> 10][i & 1023];
        }
        throw new IndexOutOfBoundsException();
    }

    public final int indexOf(Object obj) {
        xb<? super E> xbVar = this.c;
        int i = 0;
        while (i < this.b) {
            E[] eArr = this.a[i >> 10];
            int a2 = ws.a(eArr.length, this.b - i);
            int i2 = 0;
            while (i2 < a2) {
                if (xbVar == xb.c) {
                    if (!a(obj, (Object) eArr[i2])) {
                        i2++;
                    }
                } else if (!xbVar.a(obj, eArr[i2])) {
                    i2++;
                }
                return i + i2;
            }
            i += a2;
        }
        return -1;
    }

    public final Iterator<E> iterator() {
        return a.a(this, 0, 0, this.b);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0032, code lost:
        r2 = r2 - r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int lastIndexOf(java.lang.Object r7) {
        /*
            r6 = this;
            xb<? super E> r3 = r6.c
            int r0 = r6.b
            int r0 = r0 + -1
            r2 = r0
        L_0x0007:
            if (r2 < 0) goto L_0x0036
            E[][] r0 = r6.a
            int r1 = r2 >> 10
            r4 = r0[r1]
            r0 = r2 & 1023(0x3ff, float:1.434E-42)
            int r1 = r0 + 1
            r0 = r1
        L_0x0014:
            int r0 = r0 + -1
            if (r0 < 0) goto L_0x0032
            xb<java.lang.Object> r5 = defpackage.xb.c
            if (r3 != r5) goto L_0x0029
            r5 = r4[r0]
            boolean r5 = a((java.lang.Object) r7, (java.lang.Object) r5)
            if (r5 == 0) goto L_0x0014
        L_0x0024:
            int r0 = r0 + r2
            int r0 = r0 - r1
            int r0 = r0 + 1
        L_0x0028:
            return r0
        L_0x0029:
            r5 = r4[r0]
            boolean r5 = r3.a(r7, r5)
            if (r5 == 0) goto L_0x0014
            goto L_0x0024
        L_0x0032:
            int r0 = r2 - r1
            r2 = r0
            goto L_0x0007
        L_0x0036:
            r0 = -1
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xf.lastIndexOf(java.lang.Object):int");
    }

    public final ListIterator<E> listIterator() {
        return a.a(this, 0, 0, this.b);
    }

    public final ListIterator<E> listIterator(int i) {
        if (i >= 0 && i <= this.b) {
            return a.a(this, i, 0, this.b);
        }
        throw new IndexOutOfBoundsException();
    }

    public final E remove(int i) {
        E e2 = get(i);
        for (int i2 = i + 1; i2 < this.b; i2++) {
            int i3 = i2 - 1;
            this.a[i3 >> 10][i3 & 1023] = this.a[i2 >> 10][i2 & 1023];
        }
        this.b--;
        this.a[this.b >> 10][this.b & 1023] = null;
        return e2;
    }

    public final E set(int i, E e2) {
        if (i >= this.b) {
            throw new IndexOutOfBoundsException();
        }
        E[] eArr = this.a[i >> 10];
        E e3 = eArr[i & 1023];
        eArr[i & 1023] = e2;
        return e3;
    }

    public final int size() {
        return this.b;
    }

    public final List<E> subList(int i, int i2) {
        if (i >= 0 && i2 <= this.b && i <= i2) {
            return b.a(this, i, i2 - i);
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + " for list of size: " + this.b);
    }
}
