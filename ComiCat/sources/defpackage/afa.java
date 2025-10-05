package defpackage;

import java.io.File;

/* renamed from: afa  reason: default package */
/* compiled from: ComicFile */
public final class afa {
    static final a[] b = {a.LIB7ZIP, a.CBR, a.CBZ};
    static final a[] c = {a.CBZ, a.LIB7ZIP, a.CBR};
    static final a[] d = {a.LIB7ZIP, a.CBZ, a.CBR};
    static final a[] e = {a.PDF};
    public static final String[] f = {"jpg", "jpeg", "png", "bmp", "gif", "webp"};
    static final String[] g = {"cbz", "cbr", "cb7", "cbt"};
    static final String[] h = {"zip", "rar", "7z", "tar", "pdf"};
    static final String[] i = {"cbz", "cbr", "cb7", "cbt", "zip", "rar", "7z", "tar", "pdf"};
    public String a = null;
    public b j = new b();
    private afe k = null;
    private String l = null;

    /* renamed from: afa$a */
    /* compiled from: ComicFile */
    public enum a {
        CBR("CBR"),
        CBZ("CBZ"),
        SEQUENTIALZIP("SZIP"),
        LIB7ZIP("7ZIP"),
        PDF("PDF");
        
        String f;

        private a(String str) {
            this.f = str;
        }

        public final String toString() {
            return this.f;
        }
    }

    /* renamed from: afa$b */
    /* compiled from: ComicFile */
    public class b {
        public int a = 0;
        afb b = null;
        public afb c = null;
        public afb d = null;
        public boolean e = aei.a().d.c("aggressive-caching");

        public b() {
        }

        public final void a() {
            this.b = null;
            this.c = null;
            this.d = null;
        }
    }

    public afa() {
    }

    public afa(File file, boolean z) {
        afe afe;
        this.l = file.getAbsolutePath();
        if (file.exists() && file.length() > 0) {
            new StringBuilder("Processing: ").append(file.getAbsolutePath());
            String a2 = agv.a(file.getName());
            if (a2.equals("cbz") || a2.equals("zip")) {
                afe = a(c, file);
                if (afe != null && afe.d() == a.CBR) {
                    this.a = "cbr";
                }
            } else if (a2.equals("cbr") || a2.equals("rar")) {
                afe = a(b, file);
                if (afe != null && afe.d() == a.CBZ) {
                    this.a = "cbz";
                }
            } else {
                afe = a2.equals("pdf") ? a(e, file) : a(d, file);
            }
            if (afe != null) {
                new StringBuilder("Opened with handler: ").append(afe);
            }
            this.k = afe;
            if (z && c()) {
                this.k.a();
            }
        }
    }

    private static afe a(afe afe, File file) {
        try {
            if (afe.a(file)) {
                return afe;
            }
            afe.b();
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static afe a(a[] aVarArr, File file) {
        afe afg;
        int i2 = 0;
        afe afe = null;
        while (i2 < aVarArr.length && afe == null) {
            switch (aVarArr[i2]) {
                case CBR:
                    afg = new aex();
                    break;
                case CBZ:
                    afg = new aez();
                    break;
                case LIB7ZIP:
                    afg = new afc();
                    break;
                case PDF:
                    afg = new afg();
                    break;
                default:
                    afg = null;
                    break;
            }
            i2++;
            afe = a(afg, file);
        }
        return afe;
    }

    public static String a(String str) {
        String str2;
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            str = str.substring(0, lastIndexOf);
        }
        String replace = str.replace("_", " ").replace("-", " ");
        if (replace == null || replace.length() == 0) {
            str2 = replace;
        } else {
            int length = replace.length();
            StringBuffer stringBuffer = new StringBuffer(length);
            boolean z = true;
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = replace.charAt(i2);
                if (Character.isWhitespace(charAt)) {
                    stringBuffer.append(charAt);
                    z = true;
                } else if (z) {
                    stringBuffer.append(Character.toTitleCase(charAt));
                    z = false;
                } else {
                    stringBuffer.append(charAt);
                }
            }
            str2 = stringBuffer.toString();
        }
        return str2.replace("  ", " ");
    }

    protected static boolean a(String str, long j2) {
        boolean z;
        if (str.startsWith("__MACOSX")) {
            String b2 = agv.b(str);
            z = b2 != null && b2.startsWith(".");
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        return (j2 == -1 || j2 >= 4096) && agv.a(f, agv.a(str)) != -1;
    }

    public static String[] b(String str) {
        return str.equals("prefDontInclude") ? g : i;
    }

    public static String[] j() {
        return g;
    }

    public static String[] k() {
        return h;
    }

    public static String[] l() {
        return i;
    }

    public final afb a(int i2) {
        if (i2 < 0 || i2 >= this.k.c()) {
            return null;
        }
        try {
            aff a2 = this.k.a(i2);
            return a2 != null ? new afb(a2) : null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void a() {
        if (this.k != null) {
            this.k.b();
            this.k = null;
            this.j.a();
        }
    }

    public final void b(int i2) {
        this.j.a();
        this.j.a = i2;
    }

    public final boolean b() {
        return this.k != null;
    }

    public final boolean c() {
        return this.k != null && this.k.c() > 0;
    }

    public final int d() {
        return this.k.c();
    }

    public final afb e() {
        if (this.j.b == null) {
            this.j.b = a(this.j.a);
        }
        return this.j.b;
    }

    public final boolean f() {
        if (this.j.b != null) {
            afb afb = this.j.b;
            if ((afb.a > 1 && afb.b > 0) || this.j.a > 0) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        a();
    }

    public final boolean g() {
        if (this.j.b != null) {
            afb afb = this.j.b;
            if ((afb.b < afb.a + -1) || this.j.a < this.k.c() - 1) {
                return true;
            }
        }
        return false;
    }

    public final afb h() {
        afb afb;
        boolean z;
        boolean z2 = false;
        if (this.j.b != null) {
            afb afb2 = this.j.b;
            if (afb2.a <= 1 || afb2.b <= 0) {
                z = false;
            } else {
                afb2.b--;
                afb2.c = null;
                z = true;
            }
            afb = z ? this.j.b : null;
        } else {
            afb = null;
        }
        if (this.j.a > 0) {
            z2 = true;
        }
        if (afb != null || !z2) {
            return afb;
        }
        b bVar = this.j;
        bVar.a--;
        b bVar2 = this.j;
        bVar2.c = bVar2.b;
        bVar2.b = bVar2.d;
        bVar2.d = null;
        if (this.j.b == null) {
            this.j.b = a(this.j.a);
        }
        this.j.d = a(this.j.a - 1);
        if (this.j.b == null) {
            return afb;
        }
        afb afb3 = this.j.b;
        afb3.b = 1;
        afb3.c = null;
        return this.j.b;
    }

    public final afb i() {
        afb afb = this.j.b != null ? this.j.b.d() ? this.j.b : null : null;
        boolean z = this.j.a < this.k.c() + -1;
        if (afb != null || !z) {
            return afb;
        }
        this.j.a++;
        b bVar = this.j;
        bVar.d = bVar.b;
        bVar.b = bVar.c;
        bVar.c = null;
        if (this.j.b == null) {
            this.j.b = a(this.j.a);
        }
        this.j.c = a(this.j.a + 1);
        return this.j.b;
    }
}
