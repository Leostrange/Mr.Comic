package defpackage;

/* renamed from: rl  reason: default package */
/* compiled from: Packet */
public final class rl {
    private static ro c = null;
    qa a;
    byte[] b = new byte[4];

    public rl(qa qaVar) {
        this.a = qaVar;
    }

    static void a(ro roVar) {
        c = roVar;
    }

    public final void a() {
        this.a.c = 5;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        int i2 = this.a.c;
        int i3 = (-i2) & (i - 1);
        if (i3 < i) {
            i3 += i;
        }
        int i4 = (i2 + i3) - 4;
        this.b[0] = (byte) (i4 >>> 24);
        this.b[1] = (byte) (i4 >>> 16);
        this.b[2] = (byte) (i4 >>> 8);
        this.b[3] = (byte) i4;
        System.arraycopy(this.b, 0, this.a.b, 0, 4);
        this.a.b[4] = (byte) i3;
        synchronized (c) {
        }
        this.a.b(i3);
    }
}
