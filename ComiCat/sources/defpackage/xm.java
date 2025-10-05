package defpackage;

import java.util.HashMap;

/* renamed from: xm  reason: default package */
/* compiled from: DcerpcBinding */
public final class xm {
    static HashMap a;
    String b;
    String c;
    String d = null;
    HashMap e = null;
    xu f = null;
    int g;
    int h;

    static {
        HashMap hashMap = new HashMap();
        a = hashMap;
        hashMap.put("srvsvc", "4b324fc8-1670-01d3-1278-5a47bf6ee188:3.0");
        a.put("lsarpc", "12345778-1234-abcd-ef00-0123456789ab:0.0");
        a.put("samr", "12345778-1234-abcd-ef00-0123456789ac:1.0");
        a.put("netdfs", "4fc742e0-4a10-11cf-8273-00aa004ae673:3.0");
    }

    xm(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    /* access modifiers changed from: package-private */
    public final Object a(String str) {
        if (str.equals("endpoint")) {
            return this.d;
        }
        if (this.e != null) {
            return this.e.get(str);
        }
        return null;
    }

    public final String toString() {
        String str = this.b + ":" + this.c + "[" + this.d;
        if (this.e != null) {
            for (Object next : this.e.keySet()) {
                str = str + "," + next + "=" + this.e.get(next);
            }
        }
        return str + "]";
    }
}
