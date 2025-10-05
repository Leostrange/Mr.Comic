package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.models.BoxError;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.HttpClient;

/* renamed from: so  reason: default package */
/* compiled from: AuthorizationRequest */
public class so implements tl {
    static final /* synthetic */ boolean e = (!so.class.desiredAssertionStatus());
    public final Activity a;
    public final String b;
    public final String c;
    public final String d;
    private final HttpClient f;
    private final sq g;

    /* renamed from: so$a */
    /* compiled from: AuthorizationRequest */
    public class a extends Dialog implements DialogInterface.OnCancelListener {
        static final /* synthetic */ boolean a = (!so.class.desiredAssertionStatus());
        private final Uri c;

        /* renamed from: so$a$a  reason: collision with other inner class name */
        /* compiled from: AuthorizationRequest */
        class C0009a extends WebViewClient {
            private final CookieManager b = CookieManager.getInstance();
            private final Set<String> c = new HashSet();

            public C0009a() {
                CookieSyncManager.createInstance(a.this.getContext());
            }

            public final void onPageFinished(WebView webView, String str) {
                Uri parse = Uri.parse(str);
                if (parse.getHost().equals(sp.a.f.getHost())) {
                    String cookie = this.b.getCookie(str);
                    if (!TextUtils.isEmpty(cookie)) {
                        for (String str2 : TextUtils.split(cookie, "; ")) {
                            this.c.add(str2.substring(0, str2.indexOf("=")));
                        }
                    }
                }
                Uri uri = sp.a.e;
                b bVar = b.a;
                if (b.a(parse, uri) == 0) {
                    SharedPreferences sharedPreferences = a.this.getContext().getSharedPreferences("com.microsoft.live", 0);
                    this.c.addAll(Arrays.asList(TextUtils.split(sharedPreferences.getString("cookies", ""), ",")));
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString("cookies", TextUtils.join(",", this.c));
                    edit.commit();
                    this.c.clear();
                    so.a(so.this, parse);
                    a.this.dismiss();
                }
            }

            public final void onReceivedError(WebView webView, int i, String str, String str2) {
                so.this.a("", str, str2);
                a.this.dismiss();
            }
        }

        public a(Uri uri) {
            super(so.this.a, 16973840);
            setOwnerActivity(so.this.a);
            if (a || uri != null) {
                this.c = uri;
                return;
            }
            throw new AssertionError();
        }

        public final void onCancel(DialogInterface dialogInterface) {
            so.this.a(new sx("The user cancelled the login operation."));
        }

        /* access modifiers changed from: protected */
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setOnCancelListener(this);
            FrameLayout frameLayout = new FrameLayout(getContext());
            LinearLayout linearLayout = new LinearLayout(getContext());
            WebView webView = new WebView(getContext());
            webView.setWebViewClient(new C0009a());
            webView.getSettings().setJavaScriptEnabled(true);
            webView.loadUrl(this.c.toString());
            webView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            webView.setVisibility(0);
            linearLayout.addView(webView);
            linearLayout.setVisibility(0);
            frameLayout.addView(linearLayout);
            frameLayout.setVisibility(0);
            frameLayout.forceLayout();
            linearLayout.forceLayout();
            addContentView(frameLayout, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    /* renamed from: so$b */
    /* compiled from: AuthorizationRequest */
    enum b implements Comparator<Uri> {
        ;

        static {
            b = !so.class.desiredAssertionStatus();
            a = new b("INSTANCE");
            c = new b[]{a};
        }

        private b(String str) {
        }

        public static int a(Uri uri, Uri uri2) {
            String[] strArr = {uri.getScheme(), uri.getAuthority(), uri.getPath()};
            String[] strArr2 = {uri2.getScheme(), uri2.getAuthority(), uri2.getPath()};
            for (int i = 0; i < 3; i++) {
                int compareTo = strArr[i].compareTo(strArr2[i]);
                if (compareTo != 0) {
                    return compareTo;
                }
            }
            return 0;
        }
    }

    public so(Activity activity, HttpClient httpClient, String str, String str2, String str3) {
        if (!e && activity == null) {
            throw new AssertionError();
        } else if (!e && httpClient == null) {
            throw new AssertionError();
        } else if (!e && TextUtils.isEmpty(str)) {
            throw new AssertionError();
        } else if (!e && TextUtils.isEmpty(str2)) {
            throw new AssertionError();
        } else if (e || !TextUtils.isEmpty(str3)) {
            this.a = activity;
            this.f = httpClient;
            this.b = str;
            this.c = str2;
            this.g = new sq();
            this.d = str3;
        } else {
            throw new AssertionError();
        }
    }

    private void a() {
        a(new sx("An error occured while communicating with the server during the operation. Please try again later."));
    }

    /* access modifiers changed from: private */
    public void a(String str, String str2, String str3) {
        a(new sx(str, str2, str3));
    }

    static /* synthetic */ void a(so soVar, Uri uri) {
        boolean z = true;
        boolean z2 = uri.getFragment() != null;
        boolean z3 = uri.getQuery() != null;
        if (!z2 && !z3) {
            soVar.a();
            return;
        }
        if (z2) {
            String[] split = TextUtils.split(uri.getFragment(), "&");
            HashMap hashMap = new HashMap();
            for (String str : split) {
                int indexOf = str.indexOf("=");
                hashMap.put(str.substring(0, indexOf), str.substring(indexOf + 1));
            }
            if (!hashMap.containsKey(BoxAuthentication.BoxAuthenticationInfo.FIELD_ACCESS_TOKEN) || !hashMap.containsKey("token_type")) {
                z = false;
            }
            if (z) {
                try {
                    soVar.a((tm) to.a((Map<String, String>) hashMap));
                    return;
                } catch (sx e2) {
                    soVar.a(e2);
                    return;
                }
            } else {
                String str2 = (String) hashMap.get("error");
                if (str2 != null) {
                    soVar.a(str2, (String) hashMap.get(BoxError.FIELD_ERROR_DESCRIPTION), (String) hashMap.get("error_uri"));
                    return;
                }
            }
        }
        if (z3) {
            String queryParameter = uri.getQueryParameter(BoxError.FIELD_CODE);
            if (queryParameter == null) {
                String queryParameter2 = uri.getQueryParameter("error");
                if (queryParameter2 != null) {
                    soVar.a(queryParameter2, uri.getQueryParameter(BoxError.FIELD_ERROR_DESCRIPTION), uri.getQueryParameter("error_uri"));
                    return;
                }
            } else if (e || !TextUtils.isEmpty(queryParameter)) {
                ts tsVar = new ts(new sl(soVar.f, soVar.b, soVar.c, queryParameter));
                tsVar.a.a((tl) soVar);
                tsVar.execute(new Void[0]);
                return;
            } else {
                throw new AssertionError();
            }
        }
        soVar.a();
    }

    public final void a(sx sxVar) {
        this.g.a(sxVar);
    }

    public final void a(tl tlVar) {
        this.g.a(tlVar);
    }

    public final void a(tm tmVar) {
        this.g.a(tmVar);
    }
}
