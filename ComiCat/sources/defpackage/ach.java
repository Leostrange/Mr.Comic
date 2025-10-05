package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.List;
import meanlabs.comicat.R;

/* renamed from: ach  reason: default package */
/* compiled from: BackupCatalogTask */
public final class ach extends AsyncTask<Void, String, Integer> {
    private Activity a;
    private ProgressDialog b = new ProgressDialog(this.a);
    private String c;

    public ach(Activity activity, String str) {
        this.a = activity;
        this.c = str;
        this.b.setProgressStyle(1);
        this.b.setMessage(this.a.getText(R.string.processing));
        this.b.setTitle(R.string.backupCatalog);
        this.b.setIndeterminate(true);
        this.b.setCancelable(false);
        this.b.setCanceledOnTouchOutside(false);
        ahf.a(this.b);
        this.b.show();
    }

    private Integer a() {
        ahg ahg = new ahg(this.c);
        try {
            aei a2 = aei.a();
            ahg.a("database", new ByteArrayInputStream(a2.c()));
            ahg.a("comic_thumbs");
            List<aeq> f = a2.b.f();
            for (int i = 0; i < f.size(); i++) {
                aeq aeq = f.get(i);
                if (aeq.d() && ahd.c(aeq.a)) {
                    String b2 = ahd.b(aeq.a, true);
                    String b3 = ahd.b(aeq.a, false);
                    ahg.a(new File(b2));
                    ahg.a(new File(b3));
                }
            }
            ahg.a("Folder_thumbs");
            List<aem> e = a2.c.e();
            for (int i2 = 0; i2 < e.size(); i2++) {
                aem aem = e.get(i2);
                if (aem.d() && ahd.b(aem.a)) {
                    String d = ahd.d(aem.a, true);
                    String d2 = ahd.d(aem.a, false);
                    ahg.a(new File(d));
                    ahg.a(new File(d2));
                }
            }
            ahg.a();
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        try {
            this.b.dismiss();
        } catch (Exception e) {
        }
    }

    /* access modifiers changed from: protected */
    public final /* bridge */ /* synthetic */ void onProgressUpdate(Object[] objArr) {
    }
}
