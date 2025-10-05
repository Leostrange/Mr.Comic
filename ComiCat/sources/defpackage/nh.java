package defpackage;

import java.io.IOException;
import java.util.Iterator;

/* renamed from: nh  reason: default package */
/* compiled from: Joiner */
public final class nh {
    private final String a;

    public nh(String str) {
        this.a = (String) ni.a(str);
    }

    private static CharSequence a(Object obj) {
        ni.a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final StringBuilder a(StringBuilder sb, Iterator<?> it) {
        try {
            ni.a(sb);
            if (it.hasNext()) {
                sb.append(a(it.next()));
                while (it.hasNext()) {
                    sb.append(this.a);
                    sb.append(a(it.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
