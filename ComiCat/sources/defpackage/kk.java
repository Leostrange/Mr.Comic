package defpackage;

import com.box.androidsdk.content.BoxConstants;
import java.util.HashMap;
import java.util.Map;

/* renamed from: kk  reason: default package */
/* compiled from: ClientParametersAuthentication */
public final class kk implements lv, mb {
    private final String a;
    private final String b;

    public kk(String str, String str2) {
        this.a = (String) ni.a(str);
        this.b = str2;
    }

    public final void a(lz lzVar) {
        lzVar.a = this;
    }

    public final void b(lz lzVar) {
        mm mmVar;
        ls lsVar = lzVar.f;
        if (lsVar != null) {
            mmVar = (mm) lsVar;
        } else {
            mmVar = new mm(new HashMap());
            lzVar.f = mmVar;
        }
        Map<String, Object> b2 = ns.b(mmVar.b);
        b2.put("client_id", this.a);
        if (this.b != null) {
            b2.put(BoxConstants.KEY_CLIENT_SECRET, this.b);
        }
    }
}
