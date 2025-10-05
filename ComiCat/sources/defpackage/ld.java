package defpackage;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: ld  reason: default package */
/* compiled from: MediaUploadErrorHandler */
class ld implements lx, mg {
    static final Logger a = Logger.getLogger(ld.class.getName());
    private final lc b;
    private final lx c;
    private final mg d;

    public ld(lc lcVar, lz lzVar) {
        this.b = (lc) ni.a(lcVar);
        this.c = lzVar.k;
        this.d = lzVar.j;
        lzVar.k = this;
        lzVar.j = this;
    }

    public final boolean a(lz lzVar, mc mcVar, boolean z) {
        boolean z2 = this.d != null && this.d.a(lzVar, mcVar, z);
        if (z2 && z && mcVar.c / 100 == 5) {
            try {
                this.b.a();
            } catch (IOException e) {
                a.log(Level.WARNING, "exception thrown while calling server callback", e);
            }
        }
        return z2;
    }

    public final boolean a(lz lzVar, boolean z) {
        boolean z2 = this.c != null && this.c.a(lzVar, z);
        if (z2) {
            try {
                this.b.a();
            } catch (IOException e) {
                a.log(Level.WARNING, "exception thrown while calling server callback", e);
            }
        }
        return z2;
    }
}
