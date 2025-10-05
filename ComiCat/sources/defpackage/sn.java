package defpackage;

import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: sn  reason: default package */
/* compiled from: ApiRequestAsync */
public class sn<ResponseType> extends AsyncTask<Void, Long, Runnable> {
    static final /* synthetic */ boolean b = (!sn.class.desiredAssertionStatus());
    public final ArrayList<a<ResponseType>> a = new ArrayList<>();
    private final ArrayList<Object> c = new ArrayList<>();
    private final sm<ResponseType> d;

    /* renamed from: sn$a */
    /* compiled from: ApiRequestAsync */
    public interface a<ResponseType> {
        void a(ResponseType responsetype);

        void a(tf tfVar);
    }

    /* renamed from: sn$b */
    /* compiled from: ApiRequestAsync */
    class b implements Runnable {
        static final /* synthetic */ boolean a = (!sn.class.desiredAssertionStatus());
        private final ResponseType c;

        public b(ResponseType responsetype) {
            if (a || responsetype != null) {
                this.c = responsetype;
                return;
            }
            throw new AssertionError();
        }

        public final void run() {
            Iterator it = sn.this.a.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a(this.c);
            }
        }
    }

    /* renamed from: sn$c */
    /* compiled from: ApiRequestAsync */
    class c implements Runnable {
        static final /* synthetic */ boolean a = (!sn.class.desiredAssertionStatus());
        private final tf c;

        public c(tf tfVar) {
            this.c = tfVar;
        }

        public final void run() {
            Iterator it = sn.this.a.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a(this.c);
            }
        }
    }

    private sn(sm<ResponseType> smVar) {
        if (b || smVar != null) {
            this.d = smVar;
            return;
        }
        throw new AssertionError();
    }

    private Runnable a() {
        try {
            return new b(this.d.a());
        } catch (tf e) {
            return new c(e);
        }
    }

    public static <T> sn<T> a(sm<T> smVar) {
        return new sn<>(smVar);
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ void onPostExecute(Object obj) {
        Runnable runnable = (Runnable) obj;
        super.onPostExecute(runnable);
        runnable.run();
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ void onProgressUpdate(Object[] objArr) {
        Iterator<Object> it = this.c.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }
}
