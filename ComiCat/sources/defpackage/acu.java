package defpackage;

import android.util.Log;
import defpackage.agm;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.cloud.DownloaderService;

/* renamed from: acu  reason: default package */
/* compiled from: CloudSyncEngine */
public final class acu extends adj {
    boolean a;
    boolean b;
    boolean c;
    boolean d;
    boolean e;
    acs f;
    String g;
    int h = 0;
    List<a> i = new ArrayList();
    List<a> j = new ArrayList();
    List<aeq> k = new ArrayList();
    String l;
    ArrayList<aem> m = new ArrayList<>();

    /* renamed from: acu$a */
    /* compiled from: CloudSyncEngine */
    class a {
        adc a;
        adg b;
        int c = 0;

        public a(adc adc) {
            this.a = adc;
            this.b = new adg(adc);
        }
    }

    public acu(acs acs) {
        boolean z = false;
        this.f = acs;
        this.g = acs.h();
        aeu aeu = aei.a().d;
        this.l = aeu.b("limit-cloud-scan-to");
        this.e = aeu.c("remove-local-copies");
        String b2 = aeu.b("cloud-include-secondry-formats");
        this.a = b2.equals("prefConditionallyInclude");
        this.b = b2.equals("prefAlwaysInclude");
        this.d = this.l.length() > 0 ? true : z;
        if (this.d) {
            this.l = File.separator + this.l;
        }
        if (this.a && (!this.f.l() || this.d)) {
            this.b = true;
        }
        this.c = this.f.n();
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x00ed  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(defpackage.adc r12, boolean r13) {
        /*
            r11 = this;
            r10 = -1
            r2 = 1
            r3 = 0
            acs r0 = r11.f
            java.util.List r0 = r0.a((defpackage.adc) r12)
            if (r0 == 0) goto L_0x0127
            int r1 = r0.size()
            if (r1 <= 0) goto L_0x0127
            java.util.Iterator r4 = r0.iterator()
        L_0x0015:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x0127
            java.lang.Object r0 = r4.next()
            adc r0 = (defpackage.adc) r0
            boolean r1 = r0.e()
            if (r1 == 0) goto L_0x0039
            if (r13 == 0) goto L_0x0035
            java.lang.String r1 = r0.b()
            java.lang.String r5 = r11.l
            boolean r1 = defpackage.aib.a((java.lang.CharSequence) r1, (java.lang.CharSequence) r5)
            if (r1 == 0) goto L_0x0039
        L_0x0035:
            r11.a(r0, r3)
            goto L_0x0015
        L_0x0039:
            if (r13 != 0) goto L_0x0015
            boolean r1 = r0.d()
            if (r1 == 0) goto L_0x0128
            java.lang.String r5 = r0.b()
            java.io.File r1 = new java.io.File
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = r11.g
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.StringBuilder r6 = r6.append(r5)
            java.lang.String r6 = r6.toString()
            r1.<init>(r6)
            boolean r6 = r1.exists()
            if (r6 == 0) goto L_0x0072
            long r6 = r1.length()
            long r8 = r0.f()
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 == 0) goto L_0x0072
            defpackage.agz.a((java.io.File) r1)
        L_0x0072:
            java.lang.String r1 = r0.a()
            java.lang.String r1 = r1.toLowerCase()
            java.lang.String r6 = defpackage.agv.a((java.lang.String) r1)
            boolean r1 = r11.b
            if (r1 == 0) goto L_0x011c
            java.lang.String[] r1 = defpackage.afa.l()
        L_0x0086:
            int r1 = defpackage.agv.a((java.lang.String[]) r1, (java.lang.String) r6)
            if (r1 == r10) goto L_0x0122
            r1 = r2
        L_0x008d:
            if (r1 != 0) goto L_0x00a9
            boolean r1 = r11.b
            if (r1 != 0) goto L_0x0125
            boolean r1 = r11.a
            if (r1 == 0) goto L_0x0125
            java.lang.String r1 = "comic"
            boolean r1 = defpackage.aib.a((java.lang.CharSequence) r5, (java.lang.CharSequence) r1)
            if (r1 == 0) goto L_0x0125
            java.lang.String[] r1 = defpackage.afa.k()
            int r1 = defpackage.agv.a((java.lang.String[]) r1, (java.lang.String) r6)
            if (r1 == r10) goto L_0x0125
        L_0x00a9:
            r1 = r2
        L_0x00aa:
            if (r1 == 0) goto L_0x0128
            java.util.List<acu$a> r1 = r11.i
            acu$a r5 = new acu$a
            r5.<init>(r0)
            r1.add(r5)
            r0 = r2
        L_0x00b7:
            if (r0 == 0) goto L_0x0015
            java.util.ArrayList<aem> r0 = r11.m
            int r0 = r0.size()
            if (r0 == 0) goto L_0x00dd
            java.util.ArrayList<aem> r0 = r11.m
            java.util.ArrayList<aem> r1 = r11.m
            int r1 = r1.size()
            int r1 = r1 + -1
            java.lang.Object r0 = r0.get(r1)
            aem r0 = (defpackage.aem) r0
            java.lang.String r0 = r0.j
            java.lang.String r1 = r12.b()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0015
        L_0x00dd:
            java.lang.String r0 = r12.b()
            aem r0 = defpackage.aem.a((java.lang.String) r0)
            java.lang.String r1 = r0.b
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0107
            java.lang.String r1 = r12.a()
            java.lang.String r1 = r1.trim()
            r0.b = r1
            java.lang.String r1 = r0.b
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0107
            acs r1 = r11.f
            java.lang.String r1 = r1.c()
            r0.b = r1
        L_0x0107:
            aet r1 = r0.f
            r5 = 2
            r1.a(r5, r2)
            acs r1 = r11.f
            int r1 = r1.a()
            r0.c = r1
            java.util.ArrayList<aem> r1 = r11.m
            r1.add(r0)
            goto L_0x0015
        L_0x011c:
            java.lang.String[] r1 = defpackage.afa.j()
            goto L_0x0086
        L_0x0122:
            r1 = r3
            goto L_0x008d
        L_0x0125:
            r1 = r3
            goto L_0x00aa
        L_0x0127:
            return
        L_0x0128:
            r0 = r3
            goto L_0x00b7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.acu.a(adc, boolean):void");
    }

    private void e() {
        boolean c2 = aei.a().d.c("maintain_download_history");
        int i2 = this.f.m().equals("prefAddAsPaused") ? 1 : 0;
        aep aep = aei.a().h;
        for (a next : this.j) {
            String c3 = next.a.c();
            int a2 = this.f.a();
            if (!((c2 && aep.c(c3, a2, 1)) || aep.c(c3, a2, 2))) {
                if (!(aei.a().f.a(next.a.c()) != null)) {
                    DownloaderService.a().a(c3, a2, next.a.b(), (int) next.a.f(), next.a.g(), next.c, i2);
                }
            }
        }
    }

    public final boolean a() {
        File file;
        int i2;
        boolean z;
        boolean z2;
        boolean z3 = false;
        this.n.a(ComicReaderApp.a().getString(R.string.connectingToService), 0);
        try {
            adc j2 = this.f.j();
            if (j2 != null) {
                this.n.a(ComicReaderApp.a().getString(R.string.scanningFiles), 20);
                a(j2, this.d && this.f.l());
                this.n.a(ComicReaderApp.a().getString(R.string.processingFiles), 80);
                aek aek = aei.a().b;
                ArrayList arrayList = new ArrayList();
                List<aeq> a2 = ael.a(this.f.a());
                String h2 = this.f.h();
                ArrayList arrayList2 = new ArrayList();
                for (a next : this.i) {
                    String b2 = agp.b(h2, next.a.b());
                    for (aeq next2 : aek.f()) {
                        if (b2.equalsIgnoreCase(next2.d)) {
                            boolean z4 = next2.g != this.f.a();
                            boolean z5 = !next2.d() || next2.f.length() == 0;
                            if (z4 || z5) {
                                next2.g = this.f.a();
                                next2.h.a(8);
                                next2.h.a(16);
                                next2.e = next.a.b();
                                next2.f = next.b.toString();
                                aek.e(next2);
                                if (z4) {
                                    arrayList2.add(next);
                                }
                            }
                        }
                    }
                }
                this.i.removeAll(arrayList2);
                for (aeq next3 : a2) {
                    if (next3.d() || this.e) {
                        Iterator<a> it = this.i.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next().b.toString().equalsIgnoreCase(next3.f)) {
                                    z2 = true;
                                    break;
                                }
                            } else {
                                z2 = false;
                                break;
                            }
                        }
                        if (!z2) {
                            this.k.add(next3);
                        }
                    }
                }
                for (a next4 : this.i) {
                    Iterator<aeq> it2 = a2.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z = true;
                            break;
                        }
                        aeq next5 = it2.next();
                        if (next4.b.toString().equalsIgnoreCase(next5.f)) {
                            if (!next5.e.equalsIgnoreCase(next4.a.b())) {
                                next5.e = next4.a.b();
                                next5.c = afa.a(next4.a.a());
                                if (next5.g()) {
                                    File file2 = new File(next5.d);
                                    String b3 = agp.b(this.f.h(), next5.e);
                                    File file3 = new File(b3);
                                    file3.getParentFile().mkdirs();
                                    if (file2.renameTo(file3)) {
                                        next5.d = b3;
                                    }
                                } else {
                                    next5.d = next5.e;
                                }
                                aek.e(next5);
                            }
                            z = false;
                        }
                    }
                    if (z) {
                        arrayList.add(next4);
                    }
                }
                this.n.a(ComicReaderApp.a().getString(R.string.processingFiles), 50);
                Iterator it3 = arrayList.iterator();
                int i3 = 0;
                while (it3.hasNext()) {
                    a aVar = (a) it3.next();
                    int i4 = agm.c.b;
                    try {
                        this.n.a(ComicReaderApp.a().getString(R.string.importingComic, new Object[]{aVar.a.a()}), ((i3 * 40) / arrayList.size()) + 50);
                        File file4 = new File(agp.b(h2, aVar.a.b()));
                        if (file4.exists()) {
                            i2 = agm.a(file4, aVar.a.a(), this.f.a(), aVar.a).a;
                        } else {
                            if (this.c) {
                                adc adc = aVar.a;
                                file = adh.a(adc.c(), adc.b(), adc.f(), this.f.a, true, (acy) null);
                            } else {
                                file = null;
                            }
                            agm.a a3 = agm.a(file, aVar.a.a(), this.f.a(), aVar.a);
                            if (file != null) {
                                agz.a(file);
                            }
                            if (a3.a == agm.c.a) {
                                aVar.c = a3.b;
                                this.j.add(aVar);
                            }
                            i2 = a3.a;
                        }
                        if (i2 != agm.c.a) {
                            this.h++;
                        }
                    } catch (Exception e2) {
                        Log.e("Sync Catalog", "Error adding comic: " + aVar.b, e2);
                    }
                    i3++;
                }
                for (int i5 = 0; i5 < this.k.size(); i5++) {
                    adh.a(this.k.get(i5), true, this.e, aek);
                }
                aek.d();
                aen aen = aei.a().c;
                aen.a(this.m, this.f.a(), false, this.c);
                aen.d();
                if (!this.f.m().equals("prefDontDownload")) {
                    e();
                }
                z3 = true;
            }
        } catch (Exception e3) {
            agt.a(e3);
            z3 = false;
        }
        this.n.a(ComicReaderApp.a().getString(z3 ? R.string.completed : R.string.fail), 100);
        return z3;
    }

    public final int b() {
        return this.j.size();
    }

    public final int c() {
        return this.h;
    }

    public final int d() {
        return this.k.size();
    }
}
