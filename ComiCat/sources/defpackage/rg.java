package defpackage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Vector;

/* renamed from: rg  reason: default package */
/* compiled from: KnownHosts */
public final class rg implements qr {
    private static final byte[] e = {32};
    private static final byte[] f = si.a("\n");
    private qw a = null;
    private String b = null;
    private Vector c = null;
    private rj d = null;

    /* renamed from: rg$a */
    /* compiled from: KnownHosts */
    class a extends qq {
        boolean f;
        byte[] g;
        byte[] h;

        private a(String str, String str2, byte[] bArr) {
            super(str, str2, bArr);
            this.f = false;
            this.g = null;
            this.h = null;
            if (this.b.startsWith("|1|") && this.b.substring(3).indexOf("|") > 0) {
                String substring = this.b.substring(3);
                String substring2 = substring.substring(0, substring.indexOf("|"));
                String substring3 = substring.substring(substring.indexOf("|") + 1);
                this.g = si.a(si.a(substring2), substring2.length());
                this.h = si.a(si.a(substring3), substring3.length());
                if (this.g.length == 20 && this.h.length == 20) {
                    this.f = true;
                    return;
                }
                this.g = null;
                this.h = null;
            }
        }

        a(rg rgVar, String str, byte[] bArr) {
            this(rgVar, str, bArr, (byte) 0);
        }

        private a(rg rgVar, String str, byte[] bArr, byte b) {
            this("", str, bArr);
        }

        /* access modifiers changed from: package-private */
        public final boolean a(String str) {
            boolean a;
            if (!this.f) {
                return super.a(str);
            }
            rj a2 = rg.this.b();
            try {
                synchronized (a2) {
                    si.a(str);
                    a = si.a(this.h, new byte[a2.a()]);
                }
                return a;
            } catch (Exception e) {
                System.out.println(e);
                return false;
            }
        }

        /* access modifiers changed from: package-private */
        public final void f() {
            if (!this.f) {
                rj a = rg.this.b();
                if (this.g == null) {
                    synchronized (ry.g) {
                        this.g = new byte[a.a()];
                    }
                }
                try {
                    synchronized (a) {
                        si.a(this.b);
                        this.h = new byte[a.a()];
                    }
                } catch (Exception e) {
                }
                this.b = "|1|" + si.a(si.b(this.g, this.g.length)) + "|" + si.a(si.b(this.h, this.h.length));
                this.f = true;
            }
        }
    }

    rg(qw qwVar) {
        this.a = qwVar;
        this.c = new Vector();
    }

    private void a(OutputStream outputStream) {
        try {
            synchronized (this.c) {
                for (int i = 0; i < this.c.size(); i++) {
                    qq qqVar = (qq) this.c.elementAt(i);
                    String e2 = qqVar.e();
                    String a2 = qqVar.a();
                    String b2 = qqVar.b();
                    String d2 = qqVar.d();
                    if (b2.equals("UNKNOWN")) {
                        outputStream.write(si.a(a2));
                    } else {
                        if (e2.length() != 0) {
                            outputStream.write(si.a(e2));
                            outputStream.write(e);
                        }
                        outputStream.write(si.a(a2));
                        outputStream.write(e);
                        outputStream.write(si.a(b2));
                        outputStream.write(e);
                        outputStream.write(si.a(qqVar.c()));
                        if (d2 != null) {
                            outputStream.write(e);
                            outputStream.write(si.a(d2));
                        }
                    }
                    outputStream.write(f);
                }
            }
        } catch (Exception e3) {
            System.err.println(e3);
        }
    }

    private synchronized void a(String str) {
        if (str != null) {
            FileOutputStream fileOutputStream = new FileOutputStream(si.b(str));
            a((OutputStream) fileOutputStream);
            fileOutputStream.close();
        }
    }

    /* access modifiers changed from: private */
    public synchronized rj b() {
        if (this.d == null) {
            try {
                this.d = (rj) Class.forName(qw.a("hmac-sha1")).newInstance();
            } catch (Exception e2) {
                System.err.println("hmacsha1: " + e2);
            }
        }
        return this.d;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0044, code lost:
        if (r1 != 1) goto L_0x0005;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x004c, code lost:
        if (r10.startsWith("[") == false) goto L_0x0005;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0054, code lost:
        if (r10.indexOf("]:") <= 1) goto L_0x0005;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0056, code lost:
        r10 = r10.substring(1, r10.indexOf("]:"));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:?, code lost:
        return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int a(java.lang.String r10, byte[] r11) {
        /*
            r9 = this;
            r3 = 0
            r2 = 1
        L_0x0002:
            if (r10 != 0) goto L_0x0006
            r1 = r2
        L_0x0005:
            return r1
        L_0x0006:
            qq r5 = new qq     // Catch:{ qy -> 0x003a }
            r0 = 0
            r5.<init>((java.lang.String) r10, (byte[]) r11, (byte) r0)     // Catch:{ qy -> 0x003a }
            java.util.Vector r6 = r9.c
            monitor-enter(r6)
            r4 = r3
            r1 = r2
        L_0x0011:
            java.util.Vector r0 = r9.c     // Catch:{ all -> 0x0061 }
            int r0 = r0.size()     // Catch:{ all -> 0x0061 }
            if (r4 >= r0) goto L_0x0043
            java.util.Vector r0 = r9.c     // Catch:{ all -> 0x0061 }
            java.lang.Object r0 = r0.elementAt(r4)     // Catch:{ all -> 0x0061 }
            qq r0 = (defpackage.qq) r0     // Catch:{ all -> 0x0061 }
            qq r0 = (defpackage.qq) r0     // Catch:{ all -> 0x0061 }
            boolean r7 = r0.a(r10)     // Catch:{ all -> 0x0061 }
            if (r7 == 0) goto L_0x0064
            int r7 = r0.c     // Catch:{ all -> 0x0061 }
            int r8 = r5.c     // Catch:{ all -> 0x0061 }
            if (r7 != r8) goto L_0x0064
            byte[] r0 = r0.d     // Catch:{ all -> 0x0061 }
            boolean r0 = defpackage.si.a((byte[]) r0, (byte[]) r11)     // Catch:{ all -> 0x0061 }
            if (r0 == 0) goto L_0x003d
            monitor-exit(r6)     // Catch:{ all -> 0x0061 }
            r1 = r3
            goto L_0x0005
        L_0x003a:
            r0 = move-exception
            r1 = r2
            goto L_0x0005
        L_0x003d:
            r0 = 2
        L_0x003e:
            int r1 = r4 + 1
            r4 = r1
            r1 = r0
            goto L_0x0011
        L_0x0043:
            monitor-exit(r6)     // Catch:{ all -> 0x0061 }
            if (r1 != r2) goto L_0x0005
            java.lang.String r0 = "["
            boolean r0 = r10.startsWith(r0)
            if (r0 == 0) goto L_0x0005
            java.lang.String r0 = "]:"
            int r0 = r10.indexOf(r0)
            if (r0 <= r2) goto L_0x0005
            java.lang.String r0 = "]:"
            int r0 = r10.indexOf(r0)
            java.lang.String r10 = r10.substring(r2, r0)
            goto L_0x0002
        L_0x0061:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0061 }
            throw r0
        L_0x0064:
            r0 = r1
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rg.a(java.lang.String, byte[]):int");
    }

    public final String a() {
        return this.b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0094, code lost:
        if (r3.endsWith(r12) == false) goto L_0x00a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0098, code lost:
        if ((r8 - r2) != r7) goto L_0x00a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x009b, code lost:
        if (r7 != r8) goto L_0x00a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x009d, code lost:
        r2 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x009e, code lost:
        r2 = r3.substring(0, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00a3, code lost:
        r2 = (r8 - r7) - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00a8, code lost:
        r2 = r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r12, java.lang.String r13) {
        /*
            r11 = this;
            r4 = 0
            java.util.Vector r6 = r11.c
            monitor-enter(r6)
            r5 = r4
            r2 = r4
        L_0x0006:
            java.util.Vector r1 = r11.c     // Catch:{ all -> 0x008d }
            int r1 = r1.size()     // Catch:{ all -> 0x008d }
            if (r5 >= r1) goto L_0x00aa
            java.util.Vector r1 = r11.c     // Catch:{ all -> 0x008d }
            java.lang.Object r1 = r1.elementAt(r5)     // Catch:{ all -> 0x008d }
            qq r1 = (defpackage.qq) r1     // Catch:{ all -> 0x008d }
            qq r1 = (defpackage.qq) r1     // Catch:{ all -> 0x008d }
            if (r12 == 0) goto L_0x002c
            boolean r3 = r1.a(r12)     // Catch:{ all -> 0x008d }
            if (r3 == 0) goto L_0x00b9
            if (r13 == 0) goto L_0x002c
            java.lang.String r3 = r1.b()     // Catch:{ all -> 0x008d }
            boolean r3 = r3.equals(r13)     // Catch:{ all -> 0x008d }
            if (r3 == 0) goto L_0x00b9
        L_0x002c:
            java.lang.String r3 = r1.a()     // Catch:{ all -> 0x008d }
            boolean r2 = r3.equals(r12)     // Catch:{ all -> 0x008d }
            if (r2 != 0) goto L_0x0042
            boolean r2 = r1 instanceof defpackage.rg.a     // Catch:{ all -> 0x008d }
            if (r2 == 0) goto L_0x004d
            r0 = r1
            rg$a r0 = (defpackage.rg.a) r0     // Catch:{ all -> 0x008d }
            r2 = r0
            boolean r2 = r2.f     // Catch:{ all -> 0x008d }
            if (r2 == 0) goto L_0x004d
        L_0x0042:
            java.util.Vector r2 = r11.c     // Catch:{ all -> 0x008d }
            r2.removeElement(r1)     // Catch:{ all -> 0x008d }
        L_0x0047:
            r1 = 1
        L_0x0048:
            int r2 = r5 + 1
            r5 = r2
            r2 = r1
            goto L_0x0006
        L_0x004d:
            int r7 = r12.length()     // Catch:{ all -> 0x008d }
            int r8 = r3.length()     // Catch:{ all -> 0x008d }
            r2 = r4
        L_0x0056:
            if (r2 >= r8) goto L_0x0090
            r9 = 44
            int r9 = r3.indexOf(r9, r2)     // Catch:{ all -> 0x008d }
            r10 = -1
            if (r9 == r10) goto L_0x0090
            java.lang.String r10 = r3.substring(r2, r9)     // Catch:{ all -> 0x008d }
            boolean r10 = r12.equals(r10)     // Catch:{ all -> 0x008d }
            if (r10 != 0) goto L_0x006e
            int r2 = r9 + 1
            goto L_0x0056
        L_0x006e:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x008d }
            r7.<init>()     // Catch:{ all -> 0x008d }
            r8 = 0
            java.lang.String r2 = r3.substring(r8, r2)     // Catch:{ all -> 0x008d }
            java.lang.StringBuilder r2 = r7.append(r2)     // Catch:{ all -> 0x008d }
            int r7 = r9 + 1
            java.lang.String r3 = r3.substring(r7)     // Catch:{ all -> 0x008d }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x008d }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x008d }
        L_0x008a:
            r1.b = r2     // Catch:{ all -> 0x008d }
            goto L_0x0047
        L_0x008d:
            r1 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x008d }
            throw r1
        L_0x0090:
            boolean r9 = r3.endsWith(r12)     // Catch:{ all -> 0x008d }
            if (r9 == 0) goto L_0x00a8
            int r2 = r8 - r2
            if (r2 != r7) goto L_0x00a8
            r9 = 0
            if (r7 != r8) goto L_0x00a3
            r2 = r4
        L_0x009e:
            java.lang.String r2 = r3.substring(r9, r2)     // Catch:{ all -> 0x008d }
            goto L_0x008a
        L_0x00a3:
            int r2 = r8 - r7
            int r2 = r2 + -1
            goto L_0x009e
        L_0x00a8:
            r2 = r3
            goto L_0x008a
        L_0x00aa:
            monitor-exit(r6)     // Catch:{ all -> 0x008d }
            if (r2 == 0) goto L_0x00b6
            java.lang.String r1 = r11.b     // Catch:{ Exception -> 0x00b7 }
            if (r1 == 0) goto L_0x00b6
            java.lang.String r1 = r11.b     // Catch:{ Exception -> 0x00b7 }
            r11.a((java.lang.String) r1)     // Catch:{ Exception -> 0x00b7 }
        L_0x00b6:
            return
        L_0x00b7:
            r1 = move-exception
            goto L_0x00b6
        L_0x00b9:
            r1 = r2
            goto L_0x0048
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rg.a(java.lang.String, java.lang.String):void");
    }

    public final void a(qq qqVar, sh shVar) {
        int i = qqVar.c;
        String a2 = qqVar.a();
        byte[] bArr = qqVar.d;
        synchronized (this.c) {
            for (int i2 = 0; i2 < this.c.size(); i2++) {
                qq qqVar2 = (qq) this.c.elementAt(i2);
                if (qqVar2.a(a2)) {
                    int i3 = qqVar2.c;
                }
            }
        }
        this.c.addElement(qqVar);
        String str = this.b;
        if (str != null) {
            boolean z = true;
            File file = new File(si.b(str));
            if (!file.exists()) {
                if (shVar != null) {
                    new StringBuilder().append(str).append(" does not exist.\nAre you sure you want to create it?");
                    z = shVar.c();
                    File parentFile = file.getParentFile();
                    if (z && parentFile != null && !parentFile.exists()) {
                        new StringBuilder("The parent directory ").append(parentFile).append(" does not exist.\nAre you sure you want to create it?");
                        z = shVar.c();
                        if (z) {
                            if (!parentFile.mkdirs()) {
                                new StringBuilder().append(parentFile).append(" has not been created.");
                                z = false;
                            } else {
                                new StringBuilder().append(parentFile).append(" has been succesfully created.\nPlease check its access permission.");
                            }
                        }
                    }
                    if (parentFile == null) {
                        z = false;
                    }
                } else {
                    z = false;
                }
            }
            if (z) {
                try {
                    a(str);
                } catch (Exception e2) {
                    System.err.println("sync known_hosts: " + e2);
                }
            }
        }
    }

    public final qq[] b(String str, String str2) {
        qq[] qqVarArr;
        synchronized (this.c) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.c.size(); i++) {
                qq qqVar = (qq) this.c.elementAt(i);
                if (qqVar.c != 6 && (str == null || (qqVar.a(str) && (str2 == null || qqVar.b().equals(str2))))) {
                    arrayList.add(qqVar);
                }
            }
            qq[] qqVarArr2 = new qq[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                qqVarArr2[i2] = (qq) arrayList.get(i2);
            }
            if (str != null && str.startsWith("[") && str.indexOf("]:") > 1) {
                qq[] b2 = b(str.substring(1, str.indexOf("]:")), str2);
                if (b2.length > 0) {
                    qqVarArr = new qq[(qqVarArr2.length + b2.length)];
                    System.arraycopy(qqVarArr2, 0, qqVarArr, 0, qqVarArr2.length);
                    System.arraycopy(b2, 0, qqVarArr, qqVarArr2.length, b2.length);
                }
            }
            qqVarArr = qqVarArr2;
        }
        return qqVarArr;
    }
}
