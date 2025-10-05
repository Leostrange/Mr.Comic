package defpackage;

import java.util.Map;

/* renamed from: aj  reason: default package */
/* compiled from: SimpleArrayMap */
public class aj<K, V> {
    static Object[] b;
    static int c;
    static Object[] d;
    static int e;
    int[] f = ac.a;
    Object[] g = ac.c;
    int h = 0;

    private int a() {
        int i = this.h;
        if (i == 0) {
            return -1;
        }
        int a = ac.a(this.f, i, 0);
        if (a < 0 || this.g[a << 1] == null) {
            return a;
        }
        int i2 = a + 1;
        while (i2 < i && this.f[i2] == 0) {
            if (this.g[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        int i3 = a - 1;
        while (i3 >= 0 && this.f[i3] == 0) {
            if (this.g[i3 << 1] == null) {
                return i3;
            }
            i3--;
        }
        return i2 ^ -1;
    }

    private int a(Object obj, int i) {
        int i2 = this.h;
        if (i2 == 0) {
            return -1;
        }
        int a = ac.a(this.f, i2, i);
        if (a < 0 || obj.equals(this.g[a << 1])) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.f[i3] == i) {
            if (obj.equals(this.g[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        int i4 = a - 1;
        while (i4 >= 0 && this.f[i4] == i) {
            if (obj.equals(this.g[i4 << 1])) {
                return i4;
            }
            i4--;
        }
        return i3 ^ -1;
    }

    static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (ab.class) {
                if (e < 10) {
                    objArr[0] = d;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    d = objArr;
                    e++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ab.class) {
                if (c < 10) {
                    objArr[0] = b;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    b = objArr;
                    c++;
                }
            }
        }
    }

    public final int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public final V a(int i, V v) {
        int i2 = (i << 1) + 1;
        V v2 = this.g[i2];
        this.g[i2] = v;
        return v2;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        if (i == 8) {
            synchronized (ab.class) {
                if (d != null) {
                    Object[] objArr = d;
                    this.g = objArr;
                    d = (Object[]) objArr[0];
                    this.f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    e--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (ab.class) {
                if (b != null) {
                    Object[] objArr2 = b;
                    this.g = objArr2;
                    b = (Object[]) objArr2[0];
                    this.f = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    c--;
                    return;
                }
            }
        }
        this.f = new int[i];
        this.g = new Object[(i << 1)];
    }

    /* access modifiers changed from: package-private */
    public final int b(Object obj) {
        int i = 1;
        int i2 = this.h * 2;
        Object[] objArr = this.g;
        if (obj == null) {
            while (i < i2) {
                if (objArr[i] == null) {
                    return i >> 1;
                }
                i += 2;
            }
        } else {
            while (i < i2) {
                if (obj.equals(objArr[i])) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        return -1;
    }

    public final K b(int i) {
        return this.g[i << 1];
    }

    public final V c(int i) {
        return this.g[(i << 1) + 1];
    }

    public void clear() {
        if (this.h != 0) {
            a(this.f, this.g, this.h);
            this.f = ac.a;
            this.g = ac.c;
            this.h = 0;
        }
    }

    public boolean containsKey(Object obj) {
        return a(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return b(obj) >= 0;
    }

    public final V d(int i) {
        int i2 = 8;
        V v = this.g[(i << 1) + 1];
        if (this.h <= 1) {
            a(this.f, this.g, this.h);
            this.f = ac.a;
            this.g = ac.c;
            this.h = 0;
        } else if (this.f.length <= 8 || this.h >= this.f.length / 3) {
            this.h--;
            if (i < this.h) {
                System.arraycopy(this.f, i + 1, this.f, i, this.h - i);
                System.arraycopy(this.g, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
            this.g[this.h << 1] = null;
            this.g[(this.h << 1) + 1] = null;
        } else {
            if (this.h > 8) {
                i2 = this.h + (this.h >> 1);
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            a(i2);
            this.h--;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f, 0, i);
                System.arraycopy(objArr, 0, this.g, 0, i << 1);
            }
            if (i < this.h) {
                System.arraycopy(iArr, i + 1, this.f, i, this.h - i);
                System.arraycopy(objArr, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
        }
        return v;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        int i = 0;
        while (i < this.h) {
            try {
                Object b2 = b(i);
                Object c2 = c(i);
                Object obj2 = map.get(b2);
                if (c2 == null) {
                    if (obj2 != null || !map.containsKey(b2)) {
                        return false;
                    }
                } else if (!c2.equals(obj2)) {
                    return false;
                }
                i++;
            } catch (NullPointerException e2) {
                return false;
            } catch (ClassCastException e3) {
                return false;
            }
        }
        return true;
    }

    public V get(Object obj) {
        int a = a(obj);
        if (a >= 0) {
            return this.g[(a << 1) + 1];
        }
        return null;
    }

    public int hashCode() {
        int[] iArr = this.f;
        Object[] objArr = this.g;
        int i = this.h;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public boolean isEmpty() {
        return this.h <= 0;
    }

    public V put(K k, V v) {
        int hashCode;
        int a;
        int i = 8;
        if (k == null) {
            a = a();
            hashCode = 0;
        } else {
            hashCode = k.hashCode();
            a = a((Object) k, hashCode);
        }
        if (a >= 0) {
            int i2 = (a << 1) + 1;
            V v2 = this.g[i2];
            this.g[i2] = v;
            return v2;
        }
        int i3 = a ^ -1;
        if (this.h >= this.f.length) {
            if (this.h >= 8) {
                i = this.h + (this.h >> 1);
            } else if (this.h < 4) {
                i = 4;
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            a(i);
            if (this.f.length > 0) {
                System.arraycopy(iArr, 0, this.f, 0, iArr.length);
                System.arraycopy(objArr, 0, this.g, 0, objArr.length);
            }
            a(iArr, objArr, this.h);
        }
        if (i3 < this.h) {
            System.arraycopy(this.f, i3, this.f, i3 + 1, this.h - i3);
            System.arraycopy(this.g, i3 << 1, this.g, (i3 + 1) << 1, (this.h - i3) << 1);
        }
        this.f[i3] = hashCode;
        this.g[i3 << 1] = k;
        this.g[(i3 << 1) + 1] = v;
        this.h++;
        return null;
    }

    public V remove(Object obj) {
        int a = a(obj);
        if (a >= 0) {
            return d(a);
        }
        return null;
    }

    public int size() {
        return this.h;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.h * 28);
        sb.append('{');
        for (int i = 0; i < this.h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object b2 = b(i);
            if (b2 != this) {
                sb.append(b2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object c2 = c(i);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
