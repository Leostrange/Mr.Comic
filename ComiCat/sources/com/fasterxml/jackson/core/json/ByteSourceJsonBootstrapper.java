package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.MergedStream;
import com.fasterxml.jackson.core.io.UTF32Reader;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public final class ByteSourceJsonBootstrapper {
    protected boolean _bigEndian = true;
    private final boolean _bufferRecyclable;
    protected int _bytesPerChar;
    protected final IOContext _context;
    protected final InputStream _in;
    protected final byte[] _inputBuffer;
    private int _inputEnd;
    protected int _inputProcessed;
    private int _inputPtr;

    public ByteSourceJsonBootstrapper(IOContext iOContext, InputStream inputStream) {
        this._context = iOContext;
        this._in = inputStream;
        this._inputBuffer = iOContext.allocReadIOBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._inputProcessed = 0;
        this._bufferRecyclable = true;
    }

    private boolean checkUTF16(int i) {
        if ((65280 & i) == 0) {
            this._bigEndian = true;
        } else if ((i & 255) != 0) {
            return false;
        } else {
            this._bigEndian = false;
        }
        this._bytesPerChar = 2;
        return true;
    }

    private boolean checkUTF32(int i) {
        if ((i >> 8) == 0) {
            this._bigEndian = true;
        } else if ((16777215 & i) == 0) {
            this._bigEndian = false;
        } else if ((-16711681 & i) == 0) {
            reportWeirdUCS4("3412");
        } else if ((-65281 & i) != 0) {
            return false;
        } else {
            reportWeirdUCS4("2143");
        }
        this._bytesPerChar = 4;
        return true;
    }

    private boolean handleBOM(int i) {
        switch (i) {
            case -16842752:
                break;
            case -131072:
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                this._bigEndian = false;
                return true;
            case 65279:
                this._bigEndian = true;
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                return true;
            case 65534:
                reportWeirdUCS4("2143");
                break;
        }
        reportWeirdUCS4("3412");
        int i2 = i >>> 16;
        if (i2 == 65279) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = true;
            return true;
        } else if (i2 == 65534) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = false;
            return true;
        } else if ((i >>> 8) != 15711167) {
            return false;
        } else {
            this._inputPtr += 3;
            this._bytesPerChar = 1;
            this._bigEndian = true;
            return true;
        }
    }

    private void reportWeirdUCS4(String str) {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    public final JsonParser constructParser(int i, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, CharsToNameCanonicalizer charsToNameCanonicalizer, int i2) {
        if (detectEncoding() != JsonEncoding.UTF8 || !JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i2)) {
            return new ReaderBasedJsonParser(this._context, i, constructReader(), objectCodec, charsToNameCanonicalizer.makeChild(i2));
        }
        return new UTF8StreamJsonParser(this._context, i, this._in, objectCodec, byteQuadsCanonicalizer.makeChild(i2), this._inputBuffer, this._inputPtr, this._inputEnd, this._bufferRecyclable);
    }

    public final Reader constructReader() {
        JsonEncoding encoding = this._context.getEncoding();
        switch (encoding.bits()) {
            case 8:
            case 16:
                InputStream inputStream = this._in;
                return new InputStreamReader(inputStream == null ? new ByteArrayInputStream(this._inputBuffer, this._inputPtr, this._inputEnd) : this._inputPtr < this._inputEnd ? new MergedStream(this._context, inputStream, this._inputBuffer, this._inputPtr, this._inputEnd) : inputStream, encoding.getJavaName());
            case 32:
                return new UTF32Reader(this._context, this._in, this._inputBuffer, this._inputPtr, this._inputEnd, this._context.getEncoding().isBigEndian());
            default:
                throw new RuntimeException("Internal error");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0052, code lost:
        if (checkUTF16(r2 >>> 16) != false) goto L_0x003c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0076, code lost:
        if (checkUTF16(((r5._inputBuffer[r5._inputPtr] & 255) << 8) | (r5._inputBuffer[r5._inputPtr + 1] & 255)) != false) goto L_0x003c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.fasterxml.jackson.core.JsonEncoding detectEncoding() {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            r2 = 4
            boolean r2 = r5.ensureLoaded(r2)
            if (r2 == 0) goto L_0x0056
            byte[] r2 = r5._inputBuffer
            int r3 = r5._inputPtr
            byte r2 = r2[r3]
            int r2 = r2 << 24
            byte[] r3 = r5._inputBuffer
            int r4 = r5._inputPtr
            int r4 = r4 + 1
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 16
            r2 = r2 | r3
            byte[] r3 = r5._inputBuffer
            int r4 = r5._inputPtr
            int r4 = r4 + 2
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 8
            r2 = r2 | r3
            byte[] r3 = r5._inputBuffer
            int r4 = r5._inputPtr
            int r4 = r4 + 3
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r2 = r2 | r3
            boolean r3 = r5.handleBOM(r2)
            if (r3 == 0) goto L_0x0046
        L_0x003c:
            if (r0 != 0) goto L_0x0079
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF8
        L_0x0040:
            com.fasterxml.jackson.core.io.IOContext r1 = r5._context
            r1.setEncoding(r0)
            return r0
        L_0x0046:
            boolean r3 = r5.checkUTF32(r2)
            if (r3 != 0) goto L_0x003c
            int r2 = r2 >>> 16
            boolean r2 = r5.checkUTF16(r2)
            if (r2 != 0) goto L_0x003c
        L_0x0054:
            r0 = r1
            goto L_0x003c
        L_0x0056:
            r2 = 2
            boolean r2 = r5.ensureLoaded(r2)
            if (r2 == 0) goto L_0x0054
            byte[] r2 = r5._inputBuffer
            int r3 = r5._inputPtr
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 8
            byte[] r3 = r5._inputBuffer
            int r4 = r5._inputPtr
            int r4 = r4 + 1
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r2 = r2 | r3
            boolean r2 = r5.checkUTF16(r2)
            if (r2 == 0) goto L_0x0054
            goto L_0x003c
        L_0x0079:
            int r0 = r5._bytesPerChar
            switch(r0) {
                case 1: goto L_0x0086;
                case 2: goto L_0x0089;
                case 3: goto L_0x007e;
                case 4: goto L_0x0093;
                default: goto L_0x007e;
            }
        L_0x007e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "Internal error"
            r0.<init>(r1)
            throw r0
        L_0x0086:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF8
            goto L_0x0040
        L_0x0089:
            boolean r0 = r5._bigEndian
            if (r0 == 0) goto L_0x0090
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF16_BE
            goto L_0x0040
        L_0x0090:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF16_LE
            goto L_0x0040
        L_0x0093:
            boolean r0 = r5._bigEndian
            if (r0 == 0) goto L_0x009a
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF32_BE
            goto L_0x0040
        L_0x009a:
            com.fasterxml.jackson.core.JsonEncoding r0 = com.fasterxml.jackson.core.JsonEncoding.UTF32_LE
            goto L_0x0040
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper.detectEncoding():com.fasterxml.jackson.core.JsonEncoding");
    }

    /* access modifiers changed from: protected */
    public final boolean ensureLoaded(int i) {
        int i2 = this._inputEnd - this._inputPtr;
        while (i2 < i) {
            int read = this._in == null ? -1 : this._in.read(this._inputBuffer, this._inputEnd, this._inputBuffer.length - this._inputEnd);
            if (read <= 0) {
                return false;
            }
            this._inputEnd += read;
            i2 = read + i2;
        }
        return true;
    }
}
