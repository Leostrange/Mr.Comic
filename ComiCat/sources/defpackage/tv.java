package defpackage;

import android.graphics.Paint;
import com.radaee.pdf.Document;
import com.radaee.pdf.Page;

/* renamed from: tv  reason: default package */
/* compiled from: VFinder */
public final class tv {
    String a = null;
    boolean b = false;
    boolean c = false;
    int d = -1;
    int e = -1;
    int f = 0;
    Page g = null;
    Document h = null;
    Page.a i = null;
    int j = 0;
    boolean k = true;
    private boolean l = false;
    private boolean m = false;
    private Paint n = new Paint();
    private Paint o = new Paint();

    protected tv() {
        this.n.setARGB(64, 0, 0, 255);
        this.n.setStyle(Paint.Style.FILL);
        this.o.setARGB(64, 64, 64, 64);
        this.o.setStyle(Paint.Style.FILL);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a() {
        if (this.m) {
            notify();
        } else {
            this.l = true;
        }
    }
}
