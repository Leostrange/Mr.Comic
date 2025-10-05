package defpackage;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.apache.http.protocol.HTTP;

/* renamed from: op  reason: default package */
/* compiled from: CharEscapers */
public final class op {
    private static final oq a = new or("-_.*", true);
    private static final oq b = new or("-_.!~*'()@:$&,;=", false);
    private static final oq c = new or("-_.!~*'()@:$&,;=+/?", false);
    private static final oq d = new or("-_.!~*'():$&,;=", false);
    private static final oq e = new or("-_.!~*'()@:$,;/?:", false);

    public static String a(String str) {
        return a.a(str);
    }

    public static String b(String str) {
        try {
            return URLDecoder.decode(str, HTTP.UTF_8);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String c(String str) {
        return b.a(str);
    }

    public static String d(String str) {
        return c.a(str);
    }

    public static String e(String str) {
        return d.a(str);
    }

    public static String f(String str) {
        return e.a(str);
    }
}
