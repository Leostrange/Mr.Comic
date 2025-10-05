package defpackage;

import defpackage.kl;
import java.util.List;
import java.util.regex.Pattern;

/* renamed from: kj  reason: default package */
/* compiled from: BearerToken */
public final class kj {
    static final Pattern a = Pattern.compile("\\s*error\\s*=\\s*\"?invalid_token\"?");

    /* renamed from: kj$a */
    /* compiled from: BearerToken */
    static final class a implements kl.a {
        a() {
        }

        public final String a(lz lzVar) {
            List<String> list = lzVar.b.authorization;
            if (list != null) {
                for (String next : list) {
                    if (next.startsWith("Bearer ")) {
                        return next.substring(7);
                    }
                }
            }
            return null;
        }

        public final void a(lz lzVar, String str) {
            lzVar.b.a("Bearer " + str);
        }
    }

    public static kl.a a() {
        return new a();
    }
}
