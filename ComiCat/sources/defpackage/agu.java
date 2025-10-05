package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import java.net.URLEncoder;
import java.util.ArrayList;
import org.apache.http.protocol.HTTP;

/* renamed from: agu  reason: default package */
/* compiled from: Mail */
public final class agu {
    ArrayList<String> a = new ArrayList<>();
    ArrayList<String> b = new ArrayList<>();
    public String c;
    public String d;
    ArrayList<Uri> e = new ArrayList<>();

    public agu(String str, String str2, String str3) {
        this.a.add(str);
        this.c = str2;
        this.d = str3;
    }

    /* JADX WARNING: type inference failed for: r1v13, types: [java.lang.Object[], java.io.Serializable] */
    public final void a(Activity activity) {
        try {
            Intent intent = new Intent(this.e.size() > 1 ? "android.intent.action.SEND_MULTIPLE" : "android.intent.action.SENDTO", Uri.parse(("mailto:" + this.a.get(0) + "?subject=" + URLEncoder.encode(this.c, HTTP.UTF_8) + "&body=" + URLEncoder.encode(this.d, HTTP.UTF_8)).replace("+", "%20")));
            if (this.b.size() > 0) {
                intent.putExtra("android.intent.extra.CC", this.b.toArray());
            }
            if (this.e.size() > 0) {
                if (this.e.size() > 1) {
                    intent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.e);
                } else {
                    intent.putExtra("android.intent.extra.STREAM", this.e.get(0));
                }
            }
            activity.startActivityForResult(Intent.createChooser(intent, "Send email..."), 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
