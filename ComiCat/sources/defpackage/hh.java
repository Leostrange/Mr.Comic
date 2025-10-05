package defpackage;

/* renamed from: hh  reason: default package */
/* compiled from: DbxApiException */
public class hh extends hj {
    private final hq a;

    public hh(String str, hq hqVar, String str2) {
        super(str, str2);
        this.a = hqVar;
    }

    protected static String a(String str, hq hqVar, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("Exception in ").append(str);
        if (obj != null) {
            sb.append(": ").append(obj);
        }
        if (hqVar != null) {
            sb.append(" (user message: ").append(hqVar).append(")");
        }
        return sb.toString();
    }
}
