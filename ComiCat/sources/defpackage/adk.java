package defpackage;

import com.box.androidsdk.content.models.BoxFile;

/* renamed from: adk  reason: default package */
/* compiled from: BoxContentFileEntry */
final class adk implements adc {
    BoxFile a;
    String b;

    adk(BoxFile boxFile, String str) {
        this.a = boxFile;
        this.b = str;
    }

    public final String a() {
        return this.a.getName();
    }

    public final String b() {
        return agp.b(this.b, this.a.getName());
    }

    public final String c() {
        return this.a.getId();
    }

    public final boolean d() {
        return true;
    }

    public final boolean e() {
        return false;
    }

    public final long f() {
        return this.a.getSize().longValue();
    }

    public final String g() {
        return this.a.getSha1();
    }
}
