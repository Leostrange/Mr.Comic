package org.apache.http.util;

import java.io.Serializable;
import java.nio.CharBuffer;
import org.apache.http.protocol.HTTP;

public final class CharArrayBuffer implements Serializable, CharSequence {
    private static final long serialVersionUID = -6208952725094867135L;
    private char[] buffer;
    private int len;

    public CharArrayBuffer(int i) {
        Args.notNegative(i, "Buffer capacity");
        this.buffer = new char[i];
    }

    private void expand(int i) {
        char[] cArr = new char[Math.max(this.buffer.length << 1, i)];
        System.arraycopy(this.buffer, 0, cArr, 0, this.len);
        this.buffer = cArr;
    }

    public final void append(char c) {
        int i = this.len + 1;
        if (i > this.buffer.length) {
            expand(i);
        }
        this.buffer[this.len] = c;
        this.len = i;
    }

    public final void append(Object obj) {
        append(String.valueOf(obj));
    }

    public final void append(String str) {
        if (str == null) {
            str = "null";
        }
        int length = str.length();
        int i = this.len + length;
        if (i > this.buffer.length) {
            expand(i);
        }
        str.getChars(0, length, this.buffer, this.len);
        this.len = i;
    }

    public final void append(ByteArrayBuffer byteArrayBuffer, int i, int i2) {
        if (byteArrayBuffer != null) {
            append(byteArrayBuffer.buffer(), i, i2);
        }
    }

    public final void append(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer != null) {
            append(charArrayBuffer.buffer, 0, charArrayBuffer.len);
        }
    }

    public final void append(CharArrayBuffer charArrayBuffer, int i, int i2) {
        if (charArrayBuffer != null) {
            append(charArrayBuffer.buffer, i, i2);
        }
    }

    public final void append(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            if (i < 0 || i > bArr.length || i2 < 0 || i + i2 < 0 || i + i2 > bArr.length) {
                throw new IndexOutOfBoundsException("off: " + i + " len: " + i2 + " b.length: " + bArr.length);
            } else if (i2 != 0) {
                int i3 = this.len;
                int i4 = i3 + i2;
                if (i4 > this.buffer.length) {
                    expand(i4);
                }
                while (i3 < i4) {
                    this.buffer[i3] = (char) (bArr[i] & 255);
                    i++;
                    i3++;
                }
                this.len = i4;
            }
        }
    }

    public final void append(char[] cArr, int i, int i2) {
        if (cArr != null) {
            if (i < 0 || i > cArr.length || i2 < 0 || i + i2 < 0 || i + i2 > cArr.length) {
                throw new IndexOutOfBoundsException("off: " + i + " len: " + i2 + " b.length: " + cArr.length);
            } else if (i2 != 0) {
                int i3 = this.len + i2;
                if (i3 > this.buffer.length) {
                    expand(i3);
                }
                System.arraycopy(cArr, i, this.buffer, this.len, i2);
                this.len = i3;
            }
        }
    }

    public final char[] buffer() {
        return this.buffer;
    }

    public final int capacity() {
        return this.buffer.length;
    }

    public final char charAt(int i) {
        return this.buffer[i];
    }

    public final void clear() {
        this.len = 0;
    }

    public final void ensureCapacity(int i) {
        if (i > 0 && i > this.buffer.length - this.len) {
            expand(this.len + i);
        }
    }

    public final int indexOf(int i) {
        return indexOf(i, 0, this.len);
    }

    public final int indexOf(int i, int i2, int i3) {
        if (i2 < 0) {
            i2 = 0;
        }
        if (i3 > this.len) {
            i3 = this.len;
        }
        if (i2 > i3) {
            return -1;
        }
        for (int i4 = i2; i4 < i3; i4++) {
            if (this.buffer[i4] == i) {
                return i4;
            }
        }
        return -1;
    }

    public final boolean isEmpty() {
        return this.len == 0;
    }

    public final boolean isFull() {
        return this.len == this.buffer.length;
    }

    public final int length() {
        return this.len;
    }

    public final void setLength(int i) {
        if (i < 0 || i > this.buffer.length) {
            throw new IndexOutOfBoundsException("len: " + i + " < 0 or > buffer len: " + this.buffer.length);
        }
        this.len = i;
    }

    public final CharSequence subSequence(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Negative beginIndex: " + i);
        } else if (i2 > this.len) {
            throw new IndexOutOfBoundsException("endIndex: " + i2 + " > length: " + this.len);
        } else if (i <= i2) {
            return CharBuffer.wrap(this.buffer, i, i2);
        } else {
            throw new IndexOutOfBoundsException("beginIndex: " + i + " > endIndex: " + i2);
        }
    }

    public final String substring(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Negative beginIndex: " + i);
        } else if (i2 > this.len) {
            throw new IndexOutOfBoundsException("endIndex: " + i2 + " > length: " + this.len);
        } else if (i <= i2) {
            return new String(this.buffer, i, i2 - i);
        } else {
            throw new IndexOutOfBoundsException("beginIndex: " + i + " > endIndex: " + i2);
        }
    }

    public final String substringTrimmed(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Negative beginIndex: " + i);
        } else if (i2 > this.len) {
            throw new IndexOutOfBoundsException("endIndex: " + i2 + " > length: " + this.len);
        } else if (i > i2) {
            throw new IndexOutOfBoundsException("beginIndex: " + i + " > endIndex: " + i2);
        } else {
            while (i < i2 && HTTP.isWhitespace(this.buffer[i])) {
                i++;
            }
            while (i2 > i && HTTP.isWhitespace(this.buffer[i2 - 1])) {
                i2--;
            }
            return new String(this.buffer, i, i2 - i);
        }
    }

    public final char[] toCharArray() {
        char[] cArr = new char[this.len];
        if (this.len > 0) {
            System.arraycopy(this.buffer, 0, cArr, 0, this.len);
        }
        return cArr;
    }

    public final String toString() {
        return new String(this.buffer, 0, this.len);
    }
}
