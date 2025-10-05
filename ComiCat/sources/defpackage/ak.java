package defpackage;

/* renamed from: ak  reason: default package */
/* compiled from: SparseArrayCompat */
public final class ak<E> implements Cloneable {
    public static final Object a = new Object();
    public boolean b;
    public int[] c;
    public Object[] d;
    public int e;

    public ak() {
        this((byte) 0);
    }

    private ak(byte b2) {
        this.b = false;
        int a2 = ac.a(10);
        this.c = new int[a2];
        this.d = new Object[a2];
        this.e = 0;
    }

    /* access modifiers changed from: private */
    /* renamed from: c */
    public ak<E> clone() {
        try {
            ak<E> akVar = (ak) super.clone();
            try {
                akVar.c = (int[]) this.c.clone();
                akVar.d = (Object[]) this.d.clone();
                return akVar;
            } catch (CloneNotSupportedException e2) {
                return akVar;
            }
        } catch (CloneNotSupportedException e3) {
            return null;
        }
    }

    private void d() {
        int i = this.e;
        int[] iArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public final int a() {
        if (this.b) {
            d();
        }
        return this.e;
    }

    public final E a(int i) {
        int a2 = ac.a(this.c, this.e, i);
        if (a2 < 0 || this.d[a2] == a) {
            return null;
        }
        return this.d[a2];
    }

    public final void a(int i, E e2) {
        int a2 = ac.a(this.c, this.e, i);
        if (a2 >= 0) {
            this.d[a2] = e2;
            return;
        }
        int i2 = a2 ^ -1;
        if (i2 >= this.e || this.d[i2] != a) {
            if (this.b && this.e >= this.c.length) {
                d();
                i2 = ac.a(this.c, this.e, i) ^ -1;
            }
            if (this.e >= this.c.length) {
                int a3 = ac.a(this.e + 1);
                int[] iArr = new int[a3];
                Object[] objArr = new Object[a3];
                System.arraycopy(this.c, 0, iArr, 0, this.c.length);
                System.arraycopy(this.d, 0, objArr, 0, this.d.length);
                this.c = iArr;
                this.d = objArr;
            }
            if (this.e - i2 != 0) {
                System.arraycopy(this.c, i2, this.c, i2 + 1, this.e - i2);
                System.arraycopy(this.d, i2, this.d, i2 + 1, this.e - i2);
            }
            this.c[i2] = i;
            this.d[i2] = e2;
            this.e++;
            return;
        }
        this.c[i2] = i;
        this.d[i2] = e2;
    }

    public final void b() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.b = false;
    }

    public final void b(int i) {
        if (this.d[i] != a) {
            this.d[i] = a;
            this.b = true;
        }
    }

    public final int c(int i) {
        if (this.b) {
            d();
        }
        return this.c[i];
    }

    public final E d(int i) {
        if (this.b) {
            d();
        }
        return this.d[i];
    }

    public final int e(int i) {
        if (this.b) {
            d();
        }
        return ac.a(this.c, this.e, i);
    }

    public final String toString() {
        if (a() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(c(i));
            sb.append('=');
            Object d2 = d(i);
            if (d2 != this) {
                sb.append(d2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
