package defpackage;

import java.io.InputStream;

/* renamed from: mh  reason: default package */
/* compiled from: InputStreamContent */
public final class mh extends lm {
    public long c = -1;
    public boolean d;
    private final InputStream e;

    public mh(String str, InputStream inputStream) {
        super(str);
        this.e = (InputStream) ni.a(inputStream);
    }

    public final long a() {
        return this.c;
    }

    public final /* bridge */ /* synthetic */ lm a(String str) {
        return (mh) super.a(str);
    }

    public final InputStream b() {
        return this.e;
    }

    /* renamed from: b */
    public final mh a(boolean z) {
        return (mh) super.a(z);
    }

    public final boolean d() {
        return this.d;
    }
}
