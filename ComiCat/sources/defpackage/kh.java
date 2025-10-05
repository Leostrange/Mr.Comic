package defpackage;

import java.util.Collection;

/* renamed from: kh  reason: default package */
/* compiled from: AuthorizationCodeTokenRequest */
public class kh extends kp {
    @nz
    private String code;
    @nz(a = "redirect_uri")
    private String redirectUri;

    public kh(mf mfVar, mv mvVar, lr lrVar, String str) {
        super(mfVar, mvVar, lrVar, "authorization_code");
        b(str);
    }

    /* renamed from: a */
    public kh d(String str) {
        return (kh) super.d(str);
    }

    /* renamed from: a */
    public kh d(String str, Object obj) {
        return (kh) super.d(str, obj);
    }

    /* renamed from: a */
    public kh b(Collection<String> collection) {
        return (kh) super.b(collection);
    }

    /* renamed from: a */
    public kh b(lr lrVar) {
        return (kh) super.b(lrVar);
    }

    /* renamed from: a */
    public kh b(lv lvVar) {
        return (kh) super.b(lvVar);
    }

    /* renamed from: a */
    public kh b(mb mbVar) {
        return (kh) super.b(mbVar);
    }

    public kh b(String str) {
        this.code = (String) ni.a(str);
        return this;
    }

    public kh c(String str) {
        this.redirectUri = str;
        return this;
    }
}
