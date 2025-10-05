package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;

/* renamed from: yl  reason: default package */
/* compiled from: NbtException */
public final class yl extends IOException {
    public int a = 2;
    public int b;

    public yl(int i) {
        super(a(2, i));
        this.b = i;
    }

    private static String a(int i, int i2) {
        switch (i) {
            case 0:
                return "" + "SUCCESS";
            case 1:
                String str = "" + "ERR_NAM_SRVC/";
                switch (i2) {
                    case 1:
                        str = str + "FMT_ERR: Format Error";
                        break;
                }
                return str + "Unknown error code: " + i2;
            case 2:
                String str2 = "" + "ERR_SSN_SRVC/";
                switch (i2) {
                    case -1:
                        return str2 + "Connection refused";
                    case NotificationCompat.FLAG_HIGH_PRIORITY:
                        return str2 + "Not listening on called name";
                    case 129:
                        return str2 + "Not listening for calling name";
                    case 130:
                        return str2 + "Called name not present";
                    case 131:
                        return str2 + "Called name present, but insufficient resources";
                    case 143:
                        return str2 + "Unspecified error";
                    default:
                        return str2 + "Unknown error code: " + i2;
                }
            default:
                return "" + "unknown error class: " + i;
        }
    }

    public final String toString() {
        return new String("errorClass=" + this.a + ",errorCode=" + this.b + ",errorString=" + a(this.a, this.b));
    }
}
