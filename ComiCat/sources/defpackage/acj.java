package defpackage;

import android.os.AsyncTask;
import android.support.v4.app.FragmentTransaction;
import java.io.File;
import java.util.LinkedList;
import java.util.Queue;
import meanlabs.comicreader.ThumbnailService;
import meanlabs.comicreader.utils.ConnectivityReceiver;

/* renamed from: acj  reason: default package */
/* compiled from: CreateThumbnailTask */
public final class acj extends AsyncTask<Void, Void, Void> {
    Queue<Integer> a;
    Queue<Integer> b;
    boolean c;
    int d;

    public acj() {
        this.c = false;
        this.d = 0;
        this.c = true;
    }

    private Void a() {
        boolean z;
        if (this.c) {
            this.a = new LinkedList();
            this.b = new LinkedList();
            boolean c2 = aei.a().d.c("create-thumbnails-in-background");
            boolean equals = "prefCreateThumbsInBackground".equals(aei.a().d.b("create-cloud-thumbnails"));
            boolean equals2 = "prefCreateThumbsInBackground".equals(aei.a().d.b("create-smb-sthumbnails"));
            boolean z2 = equals || equals2;
            boolean z3 = act.b().c.size() != 0;
            if (c2 || (z2 && z3)) {
                for (aeq next : aei.a().b.f()) {
                    new StringBuilder("Checking Comic: ").append(next.d);
                    boolean d2 = next.d();
                    if (!d2 || !z2) {
                        z = c2;
                    } else {
                        boolean z4 = act.b().a(next.g).b() == "smb";
                        z = (z4 && equals2) || (!z4 && equals);
                    }
                    if (z && !next.h.c(FragmentTransaction.TRANSIT_EXIT_MASK) && !ahd.c(next.a)) {
                        new StringBuilder("Adding Comic to processing list: ").append(next.d);
                        if (d2) {
                            this.b.add(Integer.valueOf(next.a));
                        } else {
                            this.a.add(Integer.valueOf(next.a));
                        }
                    }
                }
            }
        }
        do {
            try {
                int b2 = b();
                if (b2 == -1) {
                    break;
                }
                aeq a2 = aei.a().b.a(b2);
                if (a2 != null) {
                    new StringBuilder("Processing Comic: ").append(b2).append(", ").append(a2.d);
                    if (!ahd.c(b2)) {
                        if (isCancelled()) {
                            break;
                        }
                        File a3 = agp.a(a2, true, (acy) null);
                        if (a3 == null) {
                            new StringBuilder("Could not get file ref for: ").append(a2.d).append(", skipping.");
                        } else {
                            afa afa = new afa(a3, true);
                            if (afa.c()) {
                                new StringBuilder("Got the comic: ").append(a2.d).append(", creating thumbnail.");
                                a2.b = afa.d();
                                aek aek = aei.a().b;
                                aek.f(a2);
                                if (agm.a(afa, b2)) {
                                    aem b3 = ael.b(a2);
                                    if (b3 != null) {
                                        agm.a(b3, 0, 0);
                                    }
                                    this.d++;
                                    publishProgress(new Void[]{null});
                                }
                            } else {
                                a2.h.a(a2.h.c(FragmentTransaction.TRANSIT_ENTER_MASK) ? 8192 : 4096);
                                aek aek2 = aei.a().b;
                                aek.b(a2);
                            }
                            agz.a(a3);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } while (!isCancelled());
        return null;
    }

    private int b() {
        Integer num;
        Integer num2 = -1;
        try {
            if (!this.a.isEmpty()) {
                num2 = this.a.remove();
            }
            num = (num2.intValue() == -1 && !this.b.isEmpty() && ConnectivityReceiver.a().c() == ConnectivityReceiver.a.a) ? this.b.remove() : num2;
        } catch (Exception e) {
            Exception exc = e;
            num = num2;
            exc.printStackTrace();
        }
        return num.intValue();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        agm.a(false);
        ThumbnailService a2 = ThumbnailService.a();
        boolean isCancelled = isCancelled();
        a2.b.lock();
        if (this == a2.a) {
            a2.a = null;
            if (isCancelled) {
                a2.a(false);
            }
        }
        a2.b.unlock();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        if ((this.d & 1) == 0) {
            agm.a(false);
        }
    }
}
