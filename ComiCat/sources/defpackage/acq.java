package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import meanlabs.comicat.R;

/* renamed from: acq  reason: default package */
/* compiled from: RestoreCatalogTask */
public final class acq extends AsyncTask<Void, String, Integer> {
    private Activity a;
    private ProgressDialog b = new ProgressDialog(this.a);

    public acq(Activity activity) {
        this.a = activity;
        this.b.setProgressStyle(1);
        this.b.setMessage(this.a.getText(R.string.loadCatalog));
        this.b.setTitle(R.string.loadCatalog);
        this.b.setIndeterminate(true);
        this.b.setCancelable(false);
        this.b.setCanceledOnTouchOutside(false);
        ahf.a(this.b);
        this.b.show();
    }

    /* access modifiers changed from: protected */
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return null;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        try {
            this.b.dismiss();
        } catch (Exception e) {
        }
        agm.a(true);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        this.b.setMessage(this.a.getString(R.string.processingItem, new Object[]{((String[]) objArr)[0]}));
    }
}
