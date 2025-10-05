package meanlabs.comicreader.cloud.onedrive;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.models.BoxMetadata;
import defpackage.so;
import defpackage.sw;
import defpackage.sz;
import defpackage.te;
import defpackage.tj;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import meanlabs.comicat.R;
import meanlabs.comicreader.ReaderActivity;
import org.json.JSONObject;

public class OneDriveAuthActivity extends ReaderActivity implements sy {
    public static final String[] a = {"wl.signin", "wl.basic", "wl.offline_access", "wl.skydrive"};
    private sw b;

    static /* synthetic */ void a(OneDriveAuthActivity oneDriveAuthActivity, ta taVar, String str) {
        int intExtra = oneDriveAuthActivity.getIntent().getIntExtra("serviecid", -1);
        if (intExtra == -1) {
            aev aev = new aev();
            aev.b = "onedrive";
            aev.h = taVar.a();
            aev.d = taVar.b();
            aev.e = taVar.e();
            aev.g = taVar.d();
            aev.i = taVar.c().getTime();
            aev.f = str;
            aev.c = aev.f;
            if (aei.a().g.a(aev)) {
                act.b().a(aev.a, true);
            } else {
                act.b().a(-1, false);
            }
        } else {
            aev a2 = aei.a().g.a(intExtra);
            if (a2 != null) {
                a2.h = taVar.a();
                a2.d = taVar.b();
                a2.e = taVar.e();
                a2.g = taVar.d();
                a2.i = taVar.c().getTime();
                a2.f = str;
                a2.c = a2.f;
                aew aew = aei.a().g;
                if (aew.c(a2)) {
                    act.b().a(intExtra, false);
                }
            }
        }
        oneDriveAuthActivity.finish();
    }

    public final void a() {
        Toast.makeText(getApplicationContext(), getString(R.string.unableToLogIntoService, new Object[]{getString(R.string.oneDrive)}), 1).show();
        act.b().a(-1, false);
        finish();
    }

    public final void a(int i, final ta taVar) {
        if (i == th.b) {
            sz szVar = new sz(taVar);
            AnonymousClass1 r2 = new tg() {
                public final void a(te teVar) {
                    String str;
                    try {
                        str = teVar.a.getString("first_name");
                        if (str == null) {
                            str = "";
                        }
                    } catch (Exception e) {
                        Exception exc = e;
                        str = "";
                        exc.printStackTrace();
                    }
                    OneDriveAuthActivity.a(OneDriveAuthActivity.this, taVar, str);
                }

                public final void a(tf tfVar, te teVar) {
                    tfVar.printStackTrace();
                    OneDriveAuthActivity.a(OneDriveAuthActivity.this, taVar, "");
                }
            };
            sz.b("me");
            st stVar = new st(szVar.c, szVar.b, "me");
            szVar.d.a();
            sn<JSONObject> a2 = sn.a(stVar);
            te.a aVar = new te.a(stVar.b(), stVar.b);
            aVar.c = null;
            boolean z = te.a.d;
            aVar.a = a2;
            a2.a.add(new sz.b(aVar.a(), r2));
            a2.execute(new Void[0]);
            return;
        }
        act.b().a(-1, false);
        finish();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = new sw(this, "0000000048121DEB");
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        sw swVar = this.b;
        List asList = Arrays.asList(a);
        tb.a((Object) this, "activity");
        sy syVar = this == null ? sw.a : this;
        if (swVar.c) {
            throw new IllegalStateException("Another login operation is already in progress.");
        }
        Iterable asList2 = asList == null ? swVar.e == null ? Arrays.asList(new String[0]) : swVar.e : asList;
        if (!(swVar.f.f() || !swVar.f.a((Iterable<String>) asList2))) {
            syVar.a(th.b, swVar.f);
            return;
        }
        so soVar = new so(this, swVar.d, swVar.b, sp.a.e.toString(), TextUtils.join(" ", asList2));
        soVar.a((tl) new sw.d(syVar));
        soVar.a((tl) new sw.e(swVar, (byte) 0));
        soVar.a((tl) new tl() {
            public final void a(sx sxVar) {
                boolean unused = sw.this.c = false;
            }

            public final void a(tm tmVar) {
                boolean unused = sw.this.c = false;
            }
        });
        swVar.c = true;
        new so.a(sp.a.d.buildUpon().appendQueryParameter("client_id", soVar.b).appendQueryParameter(BoxMetadata.FIELD_SCOPE, soVar.d).appendQueryParameter("display", tq.a(soVar.a).a().a().toString().toLowerCase(Locale.US)).appendQueryParameter("response_type", tj.d.CODE.toString().toLowerCase(Locale.US)).appendQueryParameter("locale", Locale.getDefault().toString()).appendQueryParameter(BoxConstants.KEY_REDIRECT_URL, soVar.c).build()).show();
    }
}
