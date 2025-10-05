package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.util.SparseIntArray;
import java.util.List;
import meanlabs.comicat.R;

/* renamed from: acm  reason: default package */
/* compiled from: MarkMultipleComicsReadTask */
public final class acm extends AsyncTask<Void, String, Boolean> {
    ProgressDialog a;
    a b;
    SparseIntArray c;
    List<aeq> d = aei.a().b.f();
    int e;
    Activity f;

    /* renamed from: acm$a */
    /* compiled from: MarkMultipleComicsReadTask */
    public interface a {
        void a();
    }

    public acm(Activity activity, SparseIntArray sparseIntArray, a aVar) {
        this.b = aVar;
        this.f = activity;
        this.c = sparseIntArray;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        for (aeq next : this.d) {
            this.e++;
            publishProgress(new String[]{next.c});
            if (this.c.get(next.a) != 0) {
                if (!next.p()) {
                    next.b(true);
                }
            } else if (next.p()) {
                next.b(false);
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        Boolean bool = (Boolean) obj;
        this.a.dismiss();
        ael.a();
        agm.a(true);
        if (this.b != null) {
            a aVar = this.b;
            bool.booleanValue();
            aVar.a();
        }
    }

    /* access modifiers changed from: protected */
    public final void onPreExecute() {
        if (this.f != null) {
            String string = this.f.getString(R.string.processing);
            this.a = new ProgressDialog(this.f);
            this.a.setCancelable(false);
            this.a.setMessage(string);
            this.a.getWindow().setGravity(17);
            this.a.setProgressStyle(1);
            this.a.setIndeterminate(false);
            this.a.setMax(this.d.size());
            this.a.setProgress(0);
            this.a.setCanceledOnTouchOutside(false);
            ahf.a(this.a);
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        this.a.setMessage(((String[]) objArr)[0]);
        this.a.setProgress(this.e);
    }
}
