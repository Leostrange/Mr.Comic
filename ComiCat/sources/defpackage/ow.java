package defpackage;

/* renamed from: ow  reason: default package */
/* compiled from: DriveRequest */
public abstract class ow<T> extends lj<T> {
    @nz
    private String alt;
    @nz
    private String fields;
    @nz
    private String key;
    @nz(a = "oauth_token")
    private String oauthToken;
    @nz
    private Boolean prettyPrint;
    @nz
    private String quotaUser;
    @nz
    private String userIp;

    public ow(ov ovVar, String str, String str2, Class<T> cls) {
        super(ovVar, str, str2, cls);
    }

    public final /* synthetic */ le a() {
        return (ov) super.a();
    }

    public ow<T> a(Boolean bool) {
        this.prettyPrint = bool;
        return this;
    }

    public ow<T> a(String str) {
        this.oauthToken = str;
        return this;
    }

    public ow<T> b(String str) {
        this.key = str;
        return this;
    }

    public ow<T> c(String str) {
        this.fields = str;
        return this;
    }

    /* renamed from: c */
    public ow<T> d(String str, Object obj) {
        return (ow) super.d(str, obj);
    }

    public final /* bridge */ /* synthetic */ li e() {
        return (ov) super.a();
    }
}
