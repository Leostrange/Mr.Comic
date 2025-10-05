package defpackage;

/* renamed from: up  reason: default package */
/* compiled from: FileNameDecoder */
public final class up {
    public static String a(byte[] bArr, int i) {
        int i2;
        byte b;
        int i3;
        int i4 = 0;
        byte b2 = bArr[i] & 255;
        StringBuffer stringBuffer = new StringBuffer();
        int i5 = 0;
        int i6 = i + 1;
        byte b3 = 0;
        while (i6 < bArr.length) {
            if (i4 == 0) {
                b = bArr[i6] & 255;
                i3 = i6 + 1;
                i2 = 8;
            } else {
                i2 = i4;
                b = b3;
                i3 = i6;
            }
            switch (b >> 6) {
                case 0:
                    i6 = i3 + 1;
                    stringBuffer.append((char) (bArr[i3] & 255));
                    i5++;
                    break;
                case 1:
                    i6 = i3 + 1;
                    stringBuffer.append((char) ((bArr[i3] & 255) + (b2 << 8)));
                    i5++;
                    break;
                case 2:
                    stringBuffer.append((char) ((bArr[i3] & 255) + ((bArr[i3 + 1] & 255) << 8)));
                    i5++;
                    i6 = i3 + 2;
                    break;
                case 3:
                    int i7 = i3 + 1;
                    byte b4 = bArr[i3] & 255;
                    if ((b4 & 128) == 0) {
                        int i8 = b4 + 2;
                        while (i8 > 0 && i5 < bArr.length) {
                            stringBuffer.append((char) (bArr[i5] & 255));
                            i8--;
                            i5++;
                        }
                        i6 = i7;
                        break;
                    } else {
                        i6 = i7 + 1;
                        byte b5 = bArr[i7] & 255;
                        int i9 = (b4 & Byte.MAX_VALUE) + 2;
                        while (i9 > 0 && i5 < bArr.length) {
                            stringBuffer.append((char) ((((bArr[i5] & 255) + b5) & 255) + (b2 << 8)));
                            i9--;
                            i5++;
                        }
                    }
                    break;
                default:
                    i6 = i3;
                    break;
            }
            b3 = (b << 2) & 255;
            i4 = i2 - 2;
        }
        return stringBuffer.toString();
    }
}
