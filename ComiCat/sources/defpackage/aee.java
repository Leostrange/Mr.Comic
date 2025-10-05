package defpackage;

import java.io.File;

/* renamed from: aee  reason: default package */
/* compiled from: SMBFileEntry */
public final class aee implements adc {
    aar a;
    String b;

    public aee(aar aar, String str) {
        this.a = aar;
        this.b = str;
    }

    public final String a() {
        String d = this.a.d();
        return d.endsWith(File.separator) ? d.substring(0, d.length() - 1) : d;
    }

    public final String b() {
        String e = this.a.e();
        if (e.startsWith("smb://")) {
            e = e.substring(this.b.length());
        }
        return e.endsWith(File.separator) ? e.substring(0, e.length() - 1) : e;
    }

    public final String c() {
        return this.a.e();
    }

    public final boolean d() {
        try {
            return this.a.g() && !this.a.i() && this.a.j() > 0;
        } catch (aaq e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean e() {
        try {
            return this.a.h();
        } catch (aaq e) {
            e.printStackTrace();
            return false;
        }
    }

    public final long f() {
        try {
            return this.a.j();
        } catch (aaq e) {
            e.printStackTrace();
            return 0;
        }
    }

    public final String g() {
        return null;
    }
}
