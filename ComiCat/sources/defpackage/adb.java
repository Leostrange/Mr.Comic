package defpackage;

import android.os.AsyncTask;
import defpackage.acy;
import defpackage.aer;

/* renamed from: adb  reason: default package */
/* compiled from: DownloadTask */
public final class adb extends AsyncTask<aer.a, Integer, acy.a> {
    acy a;
    acv b;
    long c;
    long d;
    long e;
    String f = null;
    acw g = acw.b;
    acy.a h = acy.a.NONE;

    public adb(acv acv, acy acy) {
        this.a = acy;
        this.b = acv;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        acy.a aVar;
        adb adb;
        this.c = this.b.h.length();
        if (this.c > ((long) this.b.a.e)) {
            agz.a(this.b.h);
            this.c = 0;
        }
        if (this.c == ((long) this.b.a.e)) {
            aVar = acy.a.SUCCESS;
            adb = this;
        } else {
            this.e = System.currentTimeMillis();
            boolean a2 = this.b.b.a(this.b.a.b, this.b.h.getAbsolutePath(), new acy() {
                public final void a(int i, int i2) {
                    long j = 0;
                    adb.this.d += (long) i;
                    long ceil = (long) Math.ceil((double) ((System.currentTimeMillis() - adb.this.e) / 1000));
                    if (ceil != 0) {
                        j = adb.this.d / ceil;
                    }
                    adb.this.publishProgress(new Integer[]{Integer.valueOf((int) (adb.this.c + adb.this.d)), Integer.valueOf((int) j)});
                }

                public final void a(acw acw, String str) {
                    adb adb = adb.this;
                    if (str == null) {
                        str = "Network Error.";
                    }
                    adb.f = str;
                    adb.g = acw;
                    adb.h = acy.a.FAIL;
                    new StringBuilder("Server Error code: ").append(acw.a).append(", message: ").append(adb.f);
                }

                public final void a(acy.a aVar) {
                    adb.this.h = aVar;
                }

                public final boolean a() {
                    return adb.this.a.a();
                }
            });
            if (this.h == acy.a.NONE) {
                if (a2) {
                    aVar = acy.a.SUCCESS;
                    adb = this;
                } else {
                    aVar = acy.a.FAIL;
                    adb = this;
                }
            }
            return this.h;
        }
        adb.h = aVar;
        return this.h;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        acy.a aVar = (acy.a) obj;
        if (aVar == acy.a.FAIL) {
            this.a.a(this.g, this.f);
        }
        this.a.a(aVar);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        Integer[] numArr = (Integer[]) objArr;
        this.a.a(numArr[0].intValue(), numArr[1].intValue());
    }
}
