package defpackage;

/* renamed from: kq  reason: default package */
/* compiled from: TokenResponse */
public class kq extends mu {
    @nz(a = "access_token")
    public String accessToken;
    @nz(a = "expires_in")
    public Long expiresInSeconds;
    @nz(a = "refresh_token")
    public String refreshToken;
    @nz
    private String scope;
    @nz(a = "token_type")
    private String tokenType;

    /* renamed from: b */
    public kq d() {
        return (kq) super.d();
    }

    /* renamed from: b */
    public kq d(String str, Object obj) {
        return (kq) super.d(str, obj);
    }
}
