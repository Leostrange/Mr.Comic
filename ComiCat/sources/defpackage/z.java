package defpackage;

import java.util.Locale;

/* renamed from: z  reason: default package */
/* compiled from: TextDirectionHeuristicsCompat */
public final class z {
    public static final y a = new e((c) null, false, (byte) 0);
    public static final y b = new e((c) null, true, (byte) 0);
    public static final y c = new e(b.a, false, (byte) 0);
    public static final y d = new e(b.a, true, (byte) 0);
    public static final y e = new e(a.a, false, (byte) 0);
    public static final y f = f.a;

    /* renamed from: z$a */
    /* compiled from: TextDirectionHeuristicsCompat */
    static class a implements c {
        public static final a a = new a(true);
        public static final a b = new a(false);
        private final boolean c;

        private a(boolean z) {
            this.c = z;
        }

        public final int a(CharSequence charSequence, int i) {
            int i2 = i + 0;
            boolean z = false;
            for (int i3 = 0; i3 < i2; i3++) {
                switch (z.b(Character.getDirectionality(charSequence.charAt(i3)))) {
                    case 0:
                        if (!this.c) {
                            z = true;
                            break;
                        } else {
                            return 0;
                        }
                    case 1:
                        if (this.c) {
                            z = true;
                            break;
                        } else {
                            return 1;
                        }
                }
            }
            if (z) {
                return !this.c ? 0 : 1;
            }
            return 2;
        }
    }

    /* renamed from: z$b */
    /* compiled from: TextDirectionHeuristicsCompat */
    static class b implements c {
        public static final b a = new b();

        private b() {
        }

        public final int a(CharSequence charSequence, int i) {
            int i2 = i + 0;
            int i3 = 2;
            for (int i4 = 0; i4 < i2 && i3 == 2; i4++) {
                i3 = z.a(Character.getDirectionality(charSequence.charAt(i4)));
            }
            return i3;
        }
    }

    /* renamed from: z$c */
    /* compiled from: TextDirectionHeuristicsCompat */
    interface c {
        int a(CharSequence charSequence, int i);
    }

    /* renamed from: z$d */
    /* compiled from: TextDirectionHeuristicsCompat */
    static abstract class d implements y {
        private final c a;

        public d(c cVar) {
            this.a = cVar;
        }

        /* access modifiers changed from: protected */
        public abstract boolean a();

        public final boolean a(CharSequence charSequence, int i) {
            if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
                throw new IllegalArgumentException();
            } else if (this.a == null) {
                return a();
            } else {
                switch (this.a.a(charSequence, i)) {
                    case 0:
                        return true;
                    case 1:
                        return false;
                    default:
                        return a();
                }
            }
        }
    }

    /* renamed from: z$e */
    /* compiled from: TextDirectionHeuristicsCompat */
    static class e extends d {
        private final boolean a;

        private e(c cVar, boolean z) {
            super(cVar);
            this.a = z;
        }

        /* synthetic */ e(c cVar, boolean z, byte b) {
            this(cVar, z);
        }

        /* access modifiers changed from: protected */
        public final boolean a() {
            return this.a;
        }
    }

    /* renamed from: z$f */
    /* compiled from: TextDirectionHeuristicsCompat */
    static class f extends d {
        public static final f a = new f();

        public f() {
            super((c) null);
        }

        /* access modifiers changed from: protected */
        public final boolean a() {
            return aa.a(Locale.getDefault()) == 1;
        }
    }

    static /* synthetic */ int a(int i) {
        switch (i) {
            case 0:
            case 14:
            case 15:
                return 1;
            case 1:
            case 2:
            case 16:
            case 17:
                return 0;
            default:
                return 2;
        }
    }

    static /* synthetic */ int b(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                return 2;
        }
    }
}
