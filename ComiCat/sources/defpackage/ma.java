package defpackage;

/* renamed from: ma  reason: default package */
/* compiled from: HttpRequestFactory */
public final class ma {
    public final mf a;
    public final mb b;

    ma(mf mfVar, mb mbVar) {
        this.a = mfVar;
        this.b = mbVar;
    }

    public final lz a(String str, lr lrVar, ls lsVar) {
        lz lzVar = new lz(this.a);
        if (this.b != null) {
            this.b.a(lzVar);
        }
        lzVar.a(str);
        if (lrVar != null) {
            lzVar.a(lrVar);
        }
        if (lsVar != null) {
            lzVar.f = lsVar;
        }
        return lzVar;
    }
}
