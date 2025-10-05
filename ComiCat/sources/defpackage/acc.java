package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

/* renamed from: acc  reason: default package */
/* compiled from: Transport */
public abstract class acc implements Runnable {
    static int B = 0;
    static abx C = abx.a();
    int D = 0;
    String E;
    Thread F;
    acd G;
    protected HashMap H;

    public acc() {
        StringBuilder sb = new StringBuilder("Transport");
        int i = B;
        B = i + 1;
        this.E = sb.append(i).toString();
        this.H = new HashMap(4);
    }

    public static int a(InputStream inputStream, byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read <= 0) {
                break;
            }
            i3 += read;
        }
        return i3;
    }

    public final synchronized void a(long j) {
        try {
            switch (this.D) {
                case 0:
                    this.D = 1;
                    this.G = null;
                    this.F = new Thread(this, this.E);
                    this.F.setDaemon(true);
                    synchronized (this.F) {
                        this.F.start();
                        this.F.wait(j);
                        switch (this.D) {
                            case 1:
                                this.D = 0;
                                this.F = null;
                                throw new acd("Connection timeout");
                            case 2:
                                if (this.G == null) {
                                    this.D = 3;
                                    if (!(this.D == 0 || this.D == 3 || this.D == 4)) {
                                        if (abx.a > 0) {
                                            C.println("Invalid state: " + this.D);
                                        }
                                        this.D = 0;
                                        this.F = null;
                                        break;
                                    }
                                } else {
                                    this.D = 4;
                                    this.F = null;
                                    throw this.G;
                                }
                            default:
                                if (!(this.D == 0 || this.D == 3 || this.D == 4)) {
                                    if (abx.a > 0) {
                                        C.println("Invalid state: " + this.D);
                                    }
                                    this.D = 0;
                                    this.F = null;
                                    break;
                                }
                        }
                    }
                case 3:
                    if (!(this.D == 0 || this.D == 3 || this.D == 4)) {
                        if (abx.a > 0) {
                            C.println("Invalid state: " + this.D);
                        }
                        this.D = 0;
                        this.F = null;
                        break;
                    }
                case 4:
                    this.D = 0;
                    throw new acd("Connection in error", this.G);
                default:
                    acd acd = new acd("Invalid state: " + this.D);
                    this.D = 0;
                    throw acd;
            }
        } catch (InterruptedException e) {
            this.D = 0;
            this.F = null;
            throw new acd((Throwable) e);
        } catch (Throwable th) {
            if (!(this.D == 0 || this.D == 3 || this.D == 4)) {
                if (abx.a > 0) {
                    C.println("Invalid state: " + this.D);
                }
                this.D = 0;
                this.F = null;
            }
            throw th;
        }
    }

    public abstract void a(aca aca);

    public final synchronized void a(aca aca, acb acb, long j) {
        a(aca);
        acb.b_ = false;
        try {
            this.H.put(aca, acb);
            b(aca);
            acb.a_ = System.currentTimeMillis() + j;
            while (!acb.b_) {
                wait(j);
                j = acb.a_ - System.currentTimeMillis();
                if (j <= 0) {
                    throw new acd(this.E + " timedout waiting for response to " + aca);
                }
            }
            this.H.remove(aca);
        } catch (IOException e) {
            if (abx.a > 2) {
                e.printStackTrace(C);
            }
            try {
                b(true);
            } catch (IOException e2) {
                e2.printStackTrace(C);
            }
            throw e;
        } catch (InterruptedException e3) {
            throw new acd((Throwable) e3);
        } catch (Throwable th) {
            this.H.remove(aca);
            throw th;
        }
    }

    public abstract void a(acb acb);

    public abstract void a(boolean z);

    public abstract void b();

    public abstract void b(aca aca);

    public final synchronized void b(boolean z) {
        IOException e = null;
        synchronized (this) {
            switch (this.D) {
                case 0:
                    break;
                case 2:
                    z = true;
                    break;
                case 3:
                    break;
                case 4:
                    break;
                default:
                    if (abx.a > 0) {
                        C.println("Invalid state: " + this.D);
                    }
                    this.F = null;
                    this.D = 0;
                    break;
            }
            if (this.H.size() == 0 || z) {
                try {
                    a(z);
                } catch (IOException e2) {
                    e = e2;
                }
                this.F = null;
                this.D = 0;
            }
            if (e != null) {
                throw e;
            }
        }
    }

    public abstract aca c();

    public abstract void d();

    /* JADX WARNING: Code restructure failed: missing block: B:100:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001e, code lost:
        if (r6.F != java.lang.Thread.currentThread()) goto L_0x0010;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        r0 = c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0024, code lost:
        if (r0 != null) goto L_0x0091;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002d, code lost:
        throw new java.io.IOException("end of stream");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x002e, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002f, code lost:
        r1 = r0.getMessage();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0033, code lost:
        if (r1 == null) goto L_0x00bb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x003d, code lost:
        r4 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003e, code lost:
        if (r4 == false) goto L_0x0040;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0040, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0048, code lost:
        r0.printStackTrace(C);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        b(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0051, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0052, code lost:
        r0.printStackTrace(C);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:?, code lost:
        monitor-enter(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:?, code lost:
        r0 = (defpackage.acb) r6.H.get(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x009a, code lost:
        if (r0 != null) goto L_0x00b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x009f, code lost:
        if (defpackage.abx.a < 4) goto L_0x00a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x00a1, code lost:
        C.println("Invalid key, skipping message");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x00a8, code lost:
        d();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x00ab, code lost:
        monitor-exit(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:?, code lost:
        a(r0);
        r0.b_ = true;
        notifyAll();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x00bb, code lost:
        r4 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x00bd, code lost:
        r1 = false;
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r6 = this;
            r3 = 0
            r2 = 1
            r4 = 2
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r6.b()     // Catch:{ Exception -> 0x005b, all -> 0x007e }
            monitor-enter(r1)
            java.lang.Thread r0 = r6.F     // Catch:{ all -> 0x0058 }
            if (r1 == r0) goto L_0x0011
            monitor-exit(r1)     // Catch:{ all -> 0x0058 }
        L_0x0010:
            return
        L_0x0011:
            r0 = 2
            r6.D = r0     // Catch:{ all -> 0x0058 }
            r1.notify()     // Catch:{ all -> 0x0058 }
            monitor-exit(r1)     // Catch:{ all -> 0x0058 }
        L_0x0018:
            java.lang.Thread r0 = r6.F
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            if (r0 != r1) goto L_0x0010
            aca r0 = r6.c()     // Catch:{ Exception -> 0x002e }
            if (r0 != 0) goto L_0x0091
            java.io.IOException r0 = new java.io.IOException     // Catch:{ Exception -> 0x002e }
            java.lang.String r1 = "end of stream"
            r0.<init>(r1)     // Catch:{ Exception -> 0x002e }
            throw r0     // Catch:{ Exception -> 0x002e }
        L_0x002e:
            r0 = move-exception
            java.lang.String r1 = r0.getMessage()
            if (r1 == 0) goto L_0x00bb
            java.lang.String r4 = "Read timed out"
            boolean r1 = r1.equals(r4)
            if (r1 == 0) goto L_0x00bb
            r4 = r2
        L_0x003e:
            if (r4 != 0) goto L_0x00bd
            r1 = r2
        L_0x0041:
            if (r4 != 0) goto L_0x004d
            int r4 = defpackage.abx.a
            r5 = 3
            if (r4 < r5) goto L_0x004d
            abx r4 = C
            r0.printStackTrace(r4)
        L_0x004d:
            r6.b((boolean) r1)     // Catch:{ IOException -> 0x0051 }
            goto L_0x0018
        L_0x0051:
            r0 = move-exception
            abx r1 = C
            r0.printStackTrace(r1)
            goto L_0x0018
        L_0x0058:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0058 }
            throw r0
        L_0x005b:
            r0 = move-exception
            monitor-enter(r1)
            java.lang.Thread r2 = r6.F     // Catch:{ all -> 0x006c }
            if (r1 == r2) goto L_0x006f
            int r2 = defpackage.abx.a     // Catch:{ all -> 0x006c }
            if (r2 < r4) goto L_0x006a
            abx r2 = C     // Catch:{ all -> 0x006c }
            r0.printStackTrace(r2)     // Catch:{ all -> 0x006c }
        L_0x006a:
            monitor-exit(r1)     // Catch:{ all -> 0x006c }
            goto L_0x0010
        L_0x006c:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x006c }
            throw r0
        L_0x006f:
            acd r2 = new acd     // Catch:{ all -> 0x006c }
            r2.<init>((java.lang.Throwable) r0)     // Catch:{ all -> 0x006c }
            r6.G = r2     // Catch:{ all -> 0x006c }
            r0 = 2
            r6.D = r0     // Catch:{ all -> 0x006c }
            r1.notify()     // Catch:{ all -> 0x006c }
            monitor-exit(r1)     // Catch:{ all -> 0x006c }
            goto L_0x0010
        L_0x007e:
            r0 = move-exception
            monitor-enter(r1)
            java.lang.Thread r2 = r6.F     // Catch:{ all -> 0x0086 }
            if (r1 == r2) goto L_0x0089
            monitor-exit(r1)     // Catch:{ all -> 0x0086 }
            goto L_0x0010
        L_0x0086:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0086 }
            throw r0
        L_0x0089:
            r2 = 2
            r6.D = r2     // Catch:{ all -> 0x0086 }
            r1.notify()     // Catch:{ all -> 0x0086 }
            monitor-exit(r1)     // Catch:{ all -> 0x0086 }
            throw r0
        L_0x0091:
            monitor-enter(r6)     // Catch:{ Exception -> 0x002e }
            java.util.HashMap r1 = r6.H     // Catch:{ all -> 0x00ae }
            java.lang.Object r0 = r1.get(r0)     // Catch:{ all -> 0x00ae }
            acb r0 = (defpackage.acb) r0     // Catch:{ all -> 0x00ae }
            if (r0 != 0) goto L_0x00b1
            int r0 = defpackage.abx.a     // Catch:{ all -> 0x00ae }
            r1 = 4
            if (r0 < r1) goto L_0x00a8
            abx r0 = C     // Catch:{ all -> 0x00ae }
            java.lang.String r1 = "Invalid key, skipping message"
            r0.println(r1)     // Catch:{ all -> 0x00ae }
        L_0x00a8:
            r6.d()     // Catch:{ all -> 0x00ae }
        L_0x00ab:
            monitor-exit(r6)     // Catch:{ all -> 0x00ae }
            goto L_0x0018
        L_0x00ae:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x00ae }
            throw r0     // Catch:{ Exception -> 0x002e }
        L_0x00b1:
            r6.a((defpackage.acb) r0)     // Catch:{ all -> 0x00ae }
            r1 = 1
            r0.b_ = r1     // Catch:{ all -> 0x00ae }
            r6.notifyAll()     // Catch:{ all -> 0x00ae }
            goto L_0x00ab
        L_0x00bb:
            r4 = r3
            goto L_0x003e
        L_0x00bd:
            r1 = r3
            goto L_0x0041
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.acc.run():void");
    }

    public String toString() {
        return this.E;
    }
}
