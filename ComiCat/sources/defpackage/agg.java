package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import meanlabs.comicreader.Viewer;

/* renamed from: agg  reason: default package */
/* compiled from: Animation */
public abstract class agg {
    protected WeakReference<Bitmap> a;
    protected WeakReference<Bitmap> b;
    protected int c;
    protected int d;
    protected int e;
    protected int f;
    protected int g;
    protected c h;
    protected c i;
    protected int j;
    protected int k;
    protected int l;
    protected int m;
    public boolean n = true;
    b o;
    WeakReference<ImageView> p;

    /* renamed from: agg$2  reason: invalid class name */
    /* compiled from: Animation */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] a = new int[Viewer.b.a().length];

        static {
            try {
                a[Viewer.b.b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[Viewer.b.e - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[Viewer.b.c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[Viewer.b.d - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[Viewer.b.a - 1] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: agg$a */
    /* compiled from: Animation */
    public enum a {
        ;

        static {
            a = 1;
            b = 2;
            c = new int[]{a, b};
        }
    }

    /* renamed from: agg$b */
    /* compiled from: Animation */
    public interface b {
        void a(agg agg, int i, boolean z);
    }

    /* renamed from: agg$c */
    /* compiled from: Animation */
    public static class c {
        public int a;
        public int b;
        public int c = 0;
        public int d = 0;

        public c(ImageView imageView, int i, Bitmap bitmap) {
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            int width2 = bitmap.getWidth();
            int height2 = bitmap.getHeight();
            this.a = width;
            this.b = height;
            switch (AnonymousClass2.a[i - 1]) {
                case 3:
                    this.b = Math.round((float) ((height2 * width) / width2));
                    break;
                case 4:
                    this.a = Math.round((float) ((width2 * height) / height2));
                    break;
                case 5:
                    double min = Math.min(((double) width) / ((double) width2), ((double) height) / ((double) height2));
                    this.a = (int) Math.round(((double) width2) * min);
                    this.b = (int) Math.round(((double) height2) * min);
                    break;
            }
            if (this.b < height) {
                this.c = (height - this.b) / 2;
            }
            if (this.a < width) {
                this.d = (width - this.a) / 2;
            }
        }
    }

    public agg(ImageView imageView, int i2, int i3) {
        this.p = new WeakReference<>(imageView);
        this.e = Math.round((float) (1000 / i2));
        this.d = i3 / this.e;
        this.f = i3;
    }

    /* access modifiers changed from: private */
    public void a() {
        ((ImageView) this.p.get()).postDelayed(new Runnable() {
            public final void run() {
                ((ImageView) agg.this.p.get()).invalidate();
                if (!agg.this.n || agg.this.g >= agg.this.d) {
                    agg.this.o.a(agg.this, agg.this.c, agg.this.n);
                } else {
                    agg.this.a();
                }
                agg.this.g++;
            }
        }, (long) this.e);
    }

    public final void a(Bitmap bitmap, Bitmap bitmap2, int i2, int i3, b bVar) {
        this.a = new WeakReference<>(bitmap);
        this.b = new WeakReference<>(bitmap2);
        this.o = bVar;
        this.c = i3;
        this.g = 0;
        this.j = bitmap.getWidth();
        this.k = bitmap.getHeight();
        this.l = bitmap2.getWidth();
        this.m = bitmap2.getHeight();
        this.h = new c((ImageView) this.p.get(), i2, bitmap);
        this.i = new c((ImageView) this.p.get(), i2, bitmap2);
        a();
    }

    public abstract void a(Canvas canvas);
}
