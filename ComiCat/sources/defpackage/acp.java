package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import java.io.File;
import java.util.List;
import meanlabs.comicat.R;

/* renamed from: acp  reason: default package */
/* compiled from: RecreateThumbnailsTask */
public final class acp extends AsyncTask<Void, String, Integer> {
    int a = 0;
    List<aeq> b;
    List<aem> c;
    private Activity d;
    private ProgressDialog e;

    public acp(Activity activity, List<aeq> list, List<aem> list2) {
        this.d = activity;
        this.b = list;
        this.c = list2;
        this.e = new ProgressDialog(this.d);
        this.e.setProgressStyle(1);
        this.e.setMessage(this.d.getText(R.string.processing));
        this.e.setTitle(R.string.recreateThumbnails);
        this.e.setProgress(0);
        this.e.setMax(this.b.size() + this.c.size());
        this.e.setCancelable(false);
        this.e.setCanceledOnTouchOutside(false);
        ahf.a(this.e);
        this.e.show();
    }

    private Integer a() {
        for (aeq next : this.b) {
            if ((!next.d() || next.g()) && !next.h.c(64)) {
                try {
                    afa afa = new afa(new File(next.d), false);
                    if (afa.b()) {
                        agm.a(afa, next.a);
                        afa.a();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            publishProgress(new String[]{next.c});
            this.a++;
        }
        for (aem next2 : this.c) {
            ahd.a(next2);
            publishProgress(new String[]{next2.b});
            this.a++;
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        try {
            this.e.dismiss();
        } catch (Exception e2) {
        }
        agm.a(false);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        this.e.setProgress(this.a);
        this.e.setMessage(this.d.getString(R.string.processingItem, new Object[]{((String[]) objArr)[0]}));
    }
}
