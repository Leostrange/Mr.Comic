package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: ajv  reason: default package */
/* compiled from: InternCache */
public final class ajv extends LinkedHashMap<String, String> {
    public static final ajv a = new ajv();

    private ajv() {
        super(192, 0.8f, true);
    }

    public final synchronized String a(String str) {
        String str2;
        str2 = (String) get(str);
        if (str2 == null) {
            str2 = str.intern();
            put(str2, str2);
        }
        return str2;
    }

    /* access modifiers changed from: protected */
    public final boolean removeEldestEntry(Map.Entry<String, String> entry) {
        return size() > 192;
    }
}
