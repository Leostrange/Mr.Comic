package defpackage;

import com.box.androidsdk.content.models.BoxFolder;
import java.util.ArrayList;

/* renamed from: adl  reason: default package */
/* compiled from: BoxContentFolderEntry */
final class adl implements adc {
    BoxFolder a;
    String b;
    ArrayList<adc> c;

    public adl(BoxFolder boxFolder, String str) {
        this.a = boxFolder;
        this.b = str;
    }

    public final String a() {
        return this.a.getName();
    }

    public final String b() {
        return agp.b(this.b, this.a.getName());
    }

    public final String c() {
        return null;
    }

    public final boolean d() {
        return true;
    }

    public final boolean e() {
        return true;
    }

    public final long f() {
        return 0;
    }

    public final String g() {
        return null;
    }
}
