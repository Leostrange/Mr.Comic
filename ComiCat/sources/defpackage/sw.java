package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.box.androidsdk.content.auth.BoxAuthentication;
import defpackage.tj;
import java.util.Locale;
import java.util.Set;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;

/* renamed from: sw  reason: default package */
/* compiled from: LiveAuthClient */
public class sw {
    public static final sy a = new sy() {
        public final void a() {
        }

        public final void a(int i, ta taVar) {
        }
    };
    static final /* synthetic */ boolean g = (!sw.class.desiredAssertionStatus());
    public final String b;
    public boolean c = false;
    public HttpClient d = new DefaultHttpClient();
    public Set<String> e;
    public final ta f = new ta(this);
    /* access modifiers changed from: private */
    public final Context h;

    /* renamed from: sw$a */
    /* compiled from: LiveAuthClient */
    static class a extends c implements Runnable {
        private final int c;
        private final ta d;

        public a(sy syVar, Object obj, int i, ta taVar) {
            super(syVar, obj);
            this.c = i;
            this.d = taVar;
        }

        public final void run() {
            this.a.a(this.c, this.d);
        }
    }

    /* renamed from: sw$b */
    /* compiled from: LiveAuthClient */
    static class b extends c implements Runnable {
        private final sx c;

        public b(sy syVar, Object obj, sx sxVar) {
            super(syVar, obj);
            this.c = sxVar;
        }

        public final void run() {
            this.a.a();
        }
    }

    /* renamed from: sw$c */
    /* compiled from: LiveAuthClient */
    static abstract class c {
        protected final sy a;
        protected final Object b;

        public c(sy syVar, Object obj) {
            this.a = syVar;
            this.b = obj;
        }
    }

    /* renamed from: sw$d */
    /* compiled from: LiveAuthClient */
    public class d extends c implements tl, tn {
        public d(sy syVar) {
            super(syVar, (Object) null);
        }

        public final void a(sx sxVar) {
            new b(this.a, this.b, sxVar).run();
        }

        public final void a(tk tkVar) {
            new b(this.a, this.b, new sx(tkVar.a.toString().toLowerCase(Locale.US), tkVar.b, tkVar.c)).run();
        }

        public final void a(tm tmVar) {
            tmVar.a(this);
        }

        public final void a(to toVar) {
            sw.this.f.a(toVar);
            new a(this.a, this.b, th.b, sw.this.f).run();
        }
    }

    /* renamed from: sw$e */
    /* compiled from: LiveAuthClient */
    public class e implements tl, tn {
        static final /* synthetic */ boolean a = (!sw.class.desiredAssertionStatus());

        private e() {
        }

        public /* synthetic */ e(sw swVar, byte b2) {
            this();
        }

        public final void a(sx sxVar) {
        }

        public final void a(tk tkVar) {
            if (tkVar.a == tj.b.INVALID_GRANT) {
                sw.b(sw.this);
            }
        }

        public final void a(tm tmVar) {
            tmVar.a(this);
        }

        public final void a(to toVar) {
            String str = toVar.d;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (a || !TextUtils.isEmpty(str)) {
                SharedPreferences.Editor edit = sw.this.h.getSharedPreferences("com.microsoft.live", 0).edit();
                edit.putString(BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN, str);
                edit.commit();
                return;
            }
            throw new AssertionError();
        }
    }

    public sw(Context context, String str) {
        tb.a((Object) context, "context");
        tb.a(str, "clientId");
        this.h = context.getApplicationContext();
        this.b = str;
    }

    static /* synthetic */ boolean b(sw swVar) {
        SharedPreferences.Editor edit = swVar.h.getSharedPreferences("com.microsoft.live", 0).edit();
        edit.remove(BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN);
        return edit.commit();
    }
}
