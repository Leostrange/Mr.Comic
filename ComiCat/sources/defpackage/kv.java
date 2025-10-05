package defpackage;

import java.util.Collection;

/* renamed from: kv  reason: default package */
/* compiled from: GoogleAuthorizationCodeRequestUrl */
public final class kv extends kg {
    @nz(a = "access_type")
    public String accessType;
    @nz(a = "approval_prompt")
    public String approvalPrompt;

    public kv(String str, String str2, String str3, Collection<String> collection) {
        super(str, str2);
        d(str3);
        c(collection);
    }

    /* access modifiers changed from: private */
    /* renamed from: e */
    public kv d(Collection<String> collection) {
        return (kv) super.d(collection);
    }

    /* access modifiers changed from: private */
    /* renamed from: f */
    public kv d(String str, Object obj) {
        return (kv) super.d(str, obj);
    }

    /* access modifiers changed from: private */
    /* renamed from: f */
    public kv c(Collection<String> collection) {
        ni.a(collection.iterator().hasNext());
        return (kv) super.c(collection);
    }

    /* access modifiers changed from: private */
    /* renamed from: h */
    public kv c(String str) {
        return (kv) super.c(str);
    }

    public final /* bridge */ /* synthetic */ kg a() {
        return (kv) super.d();
    }

    public final /* synthetic */ ki b() {
        return (kv) super.d();
    }

    public final /* synthetic */ lr c() {
        return (kv) super.d();
    }

    public final /* synthetic */ Object clone() {
        return (kv) super.d();
    }

    public final /* synthetic */ nw d() {
        return (kv) super.d();
    }

    /* renamed from: e */
    public final kv d(String str) {
        ni.a(str);
        return (kv) super.d(str);
    }
}
