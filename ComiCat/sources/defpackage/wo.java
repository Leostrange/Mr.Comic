package defpackage;

/* renamed from: wo  reason: default package */
/* compiled from: LogContext */
public abstract class wo extends wl {
    public static final Class<? extends wo> a = xh.class;
    public static final Class<? extends wo> e = b.class;
    public static final Class<? extends wo> f = c.class;
    public static final Class<? extends wo> g = a.class;
    public static final wr<Class<? extends wo>> h = new wr(a) {
    };
    private static volatile wo i = new xh();

    /* renamed from: wo$a */
    /* compiled from: LogContext */
    static class a extends c {
        private a() {
            super((byte) 0);
        }

        /* synthetic */ a(byte b) {
            this();
        }
    }

    /* renamed from: wo$b */
    /* compiled from: LogContext */
    static final class b extends c {
        private b() {
            super((byte) 0);
        }

        /* synthetic */ b(byte b) {
            this();
        }

        /* access modifiers changed from: protected */
        public final void a(String str, CharSequence charSequence) {
        }
    }

    /* renamed from: wo$c */
    /* compiled from: LogContext */
    static class c extends wo {
        private c() {
        }

        /* synthetic */ c(byte b) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(String str, CharSequence charSequence) {
            System.out.print("[");
            System.out.print(str);
            System.out.print("] ");
            System.out.println(charSequence);
        }
    }

    static {
        wp.a(new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new a((byte) 0);
            }
        }, g);
        wp.a(new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new b((byte) 0);
            }
        }, e);
        wp.a(new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new c((byte) 0);
            }
        }, f);
    }

    protected wo() {
    }

    private static wo a() {
        for (wl b2 = wl.b(); b2 != null; b2 = b2.c) {
            if (b2 instanceof wo) {
                return (wo) b2;
            }
        }
        return i;
    }

    public static void a(CharSequence charSequence) {
        a().b(charSequence);
    }

    public static void a(Throwable th) {
        a().b(th);
    }

    public abstract void a(String str, CharSequence charSequence);

    public void b(CharSequence charSequence) {
        a("warning", charSequence);
    }

    public void b(Throwable th) {
        wx c2 = wx.c();
        if (th != null) {
            try {
                c2.a(th.getClass().getName());
                c2.a(" - ");
            } catch (Throwable th2) {
                wx.a(c2);
                throw th2;
            }
        }
        if (th != null) {
            c2.a(th.getMessage());
        }
        if (th != null) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            for (StackTraceElement stackTraceElement : stackTrace) {
                c2.a("\n\tat ");
                if (stackTraceElement instanceof String) {
                    c2.a((String) stackTraceElement);
                } else if (stackTraceElement instanceof wt) {
                    ww b2 = ((wt) stackTraceElement).b();
                    if (b2 == null) {
                        c2.a("null");
                    } else {
                        int length = b2.length();
                        if (b2 == null) {
                            c2.a("null");
                        } else if (length < 0 || length < 0 || length > b2.length()) {
                            throw new IndexOutOfBoundsException();
                        } else {
                            int i2 = c2.b + length + 0;
                            while (c2.c < i2) {
                                c2.d();
                            }
                            int i3 = c2.b;
                            int i4 = 0;
                            while (i4 < length) {
                                char[] cArr = c2.a[i3 >> 10];
                                int i5 = i3 & 1023;
                                int a2 = ws.a(1024 - i5, length - i4);
                                int i6 = i4 + a2;
                                b2.a(i4, i6, cArr, i5);
                                i3 += a2;
                                i4 = i6;
                            }
                            c2.b = i2;
                        }
                    }
                } else if (stackTraceElement instanceof Number) {
                    Number number = (Number) stackTraceElement;
                    if (number instanceof Integer) {
                        c2.a(((Integer) number).intValue());
                    } else if (number instanceof Long) {
                        c2.a(((Long) number).longValue());
                    } else if (number instanceof Float) {
                        c2.a(((Float) number).floatValue());
                    } else if (number instanceof Double) {
                        c2.a(((Double) number).doubleValue());
                    } else {
                        c2.a(String.valueOf(number));
                    }
                } else {
                    c2.a(String.valueOf(stackTraceElement));
                }
            }
        }
        a("error", c2);
        wx.a(c2);
    }
}
