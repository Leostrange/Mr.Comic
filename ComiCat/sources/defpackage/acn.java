package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import meanlabs.comicat.R;

/* renamed from: acn  reason: default package */
/* compiled from: MoveMultipleComicsTask */
public final class acn extends AsyncTask<Void, String, Boolean> {
    ProgressDialog a;
    a b;
    File c;
    File d;
    Collection<File> e = new ArrayList();
    ArrayList<File> f = new ArrayList<>();
    int g = 0;
    Activity h;

    /* renamed from: acn$a */
    /* compiled from: MoveMultipleComicsTask */
    public interface a {
        void a(boolean z);
    }

    public acn(Activity activity, String str, String str2, a aVar) {
        this.b = aVar;
        this.h = activity;
        this.c = new File(str);
        this.d = new File(str2);
        for (acs h2 : act.b().c) {
            File file = new File(h2.h());
            if (file.exists() && file.isDirectory()) {
                if (!this.f.contains(file)) {
                    this.f.add(file);
                }
                this.e.addAll(ahk.a(file));
            }
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        aeq b2;
        for (File next : this.e) {
            this.g++;
            publishProgress(new String[]{next.getName()});
            File file = new File(next.getAbsolutePath().replace(this.c.getAbsolutePath(), this.d.getAbsolutePath()));
            if (agp.a(next, file) && (b2 = aei.a().b.b(next.getAbsolutePath())) != null) {
                b2.d = file.getAbsolutePath();
                aek aek = aei.a().b;
                aek.d(b2);
            }
        }
        Iterator<File> it = this.f.iterator();
        while (it.hasNext()) {
            File next2 = it.next();
            if (next2.exists() && ahk.a(next2).isEmpty()) {
                ahk.b(next2);
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
            this.b.a(bool.booleanValue());
        }
    }

    /* access modifiers changed from: protected */
    public final void onPreExecute() {
        if (this.h != null) {
            String string = this.h.getString(R.string.deletingComicsMsg);
            this.a = new ProgressDialog(this.h);
            this.a.setCancelable(false);
            this.a.setMessage(string);
            this.a.getWindow().setGravity(17);
            this.a.setProgressStyle(1);
            this.a.setIndeterminate(false);
            this.a.setMax(this.e.size());
            this.a.setProgress(0);
            this.a.setCanceledOnTouchOutside(false);
            ahf.a(this.a);
            this.a.show();
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        this.a.setMessage(((String[]) objArr)[0]);
        this.a.setProgress(this.g);
    }
}
