package defpackage;

import java.util.List;

/* renamed from: adt  reason: default package */
/* compiled from: GoogleDriveEntry */
public final class adt implements adc {
    oz a;
    String b;
    List<oz> c = null;

    public adt(oz ozVar, String str) {
        this.a = ozVar;
        this.b = str;
    }

    public final String a() {
        new StringBuilder("Entry title is: ").append(this.a.title);
        return this.a.title;
    }

    public final String b() {
        return agp.b(this.b, a());
    }

    public final String c() {
        return this.a.id;
    }

    public final boolean d() {
        return this.a != null;
    }

    public final boolean e() {
        return "application/vnd.google-apps.folder".equals(this.a.mimeType);
    }

    public final long f() {
        return this.a.fileSize.longValue();
    }

    public final String g() {
        return this.a.md5Checksum;
    }
}
