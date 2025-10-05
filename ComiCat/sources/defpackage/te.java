package defpackage;

import android.text.TextUtils;
import org.json.JSONObject;

/* renamed from: te  reason: default package */
/* compiled from: LiveOperation */
public class te {
    static final /* synthetic */ boolean b = (!te.class.desiredAssertionStatus());
    public JSONObject a;
    private final sn<JSONObject> c;
    private final String d;
    private final String e;
    private final Object f;

    /* renamed from: te$a */
    /* compiled from: LiveOperation */
    public static class a {
        public static final /* synthetic */ boolean d = (!te.class.desiredAssertionStatus());
        public sn<JSONObject> a;
        public JSONObject b;
        public Object c;
        /* access modifiers changed from: private */
        public final String e;
        /* access modifiers changed from: private */
        public final String f;

        public a(String str, String str2) {
            if (!d && TextUtils.isEmpty(str)) {
                throw new AssertionError();
            } else if (d || !TextUtils.isEmpty(str2)) {
                this.e = str;
                this.f = str2;
            } else {
                throw new AssertionError();
            }
        }

        public final te a() {
            return new te(this, (byte) 0);
        }
    }

    private te(a aVar) {
        this.c = aVar.a;
        this.d = aVar.e;
        this.e = aVar.f;
        this.a = aVar.b;
        this.f = aVar.c;
    }

    /* synthetic */ te(a aVar, byte b2) {
        this(aVar);
    }
}
