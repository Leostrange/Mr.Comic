package defpackage;

/* renamed from: zj  reason: default package */
/* compiled from: NtlmAuthenticator */
public abstract class zj {
    private static zj a;
    private String b;
    private zo c;

    public static zl a(String str, zo zoVar) {
        if (a != null) {
            synchronized (a) {
                a.b = str;
                a.c = zoVar;
            }
        }
        return null;
    }
}
