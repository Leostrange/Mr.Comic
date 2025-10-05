package defpackage;

import org.apache.http.protocol.HTTP;

/* renamed from: aic  reason: default package */
/* compiled from: JsonEncoding */
public enum aic {
    UTF8(HTTP.UTF_8, false),
    UTF16_BE("UTF-16BE", true),
    UTF16_LE("UTF-16LE", false),
    UTF32_BE("UTF-32BE", true),
    UTF32_LE("UTF-32LE", false);
    
    protected final String f;
    protected final boolean g;

    private aic(String str, boolean z) {
        this.f = str;
        this.g = z;
    }

    public final String a() {
        return this.f;
    }

    public final boolean b() {
        return this.g;
    }
}
