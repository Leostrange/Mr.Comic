package defpackage;

import java.util.logging.Logger;

/* renamed from: xh  reason: default package */
/* compiled from: StandardLog */
public class xh extends wo {
    private Logger i;

    public xh() {
        this(Logger.getLogger(""));
    }

    private xh(Logger logger) {
        this.i = logger;
    }

    /* access modifiers changed from: protected */
    public final void a(String str, CharSequence charSequence) {
        this.i.info("[" + str + "] " + charSequence);
    }

    public final void b(CharSequence charSequence) {
        this.i.warning(charSequence.toString());
    }

    public final void b(Throwable th) {
        String str = "";
        if (th != null) {
            str = th.toString() + " " + str;
        }
        this.i.severe(str);
    }
}
