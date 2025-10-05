package defpackage;

import android.graphics.Bitmap;

/* renamed from: aft  reason: default package */
/* compiled from: ICatalogItem */
public interface aft {

    /* renamed from: aft$a */
    /* compiled from: ICatalogItem */
    public enum a {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = new int[]{a, b, c, d};
        }

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    boolean d();

    int e();

    boolean g();

    int j();

    int k();

    String l();

    Bitmap m();

    afu n();

    boolean o();

    boolean p();

    long q();
}
