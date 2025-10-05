package defpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* renamed from: aaq  reason: default package */
/* compiled from: SmbException */
public class aaq extends IOException implements abs, yz, zh {
    int n;
    Throwable o;

    aaq() {
    }

    aaq(int i) {
        super(a(i));
        this.n = b(i);
        this.o = null;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public aaq(int i, boolean z) {
        super(z ? c(i) : a(i));
        this.n = !z ? b(i) : i;
    }

    aaq(String str) {
        super(str);
        this.n = -1073741823;
    }

    aaq(String str, Throwable th) {
        super(str);
        this.o = th;
        this.n = -1073741823;
    }

    static String a(int i) {
        if (i == 0) {
            return "NT_STATUS_SUCCESS";
        }
        if ((i & -1073741824) == -1073741824) {
            int i2 = 1;
            int length = c_.length - 1;
            while (length >= i2) {
                int i3 = (i2 + length) / 2;
                if (i > c_[i3]) {
                    i2 = i3 + 1;
                } else if (i >= c_[i3]) {
                    return d_[i3];
                } else {
                    length = i3 - 1;
                }
            }
        } else {
            int length2 = l.length - 1;
            int i4 = 0;
            while (length2 >= i4) {
                int i5 = (i4 + length2) / 2;
                if (i > l[i5][0]) {
                    i4 = i5 + 1;
                } else if (i >= l[i5][0]) {
                    return m[i5];
                } else {
                    length2 = i5 - 1;
                }
            }
        }
        return "0x" + abw.a(i, 8);
    }

    static int b(int i) {
        if ((-1073741824 & i) != 0) {
            return i;
        }
        int length = l.length - 1;
        int i2 = 0;
        while (length >= i2) {
            int i3 = (i2 + length) / 2;
            if (i > l[i3][0]) {
                i2 = i3 + 1;
            } else if (i >= l[i3][0]) {
                return l[i3][1];
            } else {
                length = i3 - 1;
            }
        }
        return -1073741823;
    }

    private static String c(int i) {
        int i2 = 0;
        int length = e_.length - 1;
        while (length >= i2) {
            int i3 = (i2 + length) / 2;
            if (i > e_[i3]) {
                i2 = i3 + 1;
            } else if (i >= e_[i3]) {
                return f_[i3];
            } else {
                length = i3 - 1;
            }
        }
        return String.valueOf(i);
    }

    public String toString() {
        if (this.o == null) {
            return super.toString();
        }
        StringWriter stringWriter = new StringWriter();
        this.o.printStackTrace(new PrintWriter(stringWriter));
        return super.toString() + "\n" + stringWriter;
    }
}
