package defpackage;

/* renamed from: wz  reason: default package */
/* compiled from: TypeFormat */
public final class wz {
    private static final CharSequence a = "true";
    private static final CharSequence b = "false";

    private static Appendable a(double d, int i, boolean z, Appendable appendable) {
        if (appendable instanceof wx) {
            return ((wx) appendable).a(d, i, z);
        }
        wx c = wx.c();
        try {
            c.a(d, i, z);
            return appendable.append(c);
        } finally {
            wx.a(c);
        }
    }

    public static Appendable a(double d, Appendable appendable) {
        return a(d, -1, ws.b(d) >= 1.0E7d || ws.b(d) < 0.001d, appendable);
    }

    public static Appendable a(float f, Appendable appendable) {
        return a((double) f, 10, ((double) ws.a(f)) >= 1.0E7d || ((double) ws.a(f)) < 0.001d, appendable);
    }

    public static Appendable a(int i, Appendable appendable) {
        if (appendable instanceof wx) {
            return ((wx) appendable).a(i);
        }
        wx c = wx.c();
        try {
            c.a(i);
            return appendable.append(c);
        } finally {
            wx.a(c);
        }
    }

    public static Appendable a(long j, Appendable appendable) {
        if (appendable instanceof wx) {
            return ((wx) appendable).a(j);
        }
        wx c = wx.c();
        try {
            c.a(j);
            return appendable.append(c);
        } finally {
            wx.a(c);
        }
    }

    public static Appendable a(boolean z, Appendable appendable) {
        return z ? appendable.append(a) : appendable.append(b);
    }
}
