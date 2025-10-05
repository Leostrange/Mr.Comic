package defpackage;

import com.box.androidsdk.content.auth.BoxAuthentication;
import java.util.Collection;

/* renamed from: kn  reason: default package */
/* compiled from: RefreshTokenRequest */
public class kn extends kp {
    @nz(a = "refresh_token")
    private String refreshToken;

    public kn(mf mfVar, mv mvVar, lr lrVar, String str) {
        super(mfVar, mvVar, lrVar, BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN);
        b(str);
    }

    /* renamed from: a */
    public kn d(String str) {
        return (kn) super.d(str);
    }

    /* renamed from: a */
    public kn d(String str, Object obj) {
        return (kn) super.d(str, obj);
    }

    /* renamed from: a */
    public kn b(Collection<String> collection) {
        return (kn) super.b(collection);
    }

    /* renamed from: a */
    public kn b(lr lrVar) {
        return (kn) super.b(lrVar);
    }

    /* renamed from: a */
    public kn b(lv lvVar) {
        return (kn) super.b(lvVar);
    }

    /* renamed from: a */
    public kn b(mb mbVar) {
        return (kn) super.b(mbVar);
    }

    public kn b(String str) {
        this.refreshToken = (String) ni.a(str);
        return this;
    }
}
