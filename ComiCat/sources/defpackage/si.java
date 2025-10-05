package defpackage;

import com.box.androidsdk.content.BoxConstants;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.util.Vector;
import org.apache.http.protocol.HTTP;

/* renamed from: si  reason: default package */
/* compiled from: Util */
public final class si {
    static final byte[] a = b("", HTTP.UTF_8);
    private static final byte[] b = b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=", HTTP.UTF_8);
    private static String[] c = {BoxConstants.ROOT_FOLDER_ID, "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    private static byte a(byte b2) {
        if (b2 == 61) {
            return 0;
        }
        for (int i = 0; i < b.length; i++) {
            if (b2 == b[i]) {
                return (byte) i;
            }
        }
        return 0;
    }

    static String a(String str, String[] strArr) {
        String[] a2 = a(str, ",");
        String str2 = null;
        for (int i = 0; i < a2.length; i++) {
            int i2 = 0;
            while (true) {
                if (i2 < strArr.length) {
                    if (a2[i].equals(strArr[i2])) {
                        break;
                    }
                    i2++;
                } else {
                    str2 = str2 == null ? a2[i] : str2 + "," + a2[i];
                }
            }
        }
        return str2;
    }

    static String a(qp qpVar) {
        try {
            byte[] b2 = qpVar.b();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < b2.length; i++) {
                byte b3 = b2[i] & 255;
                stringBuffer.append(c[(b3 >>> 4) & 15]);
                stringBuffer.append(c[b3 & 15]);
                if (i + 1 < b2.length) {
                    stringBuffer.append(":");
                }
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            return "???";
        }
    }

    static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length, HTTP.UTF_8);
    }

    static String a(byte[] bArr, int i, int i2) {
        return a(bArr, i, i2, HTTP.UTF_8);
    }

    private static String a(byte[] bArr, int i, int i2, String str) {
        try {
            return new String(bArr, i, i2, str);
        } catch (UnsupportedEncodingException e) {
            return new String(bArr, i, i2);
        }
    }

    static Socket a(final String str, final int i, int i2) {
        if (i2 == 0) {
            try {
                return new Socket(str, i);
            } catch (Exception e) {
                throw new qy(e.toString(), e);
            }
        } else {
            final Socket[] socketArr = new Socket[1];
            final Exception[] excArr = new Exception[1];
            String str2 = "";
            Thread thread = new Thread(new Runnable() {
                public final void run() {
                    socketArr[0] = null;
                    try {
                        socketArr[0] = new Socket(str, i);
                    } catch (Exception e) {
                        excArr[0] = e;
                        if (socketArr[0] != null && socketArr[0].isConnected()) {
                            try {
                                socketArr[0].close();
                            } catch (Exception e2) {
                            }
                        }
                        socketArr[0] = null;
                    }
                }
            });
            thread.setName("Opening Socket " + str);
            thread.start();
            try {
                thread.join((long) i2);
                str2 = "timeout: ";
            } catch (InterruptedException e2) {
            }
            if (socketArr[0] != null && socketArr[0].isConnected()) {
                return socketArr[0];
            }
            String str3 = str2 + "socket is not established";
            if (excArr[0] != null) {
                str3 = excArr[0].toString();
            }
            thread.interrupt();
            throw new qy(str3, excArr[0]);
        }
    }

    static boolean a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static byte[] a(String str) {
        return b(str, HTTP.UTF_8);
    }

    static byte[] a(byte[] bArr, int i) {
        int i2 = 0;
        try {
            byte[] bArr2 = new byte[i];
            int i3 = 0;
            while (true) {
                if (i3 >= i + 0) {
                    break;
                }
                bArr2[i2] = (byte) ((a(bArr[i3]) << 2) | ((a(bArr[i3 + 1]) & 48) >>> 4));
                if (bArr[i3 + 2] == 61) {
                    i2++;
                    break;
                }
                bArr2[i2 + 1] = (byte) (((a(bArr[i3 + 1]) & 15) << 4) | ((a(bArr[i3 + 2]) & 60) >>> 2));
                if (bArr[i3 + 3] == 61) {
                    i2 += 2;
                    break;
                }
                bArr2[i2 + 2] = (byte) (((a(bArr[i3 + 2]) & 3) << 6) | (a(bArr[i3 + 3]) & 63));
                i3 += 4;
                i2 += 3;
            }
            byte[] bArr3 = new byte[i2];
            System.arraycopy(bArr2, 0, bArr3, 0, i2);
            return bArr3;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new qy("fromBase64: invalid base64 data", e);
        }
    }

    static String[] a(String str, String str2) {
        if (str == null) {
            return null;
        }
        byte[] b2 = b(str, HTTP.UTF_8);
        Vector vector = new Vector();
        int i = 0;
        while (true) {
            int indexOf = str.indexOf(str2, i);
            if (indexOf < 0) {
                break;
            }
            vector.addElement(a(b2, i, indexOf - i));
            i = indexOf + 1;
        }
        vector.addElement(a(b2, i, b2.length - i));
        String[] strArr = new String[vector.size()];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            strArr[i2] = (String) vector.elementAt(i2);
        }
        return strArr;
    }

    static String b(String str) {
        try {
            return str.startsWith("~") ? str.replace("~", System.getProperty("user.home")) : str;
        } catch (SecurityException e) {
            return str;
        }
    }

    static void b(byte[] bArr) {
        if (bArr != null) {
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = 0;
            }
        }
    }

    private static byte[] b(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }

    static byte[] b(byte[] bArr, int i) {
        byte[] bArr2 = new byte[(i * 2)];
        int i2 = ((i / 3) * 3) + 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4 + 1;
            bArr2[i4] = b[(bArr[i3] >>> 2) & 63];
            int i6 = i5 + 1;
            bArr2[i5] = b[((bArr[i3] & 3) << 4) | ((bArr[i3 + 1] >>> 4) & 15)];
            int i7 = i6 + 1;
            bArr2[i6] = b[((bArr[i3 + 1] & 15) << 2) | ((bArr[i3 + 2] >>> 6) & 3)];
            bArr2[i7] = b[bArr[i3 + 2] & 63];
            i3 += 3;
            i4 = i7 + 1;
        }
        int i8 = (i + 0) - i2;
        if (i8 == 1) {
            int i9 = i4 + 1;
            bArr2[i4] = b[(bArr[i3] >>> 2) & 63];
            int i10 = i9 + 1;
            bArr2[i9] = b[((bArr[i3] & 3) << 4) & 63];
            int i11 = i10 + 1;
            bArr2[i10] = 61;
            i4 = i11 + 1;
            bArr2[i11] = 61;
        } else if (i8 == 2) {
            int i12 = i4 + 1;
            bArr2[i4] = b[(bArr[i3] >>> 2) & 63];
            int i13 = i12 + 1;
            bArr2[i12] = b[((bArr[i3] & 3) << 4) | ((bArr[i3 + 1] >>> 4) & 15)];
            int i14 = i13 + 1;
            bArr2[i13] = b[((bArr[i3 + 1] & 15) << 2) & 63];
            i4 = i14 + 1;
            bArr2[i14] = 61;
        }
        byte[] bArr3 = new byte[i4];
        System.arraycopy(bArr2, 0, bArr3, 0, i4);
        return bArr3;
    }
}
