package defpackage;

import java.util.Arrays;

/* renamed from: hk  reason: default package */
/* compiled from: DbxHost */
public final class hk {
    public static final hk a = new hk("api.dropboxapi.com", "content.dropboxapi.com", "www.dropbox.com", "notify.dropboxapi.com");
    public static final ib<hk> e = new ib<hk>() {
    };
    public static final ic<hk> f = new ic<hk>() {
    };
    public final String b;
    public final String c;
    public final String d;
    private final String g;

    private hk(String str, String str2, String str3, String str4) {
        this.b = str;
        this.c = str2;
        this.g = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hk)) {
            return false;
        }
        hk hkVar = (hk) obj;
        return hkVar.b.equals(this.b) && hkVar.c.equals(this.c) && hkVar.g.equals(this.g) && hkVar.d.equals(this.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new String[]{this.b, this.c, this.g, this.d});
    }
}
