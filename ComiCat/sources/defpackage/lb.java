package defpackage;

/* renamed from: lb  reason: default package */
/* compiled from: MediaHttpDownloader */
public final class lb {
    private final ma a;
    private final mf b;
    private boolean c = false;
    private int d = 33554432;
    private int e = a.a;
    private long f = -1;

    /* renamed from: lb$a */
    /* compiled from: MediaHttpDownloader */
    public enum a {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = new int[]{a, b, c};
        }
    }

    public lb(mf mfVar, mb mbVar) {
        this.b = (mf) ni.a(mfVar);
        this.a = mbVar == null ? mfVar.a((mb) null) : mfVar.a(mbVar);
    }
}
