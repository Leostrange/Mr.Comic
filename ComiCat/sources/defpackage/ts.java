package defpackage;

import android.os.AsyncTask;

/* renamed from: ts  reason: default package */
/* compiled from: TokenRequestAsync */
class ts extends AsyncTask<Void, Void, Void> {
    static final /* synthetic */ boolean b = (!ts.class.desiredAssertionStatus());
    final sq a = new sq();
    private sx c;
    private tm d;
    private final tr e;

    public ts(tr trVar) {
        this.e = trVar;
    }

    private Void a() {
        try {
            this.d = this.e.a();
            return null;
        } catch (sx e2) {
            this.c = e2;
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ void onPostExecute(Object obj) {
        super.onPostExecute((Void) obj);
        if (this.d != null) {
            this.a.a(this.d);
        } else if (this.c != null) {
            this.a.a(this.c);
        } else {
            this.a.a(new sx("An error occured on the client during the operation."));
        }
    }
}
