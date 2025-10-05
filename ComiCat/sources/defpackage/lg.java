package defpackage;

/* renamed from: lg  reason: default package */
/* compiled from: CommonGoogleClientRequestInitializer */
public class lg implements lh {
    private final String a;
    private final String b;

    public lg() {
        this((byte) 0);
    }

    private lg(byte b2) {
        this(0);
    }

    private lg(char c) {
        this.a = null;
        this.b = null;
    }

    public void a(lf<?> lfVar) {
        if (this.a != null) {
            lfVar.put("key", this.a);
        }
        if (this.b != null) {
            lfVar.put("userIp", this.b);
        }
    }
}
