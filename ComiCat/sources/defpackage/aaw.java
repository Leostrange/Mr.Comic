package defpackage;

/* renamed from: aaw  reason: default package */
/* compiled from: SmbShareInfo */
public class aaw implements za {
    protected String b;
    protected int c;
    protected String d;

    public aaw() {
    }

    public aaw(String str) {
        this.b = str;
        this.c = 0;
        this.d = null;
    }

    public final String a() {
        return this.b;
    }

    public final int b() {
        switch (this.c & 65535) {
            case 1:
                return 32;
            case 3:
                return 16;
            default:
                return 8;
        }
    }

    public final int c() {
        return 17;
    }

    public final long d() {
        return 0;
    }

    public final long e() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof aaw) {
            return this.b.equals(((aaw) obj).b);
        }
        return false;
    }

    public final long f() {
        return 0;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return new String("SmbShareInfo[netName=" + this.b + ",type=0x" + abw.a(this.c, 8) + ",remark=" + this.d + "]");
    }
}
