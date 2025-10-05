package defpackage;

import java.util.Collection;

/* renamed from: ki  reason: default package */
/* compiled from: AuthorizationRequestUrl */
public class ki extends lr {
    @nz(a = "client_id")
    private String clientId;
    @nz(a = "redirect_uri")
    private String redirectUri;
    @nz(a = "response_type")
    private String responseTypes;
    @nz(a = "scope")
    private String scopes;
    @nz
    private String state;

    public ki(String str, String str2, Collection<String> collection) {
        super(str);
        ni.a(this.b == null);
        c(str2);
        d(collection);
    }

    /* renamed from: b */
    public ki d() {
        return (ki) super.d();
    }

    /* renamed from: b */
    public ki d(String str, Object obj) {
        return (ki) super.d(str, obj);
    }

    public ki c(String str) {
        this.clientId = (String) ni.a(str);
        return this;
    }

    public ki c(Collection<String> collection) {
        this.scopes = (collection == null || !collection.iterator().hasNext()) ? null : ny.a().a(collection);
        return this;
    }

    public ki d(String str) {
        this.redirectUri = str;
        return this;
    }

    public ki d(Collection<String> collection) {
        this.responseTypes = ny.a().a(collection);
        return this;
    }
}
