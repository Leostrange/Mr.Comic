package defpackage;

import java.util.Comparator;

/* renamed from: xb  reason: default package */
/* compiled from: FastComparator */
public abstract class xb<T> implements Comparator<T>, xi {
    public static final wr<Boolean> a;
    static boolean b;
    public static final xb<Object> c = new a((byte) 0);
    public static final xb<Object> d = new b((byte) 0);
    public static final xb<Object> e = new e((byte) 0);
    public static final xb<String> f = new f((byte) 0);
    public static final xb<Object> g = new c((byte) 0);
    public static final xb<CharSequence> h = new d((byte) 0);

    /* renamed from: xb$a */
    /* compiled from: FastComparator */
    static final class a<T> extends xb<T> {
        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }

        public final int a(T t) {
            if (t == null) {
                return 0;
            }
            return xb.b ? e.a(t) : t.hashCode();
        }

        public final boolean a(T t, T t2) {
            return t == null ? t2 == null : t == t2 || t.equals(t2);
        }

        public final int compare(T t, T t2) {
            return ((Comparable) t).compareTo(t2);
        }

        public final String toString() {
            return "Default";
        }
    }

    /* renamed from: xb$b */
    /* compiled from: FastComparator */
    static final class b<T> extends xb<T> {
        private b() {
        }

        /* synthetic */ b(byte b) {
            this();
        }

        public final int a(T t) {
            if (t == null) {
                return 0;
            }
            return t.hashCode();
        }

        public final boolean a(T t, T t2) {
            return t == null ? t2 == null : t == t2 || t.equals(t2);
        }

        public final int compare(T t, T t2) {
            return ((Comparable) t).compareTo(t2);
        }

        public final String toString() {
            return "Direct";
        }
    }

    /* renamed from: xb$c */
    /* compiled from: FastComparator */
    static final class c extends xb {
        private c() {
        }

        /* synthetic */ c(byte b) {
            this();
        }

        public final int a(Object obj) {
            int identityHashCode = System.identityHashCode(obj);
            if (!xb.b) {
                return identityHashCode;
            }
            int i = identityHashCode + ((identityHashCode << 9) ^ -1);
            int i2 = i ^ (i >>> 14);
            int i3 = i2 + (i2 << 4);
            return i3 ^ (i3 >>> 10);
        }

        public final boolean a(Object obj, Object obj2) {
            return obj == obj2;
        }

        public final int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }

        public final String toString() {
            return "Identity";
        }
    }

    /* renamed from: xb$d */
    /* compiled from: FastComparator */
    static final class d extends xb {
        private d() {
        }

        /* synthetic */ d(byte b) {
            this();
        }

        public final int a(Object obj) {
            int i = 0;
            if (obj == null) {
                return 0;
            }
            if ((obj instanceof String) || (obj instanceof ww)) {
                return obj.hashCode();
            }
            CharSequence charSequence = (CharSequence) obj;
            int length = charSequence.length();
            for (int i2 = 0; i2 < length; i2++) {
                i = charSequence.charAt(i2) + (i * 31);
            }
            return i;
        }

        public final boolean a(Object obj, Object obj2) {
            if ((obj instanceof String) && (obj2 instanceof String)) {
                return obj.equals(obj2);
            }
            if ((obj instanceof CharSequence) && (obj2 instanceof String)) {
                CharSequence charSequence = (CharSequence) obj;
                String str = (String) obj2;
                int length = str.length();
                if (charSequence.length() != length) {
                    return false;
                }
                int i = 0;
                while (i < length) {
                    int i2 = i + 1;
                    if (str.charAt(i) != charSequence.charAt(i)) {
                        return false;
                    }
                    i = i2;
                }
                return true;
            } else if ((obj instanceof String) && (obj2 instanceof CharSequence)) {
                CharSequence charSequence2 = (CharSequence) obj2;
                String str2 = (String) obj;
                int length2 = str2.length();
                if (charSequence2.length() != length2) {
                    return false;
                }
                int i3 = 0;
                while (i3 < length2) {
                    int i4 = i3 + 1;
                    if (str2.charAt(i3) != charSequence2.charAt(i3)) {
                        return false;
                    }
                    i3 = i4;
                }
                return true;
            } else if (obj == null || obj2 == null) {
                return obj == obj2;
            } else {
                CharSequence charSequence3 = (CharSequence) obj;
                CharSequence charSequence4 = (CharSequence) obj2;
                int length3 = charSequence3.length();
                if (charSequence4.length() != length3) {
                    return false;
                }
                int i5 = 0;
                while (i5 < length3) {
                    int i6 = i5 + 1;
                    if (charSequence3.charAt(i5) != charSequence4.charAt(i5)) {
                        return false;
                    }
                    i5 = i6;
                }
                return true;
            }
        }

        public final int compare(Object obj, Object obj2) {
            if (obj instanceof String) {
                if (obj2 instanceof String) {
                    return ((String) obj).compareTo((String) obj2);
                }
                String str = (String) obj;
                CharSequence charSequence = (CharSequence) obj2;
                int min = Math.min(str.length(), charSequence.length());
                int i = 0;
                while (true) {
                    int i2 = min - 1;
                    if (min == 0) {
                        return str.length() - charSequence.length();
                    }
                    char charAt = str.charAt(i);
                    int i3 = i + 1;
                    char charAt2 = charSequence.charAt(i);
                    if (charAt != charAt2) {
                        return charAt - charAt2;
                    }
                    i = i3;
                    min = i2;
                }
            } else if (obj2 instanceof String) {
                return -compare(obj2, obj);
            } else {
                CharSequence charSequence2 = (CharSequence) obj;
                CharSequence charSequence3 = (CharSequence) obj2;
                int min2 = Math.min(charSequence2.length(), charSequence3.length());
                int i4 = 0;
                while (true) {
                    int i5 = min2 - 1;
                    if (min2 == 0) {
                        return charSequence2.length() - charSequence3.length();
                    }
                    char charAt3 = charSequence2.charAt(i4);
                    int i6 = i4 + 1;
                    char charAt4 = charSequence3.charAt(i4);
                    if (charAt3 != charAt4) {
                        return charAt3 - charAt4;
                    }
                    i4 = i6;
                    min2 = i5;
                }
            }
        }

        public final String toString() {
            return "Lexical";
        }
    }

    /* renamed from: xb$e */
    /* compiled from: FastComparator */
    static final class e<T> extends xb<T> {
        private e() {
        }

        /* synthetic */ e(byte b) {
            this();
        }

        public final int a(T t) {
            if (t == null) {
                return 0;
            }
            int hashCode = t.hashCode();
            int i = hashCode + ((hashCode << 9) ^ -1);
            int i2 = i ^ (i >>> 14);
            int i3 = i2 + (i2 << 4);
            return i3 ^ (i3 >>> 10);
        }

        public final boolean a(T t, T t2) {
            return t == null ? t2 == null : t == t2 || t.equals(t2);
        }

        public final int compare(T t, T t2) {
            return ((Comparable) t).compareTo(t2);
        }

        public final String toString() {
            return "Rehash";
        }
    }

    /* renamed from: xb$f */
    /* compiled from: FastComparator */
    static final class f extends xb {
        private f() {
        }

        /* synthetic */ f(byte b) {
            this();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:2:0x0004, code lost:
            r4 = (java.lang.String) r4;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final int a(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                if (r4 != 0) goto L_0x0004
            L_0x0003:
                return r0
            L_0x0004:
                java.lang.String r4 = (java.lang.String) r4
                int r1 = r4.length()
                if (r1 == 0) goto L_0x0003
                char r0 = r4.charAt(r0)
                int r2 = r1 + -1
                char r2 = r4.charAt(r2)
                int r2 = r2 * 31
                int r0 = r0 + r2
                int r2 = r1 >> 1
                char r2 = r4.charAt(r2)
                int r2 = r2 * 1009
                int r0 = r0 + r2
                int r2 = r1 >> 2
                char r2 = r4.charAt(r2)
                int r2 = r2 * 27583
                int r0 = r0 + r2
                int r2 = r1 + -1
                int r1 = r1 >> 2
                int r1 = r2 - r1
                char r1 = r4.charAt(r1)
                r2 = 73408859(0x460215b, float:2.634639E-36)
                int r1 = r1 * r2
                int r0 = r0 + r1
                goto L_0x0003
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.xb.f.a(java.lang.Object):int");
        }

        public final boolean a(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj == obj2 || obj.equals(obj2);
        }

        public final int compare(Object obj, Object obj2) {
            return ((String) obj).compareTo((String) obj2);
        }

        public final String toString() {
            return "String";
        }
    }

    static {
        AnonymousClass1 r0 = new wr(new Boolean(a())) {
        };
        a = r0;
        b = ((Boolean) r0.a).booleanValue();
    }

    private static boolean a() {
        boolean[] zArr = new boolean[64];
        for (int i = 0; i < 64; i++) {
            zArr[new Object().hashCode() & 63] = true;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < 64) {
            int i4 = i2 + 1;
            i3 = (zArr[i2] ? 1 : 0) + i3;
            i2 = i4;
        }
        return i3 < 16;
    }

    public abstract int a(T t);

    public abstract boolean a(T t, T t2);

    public abstract int compare(T t, T t2);
}
