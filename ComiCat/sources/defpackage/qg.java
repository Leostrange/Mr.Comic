package defpackage;

import com.box.androidsdk.content.auth.OAuthActivity;
import java.util.Enumeration;
import java.util.Hashtable;

/* renamed from: qg  reason: default package */
/* compiled from: ChannelSession */
class qg extends qb {
    private static byte[] v = si.a(OAuthActivity.EXTRA_SESSION);
    protected String A = "vt100";
    protected int B = 80;
    protected int C = 24;
    protected int D = 640;
    protected int E = 480;
    protected byte[] F = null;
    protected boolean w = false;
    protected boolean x = false;
    protected Hashtable y = null;
    protected boolean z = false;

    qg() {
        this.d = v;
        this.j = new qs();
    }

    private static byte[] a(Object obj) {
        return obj instanceof String ? si.a((String) obj) : (byte[]) obj;
    }

    /* access modifiers changed from: protected */
    public final void m() {
        ry h = h();
        if (this.w) {
            new rq().a(h, this);
        }
        if (this.x) {
            new rx().a(h, this);
        }
        if (this.z) {
            rt rtVar = new rt();
            rtVar.b = this.A;
            rt rtVar2 = rtVar;
            int i = this.B;
            int i2 = this.C;
            int i3 = this.D;
            int i4 = this.E;
            rtVar2.c = i;
            rtVar2.d = i2;
            rtVar2.e = i3;
            rtVar2.f = i4;
            if (this.F != null) {
                rtVar.g = this.F;
            }
            rtVar.a(h, this);
        }
        if (this.y != null) {
            Enumeration keys = this.y.keys();
            while (keys.hasMoreElements()) {
                Object nextElement = keys.nextElement();
                Object obj = this.y.get(nextElement);
                rr rrVar = new rr();
                rr rrVar2 = rrVar;
                byte[] a = a(nextElement);
                byte[] a2 = a(obj);
                rrVar2.b = a;
                rrVar2.c = a2;
                rrVar.a(h, this);
            }
        }
    }

    public void run() {
        qa qaVar = new qa(this.i);
        rl rlVar = new rl(qaVar);
        while (true) {
            try {
                if (g() && this.k != null && this.j != null && this.j.a != null) {
                    int read = this.j.a.read(qaVar.b, 14, (qaVar.b.length - 14) - 84);
                    if (read != 0) {
                        if (read != -1) {
                            if (this.n) {
                                break;
                            }
                            rlVar.a();
                            qaVar.a((byte) 94);
                            qaVar.a(this.c);
                            qaVar.a(read);
                            qaVar.b(read);
                            h().a(rlVar, (qb) this, read);
                        } else {
                            e();
                            break;
                        }
                    }
                } else {
                    break;
                }
            } catch (Exception e) {
            }
        }
        Thread thread = this.k;
        if (thread != null) {
            synchronized (thread) {
                thread.notifyAll();
            }
        }
        this.k = null;
    }
}
