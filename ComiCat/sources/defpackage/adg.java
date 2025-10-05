package defpackage;

/* renamed from: adg  reason: default package */
/* compiled from: RemoteFileKey */
public final class adg {
    public String a;
    public long b;
    public String c;

    public adg() {
    }

    public adg(adc adc) {
        this.a = adc.c();
        this.b = adc.f();
        this.c = null;
    }

    public static adg a(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        String[] split = str.split("-###-");
        if (split.length != 2) {
            return null;
        }
        adg adg = new adg();
        adg.a = split[0];
        adg.b = Long.valueOf(split[1]).longValue();
        return adg;
    }

    public static String a(String str, long j) {
        return str + "-###-" + String.valueOf(j);
    }

    public final String toString() {
        this.c = this.c != null ? this.c : a(this.a, this.b);
        return this.c;
    }
}
