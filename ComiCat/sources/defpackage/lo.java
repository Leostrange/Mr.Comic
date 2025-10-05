package defpackage;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* renamed from: lo  reason: default package */
/* compiled from: ByteArrayContent */
public final class lo extends lm {
    private final byte[] c;
    private final int d;
    private final int e;

    public lo(String str, byte[] bArr, int i) {
        super(str);
        this.c = (byte[]) ni.a(bArr);
        oh.a(i >= 0 && i + 0 <= bArr.length, "offset %s, length %s, array length %s", 0, Integer.valueOf(i), Integer.valueOf(bArr.length));
        this.d = 0;
        this.e = i;
    }

    public final long a() {
        return (long) this.e;
    }

    public final /* bridge */ /* synthetic */ lm a(String str) {
        return (lo) super.a(str);
    }

    public final /* bridge */ /* synthetic */ lm a(boolean z) {
        return (lo) super.a(z);
    }

    public final InputStream b() {
        return new ByteArrayInputStream(this.c, this.d, this.e);
    }

    public final boolean d() {
        return true;
    }
}
