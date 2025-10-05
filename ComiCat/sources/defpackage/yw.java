package defpackage;

/* renamed from: yw  reason: default package */
/* compiled from: BufferCache */
public final class yw {
    static Object[] a;
    private static final int b;
    private static int c = 0;

    static {
        int a2 = xj.a("jcifs.smb.maxBuffers", 16);
        b = a2;
        a = new Object[a2];
    }

    static void a(aag aag, aah aah) {
        synchronized (a) {
            aag.V = a();
            aah.O = a();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(byte[] r3) {
        /*
            java.lang.Object[] r1 = a
            monitor-enter(r1)
            int r0 = c     // Catch:{ all -> 0x0025 }
            int r2 = b     // Catch:{ all -> 0x0025 }
            if (r0 >= r2) goto L_0x0023
            r0 = 0
        L_0x000a:
            int r2 = b     // Catch:{ all -> 0x0025 }
            if (r0 >= r2) goto L_0x0023
            java.lang.Object[] r2 = a     // Catch:{ all -> 0x0025 }
            r2 = r2[r0]     // Catch:{ all -> 0x0025 }
            if (r2 != 0) goto L_0x0020
            java.lang.Object[] r2 = a     // Catch:{ all -> 0x0025 }
            r2[r0] = r3     // Catch:{ all -> 0x0025 }
            int r0 = c     // Catch:{ all -> 0x0025 }
            int r0 = r0 + 1
            c = r0     // Catch:{ all -> 0x0025 }
            monitor-exit(r1)     // Catch:{ all -> 0x0025 }
        L_0x001f:
            return
        L_0x0020:
            int r0 = r0 + 1
            goto L_0x000a
        L_0x0023:
            monitor-exit(r1)     // Catch:{ all -> 0x0025 }
            goto L_0x001f
        L_0x0025:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0025 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yw.a(byte[]):void");
    }

    public static byte[] a() {
        byte[] bArr;
        synchronized (a) {
            if (c > 0) {
                int i = 0;
                while (true) {
                    if (i >= b) {
                        break;
                    } else if (a[i] != null) {
                        bArr = (byte[]) a[i];
                        a[i] = null;
                        c--;
                        break;
                    } else {
                        i++;
                    }
                }
            }
            bArr = new byte[65535];
        }
        return bArr;
    }
}
