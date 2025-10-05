package defpackage;

import android.support.v4.app.FragmentTransaction;

/* renamed from: acw  reason: default package */
/* compiled from: DownloadError */
public final class acw {
    public static final acw b = new acw(0);
    public static final acw c = new acw(65537);
    public static final acw d = new acw(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
    public static final acw e = new acw(16777217);
    public static final acw f = new acw(FragmentTransaction.TRANSIT_ENTER_MASK);
    public static final acw g = new acw(1048576);
    public static final acw h = new acw(1048577);
    public static final acw i = new acw(1048578);
    public static final acw j = new acw(1048579);
    public int a = 0;

    private acw(int i2) {
        this.a = i2;
    }

    public final boolean a() {
        return (this.a & 65536) == 65536;
    }
}
