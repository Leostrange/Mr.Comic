package com.fasterxml.jackson.core.io;

import android.support.v4.app.NotificationCompat;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.lang.ref.SoftReference;
import org.apache.http.message.TokenParser;

public final class JsonStringEncoder {
    private static final byte[] HB = CharTypes.copyHexBytes();
    private static final char[] HC = CharTypes.copyHexChars();
    protected static final ThreadLocal<SoftReference<JsonStringEncoder>> _threadEncoder = new ThreadLocal<>();
    protected ByteArrayBuilder _bytes;
    protected final char[] _qbuf = new char[6];

    public JsonStringEncoder() {
        this._qbuf[0] = TokenParser.ESCAPE;
        this._qbuf[2] = '0';
        this._qbuf[3] = '0';
    }

    private static int _convert(int i, int i2) {
        if (i2 >= 56320 && i2 <= 57343) {
            return 65536 + ((i - 55296) << 10) + (i2 - 56320);
        }
        throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2) + "; illegal combination");
    }

    private static void _illegal(int i) {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i));
    }

    public static JsonStringEncoder getInstance() {
        SoftReference softReference = _threadEncoder.get();
        JsonStringEncoder jsonStringEncoder = softReference == null ? null : (JsonStringEncoder) softReference.get();
        if (jsonStringEncoder != null) {
            return jsonStringEncoder;
        }
        JsonStringEncoder jsonStringEncoder2 = new JsonStringEncoder();
        _threadEncoder.set(new SoftReference(jsonStringEncoder2));
        return jsonStringEncoder2;
    }

    public final byte[] encodeAsUTF8(String str) {
        int i;
        int i2;
        int i3;
        char c;
        int i4;
        ByteArrayBuilder byteArrayBuilder = this._bytes;
        if (byteArrayBuilder == null) {
            byteArrayBuilder = new ByteArrayBuilder((BufferRecycler) null);
            this._bytes = byteArrayBuilder;
        }
        int length = str.length();
        byte[] resetAndGetFirstSegment = byteArrayBuilder.resetAndGetFirstSegment();
        int length2 = resetAndGetFirstSegment.length;
        int i5 = 0;
        int i6 = 0;
        loop0:
        while (true) {
            if (i6 >= length) {
                i = i5;
                break;
            }
            int i7 = i6 + 1;
            char charAt = str.charAt(i6);
            int i8 = length2;
            byte[] bArr = resetAndGetFirstSegment;
            int i9 = i5;
            int i10 = i8;
            while (charAt <= 127) {
                if (i9 >= i10) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i10 = bArr.length;
                    i9 = 0;
                }
                int i11 = i9 + 1;
                bArr[i9] = (byte) charAt;
                if (i7 >= length) {
                    i = i11;
                    break loop0;
                }
                charAt = str.charAt(i7);
                i7++;
                i9 = i11;
            }
            if (i9 >= i10) {
                bArr = byteArrayBuilder.finishCurrentSegment();
                i10 = bArr.length;
                i2 = 0;
            } else {
                i2 = i9;
            }
            if (charAt < 2048) {
                i3 = i2 + 1;
                bArr[i2] = (byte) ((charAt >> 6) | 192);
                c = charAt;
                i6 = i7;
            } else if (charAt < 55296 || charAt > 57343) {
                int i12 = i2 + 1;
                bArr[i2] = (byte) ((charAt >> 12) | 224);
                if (i12 >= i10) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i10 = bArr.length;
                    i12 = 0;
                }
                bArr[i12] = (byte) (((charAt >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                i3 = i12 + 1;
                c = charAt;
                i6 = i7;
            } else {
                if (charAt > 56319) {
                    _illegal(charAt);
                }
                if (i7 >= length) {
                    _illegal(charAt);
                }
                int i13 = i7 + 1;
                int _convert = _convert(charAt, str.charAt(i7));
                if (_convert > 1114111) {
                    _illegal(_convert);
                }
                int i14 = i2 + 1;
                bArr[i2] = (byte) ((_convert >> 18) | 240);
                if (i14 >= i10) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i10 = bArr.length;
                    i14 = 0;
                }
                int i15 = i14 + 1;
                bArr[i14] = (byte) (((_convert >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                if (i15 >= i10) {
                    bArr = byteArrayBuilder.finishCurrentSegment();
                    i10 = bArr.length;
                    i4 = 0;
                } else {
                    i4 = i15;
                }
                bArr[i4] = (byte) (((_convert >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                i3 = i4 + 1;
                c = _convert;
                i6 = i13;
            }
            if (i3 >= i10) {
                bArr = byteArrayBuilder.finishCurrentSegment();
                i10 = bArr.length;
                i3 = 0;
            }
            int i16 = i3 + 1;
            bArr[i3] = (byte) ((c & '?') | 128);
            resetAndGetFirstSegment = bArr;
            length2 = i10;
            i5 = i16;
        }
        return this._bytes.completeAndCoalesce(i);
    }
}
