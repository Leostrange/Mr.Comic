package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import java.util.List;
import meanlabs.comicat.R;

/* renamed from: ack  reason: default package */
/* compiled from: DeleteMultipleComicTask */
public final class ack extends AsyncTask<Void, String, Boolean> {
    ProgressDialog a;
    a b;
    List<aeq> c;
    int d;
    int e = 0;
    Activity f;

    /* renamed from: ack$a */
    /* compiled from: DeleteMultipleComicTask */
    public interface a {
        void a(int i);
    }

    public ack(Activity activity, List<aeq> list, a aVar) {
        this.b = aVar;
        this.f = activity;
        this.c = list;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        for (aeq next : this.c) {
            this.d++;
            publishProgress(new String[]{next.c});
            if (agm.a(next, true)) {
                this.e++;
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
            aVar.a(this.e);
        }
    }

    /* access modifiers changed from: protected */
    public final void onPreExecute() {
        if (this.f != null) {
            String string = this.f.getString(R.string.deletingComicsMsg);
            this.a = new ProgressDialog(this.f);
            this.a.setCancelable(false);
            this.a.setMessage(string);
            this.a.getWindow().setGravity(17);
            this.a.setProgressStyle(1);
            this.a.setIndeterminate(false);
            this.a.setMax(this.c.size());
            this.a.setProgress(0);
            this.a.setCanceledOnTouchOutside(false);
            ahf.a(this.a);
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        this.a.setMessage(((String[]) objArr)[0]);
        this.a.setProgress(this.d);
    }
}
