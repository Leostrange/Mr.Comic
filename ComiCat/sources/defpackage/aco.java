package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.AsyncTask;
import defpackage.acy;
import java.io.File;
import meanlabs.comicat.R;

/* renamed from: aco  reason: default package */
/* compiled from: OpenComicTask */
public final class aco extends AsyncTask<Void, String, afa> {
    aeq a;
    ProgressDialog b;
    a c;
    File d;
    boolean e;
    boolean f = false;
    String g;
    Activity h = null;
    afa i = null;
    long j = 0;

    /* renamed from: aco$a */
    /* compiled from: OpenComicTask */
    public interface a {
        void a(afa afa, String str, boolean z);

        void e();
    }

    public aco(Activity activity, aeq aeq, boolean z, a aVar) {
        long j2 = 0;
        adg adg = null;
        this.a = aeq;
        this.c = aVar;
        this.h = activity;
        this.g = this.a.c;
        this.e = z;
        adg = this.a.d() ? adg.a(this.a.f) : adg;
        this.j = (long) ((int) (adg != null ? adg.b : j2));
    }

    /* access modifiers changed from: private */
    public String a(int i2, int i3) {
        if (this.h == null) {
            return "";
        }
        Activity activity = this.h;
        Object[] objArr = new Object[1];
        objArr[0] = this.g != null ? this.g : "";
        String string = activity.getString(i2, objArr);
        return i3 != 0 ? string + " (" + String.valueOf(i3) + "%)" : string;
    }

    private void a() {
        if (this.h != null) {
            if (this.b != null && this.b.isShowing()) {
                this.b.dismiss();
            }
            this.b = ProgressDialog.show(this.h, "", a((int) R.string.openComicTaskMsg, 0), true, true);
            this.b.getWindow().setGravity(17);
            if (this.a.d() && !this.a.g()) {
                this.b.setCanceledOnTouchOutside(false);
                this.b.setOnCancelListener(new DialogInterface.OnCancelListener() {
                    public final void onCancel(DialogInterface dialogInterface) {
                        aco.this.b = null;
                        aco.a(aco.this);
                    }
                });
            }
            ahf.a(this.b);
        }
    }

    static /* synthetic */ void a(aco aco) {
        try {
            aco.cancel(true);
            if (aco.c != null) {
                aco.c.e();
            }
            aco.cancel(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public void onPostExecute(afa afa) {
        if (this.b != null && this.b.isShowing()) {
            this.b.dismiss();
        }
        if (this.f) {
            agm.a(false);
        }
        if (this.c != null) {
            this.c.a(afa, this.a.d, this.e);
        } else {
            this.i = afa;
        }
    }

    public final void a(Activity activity, a aVar) {
        this.h = activity;
        this.c = aVar;
        if (this.i != null) {
            onPostExecute(this.i);
        } else {
            a();
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        if (this.a.d() && !this.a.g()) {
            publishProgress(new String[]{a((int) R.string.cachingComic, 0)});
        }
        this.d = agp.a(this.a, false, new acy() {
            private long b = 0;

            public final void a(int i, int i2) {
                long j = 0;
                this.b += (long) i;
                if (aco.this.j > 0) {
                    j = (this.b * 100) / aco.this.j;
                }
                aco.this.publishProgress(new String[]{aco.this.a((int) R.string.cachingComic, (int) j)});
            }

            public final void a(acw acw, String str) {
            }

            public final void a(acy.a aVar) {
            }

            public final boolean a() {
                return true;
            }
        });
        publishProgress(new String[]{a((int) R.string.openComicTaskMsg, 0)});
        afa afa = this.d != null ? new afa(this.d, true) : new afa();
        if (afa.c() && this.a.d() && !ahd.c(this.a.a)) {
            this.a.b = afa.d();
            agm.a(afa, this.a.a);
            aek aek = aei.a().b;
            aek.f(this.a);
            aem b2 = ael.b(this.a);
            if (b2 != null) {
                agm.a(b2, 0, 0);
            }
            this.f = true;
        }
        return afa;
    }

    /* access modifiers changed from: protected */
    public final void onPreExecute() {
        a();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        String[] strArr = (String[]) objArr;
        if (this.b != null && this.b.isShowing()) {
            this.b.setMessage(strArr[0]);
        }
    }
}
