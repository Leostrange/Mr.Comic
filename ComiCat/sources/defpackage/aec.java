package defpackage;

/* renamed from: aec  reason: default package */
/* compiled from: SFTPUtils */
public final class aec {
    public static qh a(String str, String str2, String str3, String str4) {
        try {
            qw qwVar = new qw();
            int parseInt = Integer.parseInt(str2);
            if (str == null) {
                throw new qy("host must not be null.");
            }
            ry ryVar = new ry(qwVar, str3, str, parseInt);
            if (!str4.isEmpty() && str4 != null) {
                ryVar.t = si.a(str4);
            }
            ryVar.a();
            qb a = ryVar.a("sftp");
            a.b(0);
            return (qh) a;
        } catch (Exception e) {
            agt.a(e);
            return null;
        }
    }
}
