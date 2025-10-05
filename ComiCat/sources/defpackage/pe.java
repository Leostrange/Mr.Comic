package defpackage;

/* renamed from: pe  reason: default package */
/* compiled from: Joiner */
public class pe {
    private final String a;

    /* renamed from: pe$a */
    /* compiled from: Joiner */
    public static final class a {
        private final pe a;
        private final String b;

        private a(pe peVar, String str) {
            this.a = peVar;
            this.b = (String) pg.a(str);
        }

        public /* synthetic */ a(pe peVar, String str, byte b2) {
            this(peVar, str);
        }
    }

    public pe(String str) {
        this.a = (String) pg.a(str);
    }

    private pe(pe peVar) {
        this.a = peVar.a;
    }

    /* synthetic */ pe(pe peVar, byte b) {
        this(peVar);
    }

    public pe a(final String str) {
        pg.a(str);
        return new pe(this) {
            public final pe a(String str) {
                throw new UnsupportedOperationException("already specified useForNull");
            }
        };
    }
}
