package defpackage;

import java.util.Arrays;
import java.util.logging.Logger;

/* renamed from: mf  reason: default package */
/* compiled from: HttpTransport */
public abstract class mf {
    static final Logger a = Logger.getLogger(mf.class.getName());
    private static final String[] b;

    static {
        String[] strArr = {"DELETE", "GET", "POST", "PUT"};
        b = strArr;
        Arrays.sort(strArr);
    }

    public final ma a(mb mbVar) {
        return new ma(this, mbVar);
    }

    public abstract mi a(String str, String str2);

    public boolean a(String str) {
        return Arrays.binarySearch(b, str) >= 0;
    }
}
