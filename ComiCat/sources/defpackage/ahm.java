package defpackage;

import java.io.Serializable;

/* renamed from: ahm  reason: default package */
/* compiled from: IOCase */
public enum ahm implements Serializable {
    SENSITIVE("Sensitive", true),
    INSENSITIVE("Insensitive", false);
    
    private final String d;
    private final transient boolean e;

    static {
        SENSITIVE = new ahm("SENSITIVE", 0, "Sensitive", true);
        INSENSITIVE = new ahm("INSENSITIVE", 1, "Insensitive", false);
        c = new ahm("SYSTEM", 2, "System", !ahl.a());
        f = new ahm[]{SENSITIVE, INSENSITIVE, c};
    }

    private ahm(String str, boolean z) {
        this.d = str;
        this.e = z;
    }

    public final boolean a(String str, String str2) {
        if (str != null && str2 != null) {
            return this.e ? str.equals(str2) : str.equalsIgnoreCase(str2);
        }
        throw new NullPointerException("The strings must not be null");
    }

    public final String toString() {
        return this.d;
    }
}
