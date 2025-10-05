package defpackage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: ago  reason: default package */
/* compiled from: EncodingUtils */
public final class ago {
    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append("0123456789abcdef".charAt((b & 240) >> 4)).append("0123456789abcdef".charAt(b & 15));
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(java.lang.String r6) {
        /*
            r0 = 0
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch:{ Exception -> 0x002a, all -> 0x0035 }
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ Exception -> 0x002a, all -> 0x0035 }
            r3.<init>(r6)     // Catch:{ Exception -> 0x002a, all -> 0x0035 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x002a, all -> 0x0035 }
            java.lang.String r3 = "MD5"
            java.security.MessageDigest r3 = java.security.MessageDigest.getInstance(r3)     // Catch:{ Exception -> 0x0040 }
        L_0x0015:
            int r4 = r2.read(r1)     // Catch:{ Exception -> 0x0040 }
            if (r4 <= 0) goto L_0x001f
            r5 = 0
            r3.update(r1, r5, r4)     // Catch:{ Exception -> 0x0040 }
        L_0x001f:
            r5 = -1
            if (r4 != r5) goto L_0x0015
            byte[] r0 = r3.digest()     // Catch:{ Exception -> 0x0040 }
            defpackage.aha.a((java.io.InputStream) r2)
        L_0x0029:
            return r0
        L_0x002a:
            r1 = move-exception
            r2 = r0
        L_0x002c:
            r1.printStackTrace()     // Catch:{ all -> 0x003e }
            if (r2 == 0) goto L_0x0029
            defpackage.aha.a((java.io.InputStream) r2)
            goto L_0x0029
        L_0x0035:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0038:
            if (r2 == 0) goto L_0x003d
            defpackage.aha.a((java.io.InputStream) r2)
        L_0x003d:
            throw r0
        L_0x003e:
            r0 = move-exception
            goto L_0x0038
        L_0x0040:
            r1 = move-exception
            goto L_0x002c
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ago.a(java.lang.String):byte[]");
    }

    public static String b(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            if (digest != null) {
                return a(digest);
            }
            return null;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
