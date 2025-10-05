package defpackage;

import android.text.TextUtils;
import java.io.InputStream;

/* renamed from: tc  reason: default package */
/* compiled from: LiveDownloadOperation */
public class tc {
    public static final /* synthetic */ boolean c = (!tc.class.desiredAssertionStatus());
    int a;
    public InputStream b;
    private final sn<InputStream> d;
    private final String e;
    private final String f;
    private final Object g;

    /* renamed from: tc$a */
    /* compiled from: LiveDownloadOperation */
    public static class a {
        static final /* synthetic */ boolean a = (!tc.class.desiredAssertionStatus());
        /* access modifiers changed from: private */
        public sn<InputStream> b;
        /* access modifiers changed from: private */
        public final String c;
        /* access modifiers changed from: private */
        public final String d;
        /* access modifiers changed from: private */
        public InputStream e;
        /* access modifiers changed from: private */
        public Object f;

        public a(String str, String str2) {
            if (!a && TextUtils.isEmpty(str)) {
                throw new AssertionError();
            } else if (a || !TextUtils.isEmpty(str2)) {
                this.c = str;
                this.d = str2;
            } else {
                throw new AssertionError();
            }
        }
    }

    public tc(a aVar) {
        this.d = aVar.b;
        this.e = aVar.c;
        this.f = aVar.d;
        this.b = aVar.e;
        this.g = aVar.f;
    }
}
