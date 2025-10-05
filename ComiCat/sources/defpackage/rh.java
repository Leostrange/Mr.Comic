package defpackage;

import java.util.Vector;

/* renamed from: rh  reason: default package */
/* compiled from: LocalIdentityRepository */
final class rh implements qv {
    private Vector a = new Vector();
    private qw b;

    rh(qw qwVar) {
        this.b = qwVar;
    }

    private synchronized void a(qt qtVar) {
        if (!this.a.contains(qtVar)) {
            byte[] a2 = qtVar.a();
            if (a2 != null) {
                int i = 0;
                while (true) {
                    if (i >= this.a.size()) {
                        this.a.addElement(qtVar);
                        break;
                    }
                    byte[] a3 = ((qt) this.a.elementAt(i)).a();
                    if (a3 != null && si.a(a2, a3)) {
                        if (qtVar.c() || !((qt) this.a.elementAt(i)).c()) {
                            break;
                        }
                        b(a3);
                    }
                    i++;
                }
            } else {
                this.a.addElement(qtVar);
            }
        }
    }

    public final synchronized Vector a() {
        Vector vector;
        Vector vector2 = new Vector();
        int size = this.a.size();
        if (size != 0) {
            for (int i = 0; i < size; i++) {
                qt qtVar = (qt) this.a.elementAt(i);
                byte[] a2 = qtVar.a();
                if (a2 != null) {
                    int i2 = i + 1;
                    while (true) {
                        if (i2 < size) {
                            qt qtVar2 = (qt) this.a.elementAt(i2);
                            byte[] a3 = qtVar2.a();
                            if (a3 != null && si.a(a2, a3) && qtVar.c() == qtVar2.c()) {
                                vector2.addElement(a2);
                                break;
                            }
                            i2++;
                        } else {
                            break;
                        }
                    }
                }
            }
            for (int i3 = 0; i3 < vector2.size(); i3++) {
                b((byte[]) vector2.elementAt(i3));
            }
        }
        vector = new Vector();
        for (int i4 = 0; i4 < this.a.size(); i4++) {
            vector.addElement(this.a.elementAt(i4));
        }
        return vector;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0015, code lost:
        r0 = false;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized boolean a(byte[] r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.lang.String r0 = "from remote:"
            qw r1 = r4.b     // Catch:{ qy -> 0x0014, all -> 0x0017 }
            rb r2 = defpackage.rb.a((defpackage.qw) r1, (byte[]) r5)     // Catch:{ qy -> 0x0014, all -> 0x0017 }
            qu r3 = new qu     // Catch:{ qy -> 0x0014, all -> 0x0017 }
            r3.<init>(r1, r0, r2)     // Catch:{ qy -> 0x0014, all -> 0x0017 }
            r4.a((defpackage.qt) r3)     // Catch:{ qy -> 0x0014, all -> 0x0017 }
            r0 = 1
        L_0x0012:
            monitor-exit(r4)
            return r0
        L_0x0014:
            r0 = move-exception
            r0 = 0
            goto L_0x0012
        L_0x0017:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rh.a(byte[]):boolean");
    }

    public final synchronized void b() {
        for (int i = 0; i < this.a.size(); i++) {
            ((qt) this.a.elementAt(i)).d();
        }
        this.a.removeAllElements();
    }

    public final synchronized boolean b(byte[] bArr) {
        boolean z;
        if (bArr != null) {
            int i = 0;
            while (true) {
                if (i >= this.a.size()) {
                    z = false;
                    break;
                }
                qt qtVar = (qt) this.a.elementAt(i);
                byte[] a2 = qtVar.a();
                if (a2 != null && si.a(bArr, a2)) {
                    this.a.removeElement(qtVar);
                    qtVar.d();
                    z = true;
                    break;
                }
                i++;
            }
        } else {
            z = false;
        }
        return z;
    }
}
