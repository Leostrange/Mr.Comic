package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import defpackage.adj;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ThumbnailService;
import meanlabs.comicreader.cloud.ActiveDownloads;

/* renamed from: aci  reason: default package */
/* compiled from: CloudSyncTask */
public final class aci extends AsyncTask<Void, String, Void> implements adj.a {
    static boolean k = false;
    long a = 0;
    int b = 0;
    List<acs> c;
    List<a> d;
    Activity e;
    ProgressDialog f;
    int g = 0;
    int h = 100;
    int i = 0;
    boolean j = false;

    /* renamed from: aci$a */
    /* compiled from: CloudSyncTask */
    class a {
        acs a;
        boolean b;
        int c = 0;
        int d = 0;
        int e = 0;

        a() {
        }
    }

    public aci(Activity activity, List<acs> list) {
        this.e = activity;
        this.c = list;
        this.d = new ArrayList(this.c.size());
        this.h = 100 / this.c.size();
        aek aek = aei.a().b;
        this.b = aek.e();
    }

    public static boolean a() {
        return k;
    }

    public final void a(String str, int i2) {
        this.i = (this.g * this.h) + ((this.h * i2) / 100);
        acs acs = this.c.get(this.g);
        publishProgress(new String[]{String.valueOf(acs.a()), acs.c(), str});
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        for (acs next : this.c) {
            if (next != null && next.f()) {
                publishProgress(new String[]{String.valueOf(next.a()), next.k()});
                acu acu = new acu(next);
                acu.n = this;
                a aVar = new a();
                aVar.a = next;
                boolean a2 = acu.a();
                this.j = a2;
                aVar.b = a2;
                aVar.c = acu.b();
                aVar.d = acu.c();
                aVar.e = acu.d();
                this.d.add(aVar);
                this.a = ((long) aVar.c) + this.a;
                publishProgress(new String[]{String.valueOf(next.a())});
            }
            this.g++;
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        try {
            if (this.f != null) {
                this.f.setProgress(100);
                this.f.dismiss();
            }
            if (this.a > 0) {
                aei.a().d.a("last-synced-id", String.valueOf(this.b));
            }
            ael.a();
            agm.a(true);
            ThumbnailService.a().a(true);
            StringBuilder sb = new StringBuilder();
            for (a next : this.d) {
                sb.append(this.e.getString(R.string.cloudSyncStatus, new Object[]{next.a.k(), this.e.getString(next.b ? R.string.success : R.string.fail), Integer.valueOf(next.c), Integer.valueOf(next.e), Integer.valueOf(next.d)}));
            }
            new AlertDialog.Builder(this.e).setMessage(sb.toString()).setCancelable(true).setNegativeButton(R.string.close, (DialogInterface.OnClickListener) null).setTitle(R.string.cloudSync).setNeutralButton(R.string.activeDownloads, new DialogInterface.OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    aci.this.e.startActivity(new Intent(aci.this.e, ActiveDownloads.class));
                    dialogInterface.dismiss();
                }
            }).create().show();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        k = false;
    }

    /* access modifiers changed from: protected */
    public final void onPreExecute() {
        k = true;
        if (this.e != null) {
            this.f = new ProgressDialog(this.e);
            this.f.setTitle(R.string.cloudSync);
            this.f.setCancelable(false);
            this.f.setMessage(this.e.getString(R.string.cloudSync));
            this.f.getWindow().setGravity(17);
            this.f.setProgressStyle(1);
            this.f.setIndeterminate(false);
            this.f.setMax(100);
            this.f.setProgress(0);
            this.f.setCanceledOnTouchOutside(false);
            ahf.a(this.f);
            this.f.show();
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        String[] strArr = (String[]) objArr;
        switch (strArr.length) {
            case 1:
                act.b().b(Integer.parseInt(strArr[0]), this.j);
                return;
            case 2:
                act.b().e(Integer.parseInt(strArr[0]));
                if (this.f != null) {
                    this.f.setTitle(this.e.getString(R.string.cloudSync) + ": " + strArr[1]);
                    return;
                }
                return;
            case 3:
                new StringBuilder("Progress is: ").append(this.i);
                if (this.f != null) {
                    this.f.setProgress(this.i);
                    this.f.setMessage(strArr[2]);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
