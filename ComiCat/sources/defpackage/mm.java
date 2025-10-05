package defpackage;

import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;

/* renamed from: mm  reason: default package */
/* compiled from: UrlEncodedContent */
public final class mm extends ll {
    public Object b;

    public mm(Object obj) {
        super(mn.a);
        this.b = ni.a(obj);
    }

    private static boolean a(boolean z, Writer writer, String str, Object obj) {
        if (obj != null && !ns.a(obj)) {
            if (z) {
                z = false;
            } else {
                writer.write("&");
            }
            writer.write(str);
            String a = op.a(obj instanceof Enum ? nv.a((Enum<?>) (Enum) obj).c : obj.toString());
            if (a.length() != 0) {
                writer.write("=");
                writer.write(a);
            }
        }
        return z;
    }

    public final void a(OutputStream outputStream) {
        boolean z;
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, b()));
        boolean z2 = true;
        Iterator<Map.Entry<String, Object>> it = ns.b(this.b).entrySet().iterator();
        while (true) {
            boolean z3 = z2;
            if (it.hasNext()) {
                Map.Entry next = it.next();
                Object value = next.getValue();
                if (value != null) {
                    String a = op.a((String) next.getKey());
                    Class<?> cls = value.getClass();
                    if ((value instanceof Iterable) || cls.isArray()) {
                        z2 = z3;
                        for (Object a2 : on.a(value)) {
                            z2 = a(z2, bufferedWriter, a, a2);
                        }
                    } else {
                        z = a(z3, bufferedWriter, a, value);
                    }
                } else {
                    z = z3;
                }
            } else {
                bufferedWriter.flush();
                return;
            }
        }
    }
}
